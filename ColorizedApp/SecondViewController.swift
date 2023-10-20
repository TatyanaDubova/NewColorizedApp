//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Татьяна Дубова on 29.09.2023.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setupThreeSliders()
        setupThreeLabels()
        updateColorView()
    }
    
    // MARK: - IB Actions
    @IBAction func onRedSlaiderChangedValue() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        updateColorView()
    }
    
    @IBAction func onGreenSliderChangedValue() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        updateColorView()
    }
    
    @IBAction func onBlueSliderChangedValue() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        updateColorView()
    }
}

//MARK: - Private Methods
extension ViewController {
    private func setupThreeSliders() {
        redSlider.maximumTrackTintColor = UIColor(white: 0, alpha: 0.06)
        greenSlider.maximumTrackTintColor = UIColor(white: 0, alpha: 0.06)
        blueSlider.maximumTrackTintColor = UIColor(white: 0, alpha: 0.06)
    }
    
    private func setupThreeLabels() {
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
    
    private func updateColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
}

