//
//  ViewController.swift
//  CineLooks
//
//  Created by Jonathan Braun on 12/4/25.
//

import UIKit

class LookListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let looks = ColorLookData.all
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CineLooks"
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return looks.count
    }
                   
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                  for: indexPath)
        let look = looks[indexPath.row]
        cell.textLabel?.text = look.name
        cell.detailTextLabel?.text = look.category
        
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
           let detailVC = segue.destination as? LookDetailViewController {
            if let indexPath = sender as? IndexPath {
                let selectedLook = looks[indexPath.row]
                detailVC.look = selectedLook
            } else if let indexPath = tableView.indexPathForSelectedRow {
                detailVC.look = looks[indexPath.row]
            }
        }
    }
}

