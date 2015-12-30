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
    
    //MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setUpFetchedResultController()
        self.setUpTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Setup Functions
    
    func setUpFetchedResultController() {
        let rollFetchRequest = NSFetchRequest(entityName: "Roll")
        let sortDescriptors = NSSortDescriptor(key: "Camera", ascending: true)
        rollFetchRequest.sortDescriptors = [sortDescriptors]
        self.fetchedResultsController = NSFetchedResultsController(fetchRequest: rollFetchRequest, managedObjectContext: NSManagedObjectContext(concurrencyType: NSManagedObjectContextConcurrencyType.MainQueueConcurrencyType), sectionNameKeyPath: nil, cacheName: nil)
        guard let controller = self.fetchedResultsController else { return }
        controller.delegate = self
        do {
            try controller.performFetch()
        } catch {}
    }
    
    func setUpTableView() {
        self.rollTableView.delegate = self
        self.rollTableView.dataSource = self
        let nib = UINib(nibName: "RollTableViewCell", bundle: NSBundle.mainBundle())
        self.rollTableView.registerNib(nib, forCellReuseIdentifier: "RollTableViewCell")
    }
    
   //MARK: NSFetchedResultsControllerDelegate
    
    func controllerWillChangeContent(controller: NSFetchedResultsController) {
        self.rollTableView.beginUpdates()
    }
    
    func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String? {
        return sectionName
    }
    
    func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, atIndex sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType) {
        //switch on type to deal with insertions/deletions
    }
    
    func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?) {
        //switch on type and deal with insertions/deletions/updates/moves
    }
    
    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        self.rollTableView.endUpdates()
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
