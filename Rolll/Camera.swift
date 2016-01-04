//
//  Camera.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class Camera: NSManagedObject {

    class func newCamera(make: String, model: String, cameraDescription: String) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newCamera = NSEntityDescription.insertNewObjectForEntityForName("Camera", inManagedObjectContext: context)
        guard let newObject = newCamera as? Camera else {
            print("New object could not be cast as Camera type.")
            return
        }
        newObject.make = make
        newObject.model = model
        newObject.cameraDescription = cameraDescription
        delegate.saveContext()
    }
    
}
