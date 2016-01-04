//
//  DeveloperLab.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class DeveloperLab: NSManagedObject {

    class func newDeveloperLab(name: String, address: String, phone: Int, email: String) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("DeveloperLab", inManagedObjectContext: context)
        guard let newDeveloperLab = newObject as? DeveloperLab else {
            print("New object could not be cast as DeveloperLab type.")
            return
        }
        newDeveloperLab.name = name
        newDeveloperLab.address = address
        newDeveloperLab.phone = phone
        newDeveloperLab.email = email
        delegate.saveContext()
    }

}
