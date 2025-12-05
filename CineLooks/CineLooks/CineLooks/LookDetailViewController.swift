//
//  LookDetailViewController.swift
//  CineLooks
//
//  Created by Jonathan Braun on 12/4/25.
//

import UIKit

class LookDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var look: ColorLook?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let look = look {
            title = look.name          // nav bar title
            nameLabel.text = look.name
            categoryLabel.text = look.category
            descriptionLabel.text = look.description
            view.backgroundColor = look.backgroundColor
            nameLabel.textColor = look.textColor
            descriptionLabel.textColor = look.textColor
            
            // special case for Low-Key Noir title
            let navTitleColor: UIColor = (look.name == "Low-Key Noir") ? .white : .black
            
            navigationController?.navigationBar.titleTextAttributes = [
                .foregroundColor: navTitleColor
            ]
        }
    }
}

