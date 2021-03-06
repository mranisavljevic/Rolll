//
//  FilmFormat.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//

import UIKit
import CoreData


class FilmFormat: NSManagedObject {

    class func newFilmFormat(filmFormat: String) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = delegate.managedObjectContext
        let newObject = NSEntityDescription.insertNewObjectForEntityForName("FilmFormat", inManagedObjectContext: context)
        guard let newFilmFormat = newObject as? FilmFormat else {
            print("New object could not be cast as FilmFormat type.")
            return
        }
        newFilmFormat.format = filmFormat
        delegate.saveContext()
    }

}
