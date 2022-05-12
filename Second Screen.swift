//
//  Second Screen.swift
//  Ticketbooking
//
//  Created by Naga Murali Akula on 12/05/22.
//

import UIKit

class Second_Screen: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table1: UITableView!
    
    @IBOutlet weak var imag1: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var Label2: UILabel!
    
    @IBOutlet weak var next1: UIButton!
    
    var section1Names: [String] = []
    var section1Images: [String] = []
    
    var section2Names: [String] = []
    var section2Images: [String] = []
    
    var url1: [String] = []
    var url2: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // section 1 details
        
        section1Names = ["Air India","Indigo","Go First"]
        section1Images = ["airindia.jpg","indigo.png","gofirst.jpeg"]
        
        section2Names = ["Yeshwanpur Xpress","Rajadhani Xpress","Shikherjee Xpress"]
        section2Images = ["train.jpeg","train.jpeg","train.jpeg"]
        
        url1 = ["https://www.airindia.in","https://www.goindigo.in/?cid=Search%7CGoogle%7CBrand%7CBrand_New%7CIndiGo%7C3&s_kwcid=AL!12293!3!447878758926!e!!g!!indigo&gclid=Cj0KCQjw4PKTBhD8ARIsAHChzRJamorf9r6D9wPcX5ROaAupFjZmoxc1_lQG7aqKbJMgFYmkX8wL8e8aAperEALw_wcB","https://www.flygofirst.com"]
        
        url2 = ["https://www.irctc.co.in/nget/","https://www.irctc.co.in/nget/","https://www.irctc.co.in/nget/"]
        
        table1.delegate = self
        table1.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            
            return "List Of AirLines"
        }
        else {
            return "List Of Trains"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return section1Names.count
        }
        else {
            return section2Names.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            // create the cells
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            
           // displaying the details
            
            cell1.textLabel?.text = section1Names[indexPath.row]
            
            cell1.accessoryType = .detailDisclosureButton
            cell1.backgroundColor = .yellow
            
            
            return cell1
            
        }
        
        else {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            
            cell1.textLabel?.text = section2Names[indexPath.row]
        
            cell1.accessoryType = .detailDisclosureButton
            cell1.backgroundColor = .orange
            
            
            return cell1
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            
            label1.text = section1Names[indexPath.row]
            imag1.image = UIImage(named: section1Images[indexPath.row])
            Label2.text = url1[indexPath.row]
        }
        else {
            
            label1.text = section2Names[indexPath.row]
            imag1.image = UIImage(named: section2Images[indexPath.row])
            Label2.text = url2[indexPath.row]
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextscreen = segue.destination as! Third_Screen
        nextscreen.string1 = label1.text
        nextscreen.string2 = Label2.text
        
        
    }
    

    
    
    

}
