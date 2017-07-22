/*********************************
 **** SOCCER COORDINATION ********
 ********************************/

// A dictionary that contain all players

var allPlayersDictionary = [
    "player1": (name: "Joe Smith", height: 42, isExperienced: true, guardians: "Jim and Jan Smith"),
    "player2": (name: "Jill Tanner", height: 36, isExperienced: true, guardians: "Clara Tanner"),
    "player3": (name: "Bill Bon", height: 43, isExperienced: true, guardians: "Sara and Jenny Bon"),
    "player4": (name: "Eva Gordon", height: 45, isExperienced: false, guardians: "Wendy and Mike Gordon"),
    "player5": (name: "Matt Gill", height: 40, isExperienced: false, guardians: "Charles and Sylvia Gill"),
    "player6": (name: "Kimmy Stein", height: 41, isExperienced: false, guardians: "Bill and Hillary Stein"),
    "player7": (name: "Sammy Adams", height: 45, isExperienced: false, guardians: "Jeff Adams"),
    "player8": (name: "Karl Saygan", height: 42, isExperienced: true, guardians: "Heather Bledsoe"),
    "player9": (name: "Suzane Greenberg", height: 44, isExperienced: true, guardians: "Henrietta Dumas"),
    "player10": (name: "Sal Dali", height: 41, isExperienced: false, guardians: "Gala Dali"),
    "player11": (name: "Joe Kavalier", height: 39, isExperienced: false, guardians: "Sam and Elaine Kavalier"),
    "player12": (name: "Ben Finkelstein", height: 44, isExperienced: false, guardians: "Aaron and Jill Finkelstein"),
    "player13": (name: "Diego Soto", height: 41, isExperienced: true, guardians: "Robin and Sarika Soto"),
    "player14": (name: "Chloe Alaska", height: 47, isExperienced: false, guardians: "David and Jamie Alaska"),
    "player15": (name: "Arnold Willis", height: 43, isExperienced: false, guardians: "Claire Willis"),
    "player16": (name: "Phillip Helm", height: 44, isExperienced: true, guardians: "Thomas Helm and Eva Jones"),
    "player17": (name: "Les Clay", height: 42, isExperienced: true, guardians: "Wynonna Brown"),
    "player18": (name: "Herschel Krustofski", height: 45, isExperienced: true, guardians: "Hyman and Rachel Krustofski")
]

// An array that is filled with all the available players

var players: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []

for (key, value) in allPlayersDictionary {
    players.append(value)
    }

// Arrays to contain experienced and notexperienced players

var experiencedPlayers: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []
var notExperiencedPlayers: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []

// Allocation of experienced  and not experienced players

for player in players {
    if (player.isExperienced == true){
        experiencedPlayers.append(player)
    }
    else{
        notExperiencedPlayers.append(player)
    }
}

// Creation of three teams

var teamSharks: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []
var teamDragons: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []
var teamRaptors: [(name: String, height: Int, isExperienced: Bool, guardians: String)] = []

// The experienced players are divided into three teams randomly. The allocation is based the total amount of experienced players divided by three teams.

for experiencedPlayer in experiencedPlayers {
    if (teamSharks.count < (experiencedPlayers.count / 3)) {
        teamSharks.append(experiencedPlayer)
    }
    else if (teamDragons.count < (experiencedPlayers.count / 3)){
        teamDragons.append(experiencedPlayer)
    }
    else{
        teamRaptors.append(experiencedPlayer)
    }
}

// The not-experienced players are divided in the same way. To avoid too many players in team Raptor if the total number of players is not divisible with three, team Raptor is placed first this time.

for notExperiencedPlayer in notExperiencedPlayers {
    if (teamRaptors.count < (players.count / 3)) {
        teamRaptors.append(notExperiencedPlayer)
    }
    else if (teamDragons.count < (players.count / 3)){
        teamDragons.append(notExperiencedPlayer)
    }
    else{
        teamSharks.append(notExperiencedPlayer)
    }
}

// An array to contain all letters to be sent to guardians


var letters: [String] = []

// Variables for personalizing letters
var personalLetter: String = ""
var name: String = ""
var guardian: String = ""

// Creating letters for each team
for player in teamRaptors{
    guardian = player.guardians
    name = player.name
    personalLetter = "Dear " + guardian + ". We are happy to announce that your child, " + name + " has been accepted on team Raptors. The first training is on March 18 at 1 pm. Looking forward to see you there. Regards the team captain."
    letters.append(personalLetter)
}

for player in teamSharks{
    guardian = player.guardians
    name = player.name
    personalLetter = "Dear " + guardian + ". We are happy to announce that your child, " + name + " has been accepted on team Sharks. The first training is on March 17 at 3 pm. Looking forward to see you there. Regards the team captain."
    letters.append(personalLetter)
}

for player in teamDragons{
    guardian = player.guardians
    name = player.name
    personalLetter = "Dear " + guardian + ". We are happy to announce that your child, " + name + " has been accepted on team Dragons. The first training is on March 17 at 1 pm. Looking forward to see you there. Regards the team captain."
    letters.append(personalLetter)
}

// Printing all letters together fra the letters array


for letter in letters{
    print(letter)
    print(" ")
}







