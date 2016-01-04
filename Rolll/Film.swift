//
//  Film.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData
import Crashlytics


class Film: NSManagedObject {

    class func newFilm(brand: String, type: String, iso: Int, exposureCount: Int, developingProcess: String) -> Film? {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newFilm = NSEntityDescription.insertNewObjectForEntityForName("Film", inManagedObjectContext: context)
        guard let newObject = newFilm as? Film else {
            print("New object could not be cast as Film type.")
            return nil
        }
        newObject.brand = brand
        newObject.type = type
        newObject.iso = iso
        newObject.exposureCount = exposureCount
        newObject.developingProcess = developingProcess
        Answers.logCustomEventWithName("NewFilmSaved", customAttributes: ["brand" : brand, "type" : type, "iso" : iso, "developingProcess" : developingProcess, "exposureCount" : exposureCount])
        return newObject
    }

}
