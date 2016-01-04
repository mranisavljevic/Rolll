//
//  ApertureStop+CoreDataProperties.swift
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

extension ApertureStop {

    @NSManaged var apertureStop: NSNumber?
    @NSManaged var lens: NSSet?
    @NSManaged var exposures: NSSet?

}
