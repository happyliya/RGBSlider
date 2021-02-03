//
//  ViewController.swift
//  RGBSlider
//
//  Created by HappyLiya on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 13
        
        setColor()
        
        //Sliders
        redSlider.minimumTrackTintColor = .red
        redValueLabel.text = String (redSlider.value)
        
        greenSlider.minimumTrackTintColor = .green
        greenValueLabel.text = String ( greenSlider.value)
        
        blueValueLabel.text = String (blueSlider.value)
    }
    
    @IBAction func redAction() {
        redValueLabel.text = String ( round (redSlider.value * 100) / 100 )
        
        setColor()
    }
    
    @IBAction func greenAction() {
        greenValueLabel.text = String (round (greenSlider.value * 100) / 100)
        
        setColor()
    }
    
    @IBAction func blueAction() {
        blueValueLabel.text = String (round (blueSlider.value * 100) / 100)
        
        setColor()
    }
    
    private func setColor()  {
        mainView.backgroundColor = UIColor(displayP3Red:CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1.0)
    }
}

