//
//  ViewController.swift
//  autocompletegoogle
//
//  Created by JaydeepC on 26/11/16.
//  Copyright © 2016 JaydeepC. All rights reserved.
//

import UIKit
//import GooglePlacesAutocomplete // Not required when including source files directly in project


class ViewController: UIViewController,GooglePlacesAutocompleteDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
//        let url = NSURL(string: "http://www.stackoverflow.com")
//        
//        let task = URLSession.shared.dataTask(with: url! as URL) {(data, response, error) in
//            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//        }
        
//        task.resume()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onClickButton(_ sender: AnyObject) {
//        let gpaViewController = GooglePlacesAutocomplete(
//            apiKey: "",
//            placeType: .all
//        )
         let gpaViewController = GooglePlacesAutocomplete(apiKey: "AIzaSyAOZeZ576r0P3uBv31U5vZFNM6QyuLTVVM")
        gpaViewController.placeDelegate = self // Conforms to GooglePlacesAutocompleteDelegate
        
        present(gpaViewController, animated: true, completion: nil)
    }
    func placeSelected(place: Place) {
        print(place.description)
        
        place.getDetails { details in
            print(details)
        }
    }
    
    func placeViewClosed() {
        dismiss(animated: true, completion: nil)
    }

}

