// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ballot {
    
    struct Voter {
        uint weight; //how many votes this person has//
        bool voted;  //if true that person already voted//
        address delegate; //if you vote someone else, then you will have a delegate address else blank address//
        uint vote;   //index of the vote proposal//
    }

    
    struct Proposal {
        string name;   
        uint voteCount; 
    }

    Proposal[] public proposals; /*displays names and vote count of the candidates*/

    address public chairperson;

    
    mapping(address => Voter) public voters;

    
    

   
    constructor(string[] memory proposalNames) { /*enter the names of all the candidates*/
        chairperson = msg.sender;
        voters[chairperson].weight = 1;

        
        for (uint i = 0; i < proposalNames.length; i++) {
            
            proposals.push(Proposal({
                name: proposalNames[i],
                voteCount: 0
            }));
        }
    }

    
    function giveRightToVote(address voter) external { /*this function will give right to vote to the a particular address,note that the person hasnt voted before*/

       
        require(
            msg.sender == chairperson,
            "Only chairperson can give right to vote."
        );
        require(
            !voters[voter].voted,
            "The voter already voted."
        );
        require(voters[voter].weight == 0);
        voters[voter].weight = 1;
    }

    
    function delegate(address to) external {/*this function will right to vote to another address on their behalf*/
        
        Voter storage sender = voters[msg.sender];
        require(sender.weight != 0, "You have no right to vote");
        require(!sender.voted, "You already voted.");

        require(to != msg.sender, "Self-delegation is disallowed.");

        
        while (voters[to].delegate != address(0)) {
            to = voters[to].delegate;

            
            require(to != msg.sender, "Found loop in delegation.");
        }

        Voter storage delegate_ = voters[to];

        
        require(delegate_.weight >= 1);

        
        sender.voted = true;
        sender.delegate = to;

        if (delegate_.voted) {
            
            proposals[delegate_.vote].voteCount += sender.weight;
        } else {
            
            delegate_.weight += sender.weight;
        }
    }

    
    function vote(uint proposal) external {/*this function will vote for the candidate index number*/
        Voter storage sender = voters[msg.sender];
        require(sender.weight != 0, "Has no right to vote");
        require(!sender.voted, "Already voted.");
        sender.voted = true;
        sender.vote = proposal;

        
        proposals[proposal].voteCount += sender.weight;
    }

    
    function winningProposal() public view /*returns the votes which the winning candidate got*/
            returns (uint winningProposal_)
    {
        uint winningVoteCount = 0;
        for (uint p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winningVoteCount) {
                winningVoteCount = proposals[p].voteCount;
                winningProposal_ = p;
            }
        }
    }

    
    function winnerName() external view /*returns the name of the winner*/
            returns (string memory winnerName_)
    {
        winnerName_ = proposals[winningProposal()].name;
    }
}
