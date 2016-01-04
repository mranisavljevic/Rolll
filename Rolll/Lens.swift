//
//  Lens.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData
import Crashlytics

class Lens: NSManagedObject {

    class func newLens(make: String, model: String, focalLength: String) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("Lens", inManagedObjectContext: context)
        guard let newLens = newObject as? Lens else {
            print("New object could not be cast as Lens type.")
            return
        }
        newLens.make = make
        newLens.model = model
        newLens.focalLength = focalLength
        Answers.logCustomEventWithName("NewLensSaved", customAttributes: ["make" : make, "model" : model, "focalLength" : focalLength])
        delegate.saveContext()
    }

}
