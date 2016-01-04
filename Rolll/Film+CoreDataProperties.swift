//
//  Film+CoreDataProperties.swift
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

extension Film {

    @NSManaged var brand: String?
    @NSManaged var exposureCount: NSNumber?
    @NSManaged var iso: NSNumber?
    @NSManaged var type: String?
    @NSManaged var developingProcess: String?
    @NSManaged var rolls: NSSet?
    @NSManaged var filmFormat: FilmFormat?
    @NSManaged var exposures: NSSet?

}
