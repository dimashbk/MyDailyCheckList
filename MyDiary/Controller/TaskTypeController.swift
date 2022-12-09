//
//  TaskTypeController.swift
//  MyDiary
//
//  Created by Dinmukhamed on 08.12.2022.
//

import UIKit

class TaskTypeController: UITableViewController {
    
    var doAfterTypeSelected: ((TaskPriority) -> Void)?
   
    typealias TypeCellDescription = (type: TaskPriority, title: String, description: String)
    
    private var taskTypesInformation: [TypeCellDescription] = [
    (type: .important, title: "Важная", description: "Более приоритетная задача"),
    (type: .normal, title: "Текущая", description: "Менее приоритетная задача")
    ]
  
    
    var selectedType: TaskPriority = .normal
    // ...

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let cellTypeNib = UINib(nibName: "TaskTypeCell", bundle: nil)
    
        tableView.register(cellTypeNib, forCellReuseIdentifier: "TaskTypeCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return taskTypesInformation.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTypeCell", for: indexPath) as! TaskTypeCell
       
        let typeDescription = taskTypesInformation[indexPath.row]

        cell.typeTitle.text = typeDescription.title
        cell.typeDescription.text = typeDescription.description

        if selectedType == typeDescription.type {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
            
        }
        return cell

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let selectedType = taskTypesInformation[indexPath.row].type
     
        doAfterTypeSelected?(selectedType)
      
        navigationController?.popViewController(animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
