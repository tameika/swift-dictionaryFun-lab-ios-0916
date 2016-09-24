//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String:String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"]
    
    
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        
        var peopleWhoLikeFlavor: [String] = []
        
        for (name, icecream) in favoriteFlavorsOfIceCream {
            
            if (icecream == flavor) {
                
                peopleWhoLikeFlavor.append(name)
                
                
            }
        }
        
        return peopleWhoLikeFlavor
    }
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        
        var numOfPeoplePerFlavor: [String] = []
        
        for (_, icecream) in favoriteFlavorsOfIceCream {
            
            if icecream == flavor {
                
                numOfPeoplePerFlavor.append(flavor)
                
                
            }
        }
        return numOfPeoplePerFlavor.count
    }
    
    

    

    // 4.
   
    func flavor(forPerson person: String) -> String? {
        
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if person == key {
                
                return favoriteFlavorsOfIceCream[key]
                
            } else {
                
            }
        }
        return nil
    }

    
    
    
    // 5.
   
    func replace(flavor: String, person: String) -> Bool {
        
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if person == key {
                
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
                
                if favoriteFlavorsOfIceCream[person] == flavor {
                    
                    return true
                    
                }
            }
            
        }
        
        return false
        
        
    }

    

    
    // 6.
    
    
    func remove(person: String) -> Bool {
        
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if person == key {
                
                favoriteFlavorsOfIceCream.removeValue(forKey: key)
                
                return true
                
            } else {
                
                
            }
        }
        
        return false
    }
    

    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        
        return favoriteFlavorsOfIceCream.keys.count
        
    }


    
    // 8.
    
    
    func add(person: String, flavor: String) -> Bool {
        
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if person == key {
                
                return false
                
            } else {
                
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
                
            }
        }
        
        return true
    }


    
    // 9.
    
    func attendeeList() -> String {
        
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        var everyone: String = ""
        
        var count = 0
        
        
        for name in allNames {
            
            let flavor = favoriteFlavorsOfIceCream[name]
            
            if let flavor = flavor {
                
                count += 1
                
                if count < allNames.count {
                    
                    everyone.append("\(name) likes \(flavor)\n")
                    
                } else if count == allNames.count {
                    
                    everyone.append("\(name) likes \(flavor)")
                    
                }
            }
        }
        
        print(everyone)
        return everyone
        
    }

    
    
    
    
    
    
    
    
}
