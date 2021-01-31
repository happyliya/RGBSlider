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
    
    private var vievColor = UIColor(displayP3Red:0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 13
        
        //Sliders
        redSlider.value = 0.00
        redSlider.maximumValue = 1.00
        redSlider.minimumValue = 0.00
        redSlider.minimumTrackTintColor = .red
        redValueLabel.text = String (redSlider.value)
        
        greenSlider.value = 0.00
        greenSlider.maximumValue = 1.00
        greenSlider.minimumValue = 0.00
        greenSlider.minimumTrackTintColor = .green
        greenValueLabel.text = String ( greenSlider.value)
        
        
        blueSlider.value = 0.00
        blueSlider.maximumValue = 1.00
        blueSlider.minimumValue = 0.00
        blueSlider.minimumTrackTintColor = .blue
        blueValueLabel.text = String (blueSlider.value)
    }

    @IBAction func redAction() {
        redValueLabel.text = String ( round (redSlider.value * 100) / 100 )
        
    vievColor = UIColor(displayP3Red:CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
        mainView.backgroundColor = vievColor
        
        
    }
    
    @IBAction func greenAction() {
        greenValueLabel.text = String (round (greenSlider.value * 100) / 100)
        
    vievColor = UIColor(displayP3Red:CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
        mainView.backgroundColor = vievColor
    }
    
    @IBAction func blueAction() {
        blueValueLabel.text = String (round (blueSlider.value * 100) / 100)
        
    vievColor = UIColor(displayP3Red:CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
        mainView.backgroundColor = vievColor
    }
}

