//
//  DeveloperLab.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData
import Crashlytics

class DeveloperLab: NSManagedObject {

    class func newDeveloperLab(name: String, address: String, phone: Int, email: String) -> DeveloperLab? {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("DeveloperLab", inManagedObjectContext: context)
        guard let newDeveloperLab = newObject as? DeveloperLab else {
            print("New object could not be cast as DeveloperLab type.")
            return nil
        }
        newDeveloperLab.name = name
        newDeveloperLab.address = address
        newDeveloperLab.phone = phone
        newDeveloperLab.email = email
        Answers.logCustomEventWithName("NewLabSaved", customAttributes: ["name" : name, "address" : address, "phone" : phone, "email" : email])
        return newDeveloperLab
    }

}
