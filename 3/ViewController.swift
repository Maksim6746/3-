//
//  ViewController.swift
//  3
//
//  Created by Максим Мигранов on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
        setupSlider()
        setupLabel()
    }
    
    @IBAction func sliderAction() {
        redLabel.text = String(NSString(format: "%.2f", redSlider.value))
        greenLabel.text = String(NSString(format: "%.2f", greenSlider.value))
        blueLabel.text = String(NSString(format: "%.2f", blueSlider.value))
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 1, green: CGFloat(greenSlider.value) / 1, blue: CGFloat(blueSlider.value) / 1, alpha: 1)
    }
    

    private func setupSlider() {
        redSlider.value = 0.35
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .white
        
        greenSlider.value = 0.25
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .white
        
        blueSlider.value = 0.15
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .white
    }
    
    private func setupLabel(){
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    
}
        
        
        
