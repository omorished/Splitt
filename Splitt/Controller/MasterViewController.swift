//
//  MasterViewController.swift
//  Splitt
//
//  Created by Os! on 09/06/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

//    var detailViewController: DetailViewController? = nil
//    var objects = [Any]()


    override func viewDidLoad() {
        super.viewDidLoad()

        
        }


    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
                controller.image = imageArray[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel!.text = names[indexPath.row]
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        //make it safely baby
        if let navBarHeight = navigationController?.navigationBar.frame.height {
        return (tableView.frame.height - navBarHeight) / CGFloat(imageArray.count)
            
    } else { return (tableView.frame.height - 60) / CGFloat(imageArray.count) }

}

}
