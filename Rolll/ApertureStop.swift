//
//  ApertureStop.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class ApertureStop: NSManagedObject {

    class func newApertureStop(apertureStop: Float) -> ApertureStop? {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newApertureStop = NSEntityDescription.insertNewObjectForEntityForName("ApertureStop", inManagedObjectContext: context)
        guard let newObject = newApertureStop as? ApertureStop else {
            print("New object could not be cast as ApertureStop type.")
            return nil
        }
        newObject.apertureStop = apertureStop
        return newObject
    }

}
