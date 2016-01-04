//
//  Exposure+CoreDataProperties.swift
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

extension Exposure {

    @NSManaged var number: NSNumber?
    @NSManaged var exposureDescription: String?
    @NSManaged var note: String?
    @NSManaged var exposureTime: String?
    @NSManaged var roll: Roll?
    @NSManaged var film: Film?
    @NSManaged var camera: Camera?
    @NSManaged var lens: Lens?
    @NSManaged var apertureStop: ApertureStop?

}
