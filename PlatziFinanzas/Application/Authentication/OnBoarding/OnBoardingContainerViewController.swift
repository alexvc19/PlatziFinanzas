//
//  OnBoardingContainerViewController.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 18/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           guard segue.identifier == "openOnBoarding",
               let destination = segue.destination as? OnBoardingViewController else {
               return
           }
           
           destination.pageControl = pageControl
       }
   

}
