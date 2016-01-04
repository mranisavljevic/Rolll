//
//  Roll.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData
import Crashlytics

class Roll: NSManagedObject {
    
    class func newRoll(rollDescription: String, notes: String) -> Roll? {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("Roll", inManagedObjectContext: context)
        guard let newRoll = newObject as? Roll else {
            print("New object could not be cast as Roll type.")
            return nil
        }
        newRoll.rollDescription = rollDescription
        newRoll.notes = notes
        newRoll.startDate = NSDate()
        newRoll.inCamera = true
        newRoll.exposed = 0
        Answers.logCustomEventWithName("NewRollCreated", customAttributes: nil)
        return newRoll
    }

}
