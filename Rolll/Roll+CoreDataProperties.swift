//
//  Roll+CoreDataProperties.swift
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

extension Roll {

    @NSManaged var rollDescription: String?
    @NSManaged var notes: String?
    @NSManaged var developerID: String?
    @NSManaged var startDate: NSDate?
    @NSManaged var finishDate: NSDate?
    @NSManaged var developedDate: NSDate?
    @NSManaged var inCamera: NSNumber?
    @NSManaged var exposed: NSNumber?
    @NSManaged var camera: Camera?
    @NSManaged var film: Film?
    @NSManaged var developerLab: DeveloperLab?
    @NSManaged var exposures: NSSet?

}
