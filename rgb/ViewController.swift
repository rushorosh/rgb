//
//  ViewController.swift
//  rgb
//
//  Created by Русиф on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var colorPaletteView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var redColorSlider: UISlider!
    
    
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var greenColorSlider: UISlider!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    @IBOutlet var blueColorSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPaletteView.layer.cornerRadius = 50
        colorPaletteView.backgroundColor = mixColors()
        setupRedStack()
        setupGreenStack()
        setupBlueStack()
        
    }
    
    // MARK: - IB Actions
    @IBAction func redColorChangeAction() {
        redLabelValue.text = CGFloat(round(100 * redColorSlider.value)/100)
            .formatted()
    }
    
    @IBAction func greenLabelChangeAction() {
        greenLabelValue.text = CGFloat(round(100 * greenColorSlider.value)/100)
            .formatted()
    }
    
    @IBAction func blueColorChangeAction() {
        blueLabelValue.text = CGFloat(round(100 * blueColorSlider.value)/100)
            .formatted()
    }
    
    
    @IBAction func changePaletteColor(_ sender: Any) {
        colorPaletteView.backgroundColor = mixColors()
    }
    
    // MARK: - Private Methods
    private func mixColors() -> UIColor {
        UIColor(red: CGFloat(redColorSlider.value) * 255 / 255,
                green: CGFloat(greenColorSlider.value) * 255 / 255,
                blue: CGFloat(blueColorSlider.value) * 255 / 255,
                alpha: 1)
    }
    
    private func setupRedStack() {
        redColorSlider.tintColor = .red
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        redColorSlider.value = 0.5
        redLabelValue.text = redColorSlider.value.formatted()
    }
    private func setupGreenStack() {
        greenColorSlider.tintColor = .green
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        greenColorSlider.value = 0.5
        greenLabelValue.text = greenColorSlider.value.formatted()
    }
    private func setupBlueStack() {
        blueColorSlider.tintColor = .blue
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
        blueColorSlider.value = 0.5
        blueLabelValue.text = blueColorSlider.value.formatted()
    }
}

