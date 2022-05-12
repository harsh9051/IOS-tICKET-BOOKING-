//
//  Third Screen.swift
//  Ticketbooking
//
//  Created by Naga Murali Akula on 12/05/22.
//

import UIKit
import WebKit

class Third_Screen: UIViewController {
    
    @IBOutlet weak var wv1: WKWebView!
    @IBOutlet weak var homeButton: UIBarButtonItem!
    
    var url1: URL!
    var request1: URLRequest!
    
    var string1: String!
    var string2: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = string1
        
        url1 = URL(string: string2)
        request1 = URLRequest(url: url1)
        wv1.load(request1)
        
    }
    
    @IBAction func homeButtonClick(_ sender: UIBarButtonItem) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
