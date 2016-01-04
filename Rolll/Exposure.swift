//
//  Exposure.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class Exposure: NSManagedObject {

    class func newExposure(number: Int) -> Exposure? {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("Exposure", inManagedObjectContext: context)
        guard let newExposure = newObject as? Exposure else {
            print("New object could not be cast as Exposure type.")
            return nil
        }
        newExposure.number = number
        return newExposure
    }

}
