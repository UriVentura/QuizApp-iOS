//
//  ViewController.swift
//  QuizApp
//
//  Created by Uri Ventura on 15/11/17.
//  Copyright © 2017 Uri Ventura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

//*Variables

    let quiz = ["Got", "Futbol", "Pokemon", "Minecraft"]

//*Outlets

    @IBOutlet weak var imglogo: UIImageView!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBAction func startbtn(_ sender: Any) {

        if(label.text == "Got"){
            imglogo.image = UIImage(named: "GotLogo")
            img.image = UIImage(named: "Got")
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Preguntas") as! QAViewController
            viewController.stringPassed = label.text!
            self.present(viewController, animated: true, completion: nil)

        }else if(label.text == "Futbol"){
            imglogo.image = UIImage(named: "FutbolLogo")
            img.image = UIImage(named: "Futbol")
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Preguntas") as! QAViewController
            viewController.stringPassed = label.text!
            self.present(viewController, animated: true, completion: nil)

        }else if(label.text == "Pokemon"){
            imglogo.image = UIImage(named: "PokemonLogo")
            img.image = UIImage(named: "Pokemon")
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Preguntas") as! QAViewController
            viewController.stringPassed = label.text!
            self.present(viewController, animated: true, completion: nil)

        }else if(label.text == "Minecraft"){
            imglogo.image = UIImage(named: "MinecraftLogo")
            img.image = UIImage(named: "Minecraft")
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Preguntas") as! QAViewController
            viewController.stringPassed = label.text!
            self.present(viewController, animated: true, completion: nil)

        }
    }


//*Override

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//*Funciones

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quiz.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quiz[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = quiz[row]

//*Carga imagenes

        if(label.text == "Got"){
            imglogo.image = UIImage(named: "GotLogo")
            img.image = UIImage(named: "Got")

        }else if(label.text == "Futbol"){
            imglogo.image = UIImage(named: "FutbolLogo")
            img.image = UIImage(named: "Futbol")

        }else if(label.text == "Pokemon"){
            imglogo.image = UIImage(named: "PokemonLogo")
            img.image = UIImage(named: "Pokemon")

        }else if(label.text == "Minecraft"){
            imglogo.image = UIImage(named: "MinecraftLogo")
            img.image = UIImage(named: "Minecraft")

        }
    }
}










