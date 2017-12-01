//
//  TheInternetController.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 10/26/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController
{
    private (set) lazy var internetTopics :[String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    private lazy var addresses : [String] = [ ]
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        addresses = [
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com"
        ]
        
        if let splitView = splitViewController
        {
            let currentController = splitView.viewControllers
            detailViewController = currentController[0] as? InternetDetailViewController
        }
    }
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Uncommen the following line to preserve selction between presentaitions
        self.clearsSelectionOnViewWillAppear = false
        
    }
    // MARK: - Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implemtation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLabel!.text = currentText
    
    return cell
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: replace with your definitions - freat times use the """ operator
                    pageText = "All the defintions you wrote........."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailAddress = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                
            }
        }
    }

}
