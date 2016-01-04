//
//  Film.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class Film: NSManagedObject {

    class func newFilm(brand: String, type: String, iso: Int, exposureCount: Int, developingProcess: String) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newFilm = NSEntityDescription.insertNewObjectForEntityForName("Film", inManagedObjectContext: context)
        guard let newObject = newFilm as? Film else {
            print("New object could not be cast as Film type.")
            return
        }
        newObject.brand = brand
        newObject.type = type
        newObject.iso = iso
        newObject.exposureCount = exposureCount
        newObject.developingProcess = developingProcess
        delegate.saveContext()
    }

}
