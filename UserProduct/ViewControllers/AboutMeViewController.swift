//
//  AboutMeViewController.swift
//  UserProduct
//
//  Created by Карина on 21.08.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    
    @IBOutlet var photoImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var edicationLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = user.person.age
        edicationLabel.text = user.person.studies.rawValue
        jobLabel.text = user.person.job.rawValue
      
    }
    

  
}
