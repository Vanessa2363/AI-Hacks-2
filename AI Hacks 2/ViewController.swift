//
//  ViewController.swift
//  AI Hacks 2
//
//  Created by Vanessa Guo on 9/5/20.
//  Copyright © 2020 Vanessa Guo. All rights reserved.
//

import UIKit
class Cell: UITableViewCell {
    
}

class ViewController: UIViewController {

    @IBOutlet weak var ageButton: UIButton!
    @IBOutlet weak var experienceButton: UIButton!
    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var subjectButton: UIButton!
    
    let transparentLayer = UIView()
    let tableView = UITableView()
    
    var buttonClicked = UIButton()
    
    var Data = [String]()

    
    override func viewDidLoad() {
        tableView.register(Cell.self , forCellReuseIdentifier: "classCell")
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
        
    //Rounds the corners of the button
    ageButton.layer.cornerRadius = 10
    experienceButton.layer.cornerRadius = 10
    payButton.layer.cornerRadius = 10
    subjectButton.layer.cornerRadius = 10
    }
      
    func addTransparentLayer(frames:CGRect) {
        let filter = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        transparentLayer.frame = filter?.frame ?? self.view.frame
        self.view.addSubview(transparentLayer)
        
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 10
        self.tableView.isScrollEnabled = true
        
//Adds transparent layer when a button is clicked
        transparentLayer.backgroundColor = UIColor.blue.withAlphaComponent(0.6)
//Allows the tableView to change every time instead of keeping the same Data
        tableView.reloadData()
        
        let clickMotion = UITapGestureRecognizer(target: self, action: #selector(removeTransparentLayer))
        transparentLayer.addGestureRecognizer(clickMotion)
// Places transparency without animation
        transparentLayer.alpha = 0
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.transparentLayer.alpha = 0.4
//height determines how many boxes/options will show up due to space
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: CGFloat(self.Data.count * 40))
        }, completion: nil)
    }
    
    @objc func removeTransparentLayer() {
        let frames = buttonClicked.frame
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.9, options: .curveEaseInOut, animations: {
            self.transparentLayer.alpha = 0
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
// Can't get rid of spring
//        Data = ["8","9","10","11","12","13","14","15","16","17","18", "19". "20", "21", "22", "23", "24", "25",]
        @IBAction func clickAgeButton(_ sender: Any) {
        Data = ["8-12", "13-15", "16-18", "18-25", "25+" ]
        buttonClicked = ageButton
        addTransparentLayer(frames: ageButton.frame)
    }
    @IBAction func clickExperienceButton(_ sender: Any) {
        Data = ["Novice", "Intermediate", "Advanced", "Expert"]
        buttonClicked = experienceButton
        addTransparentLayer(frames: experienceButton.frame)
    }
    @IBAction func clickPayButton(_ sender: Any) {
        Data = ["Paying", "Free", "<$20", "$20-$100", "$100-$300", "$300-$500", "$500-$1000", "$1000-$2500", "2500+"]
        buttonClicked = payButton
        addTransparentLayer(frames: payButton.frame)
    }
    @IBAction func clickSubjectButton(_ sender: Any) {
        Data = ["Science", "Technology", "Engineering", "Math"]
        buttonClicked = subjectButton
        addTransparentLayer(frames: subjectButton.frame)
    }
    
    }

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "classCell", for: indexPath)
        cell.textLabel?.text = Data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        buttonClicked.setTitle(Data[indexPath.row], for: .normal)
        removeTransparentLayer()
    }
}

// Credit: https://github.com/1992Shubham/Programmatically-Drop-Down-in-Swift/blob/master/DropDownSelection/DropDownSelection/ViewController.swift
