//
//  SuperHero.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/10/26.
//

import Foundation

struct SuperHero: Identifiable {
    let id: UUID
    let name: String
    let biography: String
    let quotes: [String]
    let imageName: String
    
    static var example: SuperHero {
        SuperHero(
            id: UUID(),
            name: "Spider-Man",
            biography: "Spider-Man, also known as Peter Parker, is a fictional superhero created by writer Stan Lee and artist Steve Ditko for Marvel Comics. Peter Parker was bitten by a radioactive spider during a science exhibition, granting him incredible powers. He took on the identity of Spider-Man to use his newfound abilities to fight crime and protect New York City.",
            quotes: ["I'm not a hero because I want your approval. I do it because it's the right thing to do.", "With great power comes great responsibility.", "The thing about being a superhero is that when you're doing good, everyone loves you, but when you're doing the right thing, sometimes people hate you", "It's not the mask that makes you a hero. It's who you are when you put it on.","Anyone can win a fight when the odds are easy! It's when the going's tough when there seems to be no chance that's when it counts." ],
            imageName: "spiderman"
        )
    }
    
    static var example2: SuperHero {
        SuperHero(
            id: UUID(),
            name: "Iron Man",
            biography: "Tony Stark is a brilliant industrialist and inventor, known for creating cutting-edge technology. After being captured by terrorists, he constructs a powered exoskeleton to escape, inadvertently creating the Iron Man suit. Using his technological expertise and resources, Tony Stark becomes the armored superhero, Iron Man, fighting for justice and protecting the world from various threats.",
            quotes: ["Sometimes you gotta run before you can walk", "Heroes are made by the paths they choose, not the powers they are graced with.", "Is it better to be feared or respected? I say, is it too much to ask for both?", "It's not about how much we lost, it's about how much we have left."],
            imageName: "iron-man"
        )
    }
}
