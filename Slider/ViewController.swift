//
//  ViewController.swift
//  Slider
//
//  Created by Alumno on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var img: UIImageView!
    @IBOutlet var rColor: UISlider!
    @IBOutlet var gColor: UISlider!
    @IBOutlet var bColor: UISlider!
    @IBOutlet var alpha: UISlider!
    @IBOutlet var labelR: UILabel!
    @IBOutlet var labelG: UILabel!
    @IBOutlet var labelB: UILabel!
    @IBOutlet var labelA: UILabel!
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func change_color(){
        background.backgroundColor = UIColor(red: CGFloat(rColor.value), green: CGFloat(gColor.value), blue: CGFloat(bColor.value), alpha: 1)
    }

    @IBAction func rAction(_ sender: UISlider) {
        change_color()
        labelR.text = String(rColor.value)
    }
    
    @IBAction func gAction(_ sender: UISlider) {
        change_color()
        labelG.text = String(gColor.value)
    }
    
    @IBAction func bColor(_ sender: UISlider) {
        change_color()
        labelB.text = String(bColor.value)
    }
    
    @IBAction func alpha2(_ sender: UISlider) {
        background.alpha = CGFloat(sender.value)
        labelA.text = String(sender.value)
    }
}

