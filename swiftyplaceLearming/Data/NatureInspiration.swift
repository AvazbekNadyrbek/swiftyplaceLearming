//
//  NatureInspiration.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/16/26.
//

import Foundation

struct NatureInspiration: Identifiable {
    
    let name: String
    let imageName: String
    let description: String
    let id = UUID()
    
    static func examples() -> [NatureInspiration] {
        
        [NatureInspiration(name: "Sunset Beach",
                                   imageName: "beach",
                                   description: "True Autumn is warm and muted. The True Autumn colour palette is reminiscent of a walk through an autumn forest – rich, warm and earthy."),
         NatureInspiration(name: "Desert",
                           imageName: "desert",
                           description: "A desert is a barren area of landscape where little precipitation occurs and, consequently, living conditions are hostile for plant and animal life."),
         NatureInspiration(name: "Tree",
                           imageName: "tree",
                           description: "In botany, a tree is a perennial plant with an elongated stem, or trunk, usually supporting branches and leaves."),
         NatureInspiration(name: "Mountain Air",
                           imageName: "mountain",
                           description: "A mountain is an elevated portion of the Earth's crust, generally with steep sides that show significant exposed bedrock"),
         NatureInspiration(name: "Moos Trees",
                           imageName: "trees-moos",
                           description: "In our unique moss farm we cultivate natural, pure and high performance moss. This forms the green basis for our regenerative moss filters."),
         NatureInspiration(name: "Sky",
                           imageName: "sky", description: "The sky is an unobstructed view upward from the surface of the Earth. It includes the atmosphere and outer space. "),
         NatureInspiration(name: "Death Valley",
                           imageName: "death-valley",
                           description: "In this below-sea-level basin, steady drought and record summer heat make Death Valley a land of extremes. "),
         NatureInspiration(name: "Mont Blanc",
                           imageName: "mont-blanc",
                           description: "Mont Blanc is the highest mountain in the Alps and Western Europe. It is the second-most prominent mountain in Europe, after Mount Elbrus, and it is the eleventh most prominent mountain summit in the world."),
         NatureInspiration(name: "Rolling Hills",
                           imageName:"hills",
                           description: "A hill is a landform that extends above the surrounding terrain. It often has a distinct summit." ),
         NatureInspiration(name: "Automn Colors",
                           imageName: "automn",
                           description: "True Autumn is warm and muted. The True Autumn colour palette is reminiscent of a walk through an autumn forest – rich, warm and earthy."),
         NatureInspiration(name: "Green Hills",
                           imageName: "green-hills",
                           description: "True Autumn is warm and muted. The True Autumn colour palette is reminiscent of a walk through an autumn forest – rich, warm and earthy."),
         NatureInspiration(name: "Rainfores Bridege",
                           imageName: "bridge",
                           description: "True Autumn is warm and muted. The True Autumn colour palette is reminiscent of a walk through an autumn forest – rich, warm and earthy.")
        ]
    }
    
    static func examplesDifferentSizeImages() -> [NatureInspiration] {
        [NatureInspiration(name: "Beach View",
                           imageName: "beach-view",
                           description: ""),
         NatureInspiration(name: "Leaves",
                           imageName: "leaves",
                           description: ""),
         NatureInspiration(name: "Green Trees",
                           imageName: "green-tree-sun",
                           description: ""),
         NatureInspiration(name: "Moos Trees",
                           imageName: "trees-moos",
                           description: ""),
         NatureInspiration(name: "Sunset",
                           imageName: "mountain-sunset",
                           description: ""),
         NatureInspiration(name: "Sky",
                           imageName: "sky", description: ""),
         NatureInspiration(name: "Death Valley",
                           imageName: "death-valley",
                           description: ""),
         NatureInspiration(name: "Mont Blanc",
                           imageName: "mont-blanc",
                           description: ""),
         NatureInspiration(name: "Sunset Lake",
                           imageName: "sunset-lake",
                           description: ""),
         NatureInspiration(name: "Green Hills",
                           imageName: "green-hills",
                           description: "")
        ]
    }
    
    
    
    
    static func example1() -> NatureInspiration {
        NatureInspiration(name: "Sky",
                          imageName: "sky", description: "The sky is an unobstructed view upward from the surface of the Earth. It includes the atmosphere and outer space. ")
    }
}

