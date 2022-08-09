//
//  ViewController.swift
//  3
//
//  Created by Максим Мигранов on 06.08.2022.
//

import UIKit

//MARK: -IBOutlet
class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    
    //MARK: - LifeCicle view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
        setColour()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    //MARK: - IBAction
    @IBAction func sliderAction(_ sender: UISlider) {
        setColour()
        
        switch sender {
        case redSlider:
            setValue(for: redLabel)
        case greenLabel:
            setValue(for: greenLabel)
        default:
            setValue(for: blueLabel)
        }
    }
    
    //MARK: - Private methods
    private func setColour() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach{ label in
            switch label {
            case redLabel:
                redLabel.text = String(format: "%.2f", redSlider.value)
            case blueLabel:
                blueLabel.text = String(format: "%.2f", blueSlider.value)
            case greenLabel:
                greenLabel.text = String(format: "%.2f", greenSlider.value)
            default: break
            }
        }
    }
    
}


