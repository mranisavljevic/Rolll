//
//  Camera+CoreDataProperties.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 1/4/16.
//  Copyright © 2016 creeperspeak. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Camera {

    @NSManaged var make: String?
    @NSManaged var model: String?
    @NSManaged var cameraDescription: String?
    @NSManaged var loaded: NSNumber?
    @NSManaged var lenses: NSSet?
    @NSManaged var rolls: NSSet?
    @NSManaged var filmFormats: NSSet?
    @NSManaged var exposures: NSSet?

}
