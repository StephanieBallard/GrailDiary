//
//  POIDetailViewController.swift
//  GrailDiary
//
//  Created by Ben Gohlke on 10/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class POIDetailViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesTextView: UITextView!

    var poi: POI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
//    In updateViews, unwrap the poi property with guard and set the various model
//    properties to the text of the labels and the textview; you'll have to do a little
//    formatting to show the clues as a list in the cluesTextView
    
    private func updateViews() {
        guard let poi = poi else { return }
        locationLabel.text = poi.location
        countryLabel.text = poi.country
        
        var cluesText = ""
        for clue in poi.clues {
            cluesText += "- \(clue)\n"
        }
        cluesTextView.text = cluesText
    }
}
