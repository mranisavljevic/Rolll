//
//  HomeViewController.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 12/29/15.
//  Copyright © 2015 creeperspeak. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {

    var fetchedResultsController: NSFetchedResultsController?

    @IBOutlet weak var rollTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFetchedResultController()
        self.setUpTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUpFetchedResultController() {
        let rollFetchRequest = NSFetchRequest(entityName: "Roll")
        let sortDescriptors = NSSortDescriptor(key: "Camera", ascending: true)
        rollFetchRequest.sortDescriptors = [sortDescriptors]
        self.fetchedResultsController = NSFetchedResultsController(fetchRequest: rollFetchRequest, managedObjectContext: NSManagedObjectContext(concurrencyType: NSManagedObjectContextConcurrencyType.MainQueueConcurrencyType), sectionNameKeyPath: nil, cacheName: nil)
        guard let controller = self.fetchedResultsController else { return }
        controller.delegate = self
    }
    
    func setUpTableView() {
        self.rollTableView.delegate = self
        self.rollTableView.dataSource = self
    }
    
   //MARK: NSFetchedResultsControllerDelegate
    
    func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String? {
        return sectionName
    }
    
    //MARK: UITableViewDelegate, UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let fetchController = self.fetchedResultsController, allSections = fetchController.sections else {
            return 0
        }
        return allSections[section].numberOfObjects
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RollTableViewCell", forIndexPath: indexPath) as! RollTableViewCell
        return cell
    }

}
