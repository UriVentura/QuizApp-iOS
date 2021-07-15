//
//  QAViewController.swift
//  QuizApp
//
//  Created by Uri Ventura on 17/11/17.
//  Copyright © 2017 Uri Ventura. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {

//*Variables

    var correctAnswer = String()
    var stringPassed:String = ""
    var puntuacionc:Int = 0
    var randomQuestionArray:[Int] = [1, 2, 3, 4, 5]

//*Outlets

    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!

    @IBOutlet weak var puntuacion: UILabel!

    @IBOutlet weak var imglogo: UIImageView!
    @IBOutlet weak var imglogobot: UIImageView!
    @IBOutlet weak var labelqa: UILabel!

    @IBAction func respuestas(_ sender: UIButton) {
        if sender.titleLabel?.text == correctAnswer{
            sender.backgroundColor = UIColor.green
            puntuacionc = puntuacionc + 1
            puntuacion.text? = "\(puntuacionc)"
            print(puntuacion.text!)
            answer1.isEnabled = false
            answer2.isEnabled = false
            answer3.isEnabled = false
            answer4.isEnabled = false
        }else{
            sender.backgroundColor = UIColor.red
            puntuacionc = puntuacionc - 0
            puntuacion.text? = "\(puntuacionc)"
            answer1.isEnabled = false
            answer2.isEnabled = false
            answer3.isEnabled = false
            answer4.isEnabled = false
        }
    }

    @IBAction func nextbutton(_ sender: UIButton) {

        if randomQuestionArray.isEmpty {
            sender.isHidden = true

        }else{

        switch stringPassed {
            case "Got":
                RandomQuestionsGot()
                break
            case "Futbol":
                RandomQuestionsFutbol()
                break
            case "Pokemon":
                RandomQuestionsPokemon()
                break
            case "Minecraft":
                RandomQuestionsMinecraft()
                break
            default:
                break
            }
        }
    }


//*Override -> Charge images and go to questions

    //*Pasar la label de puntuación
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let popupView = segue.destination as! PopUpViewController
        popupView.puntuacionstring = puntuacion.text!
    }

    override func viewDidLoad() {

            if(stringPassed == "Got"){
                imglogo.image = UIImage(named: "GotLogo")
                imglogobot.image = UIImage(named: "Got")

            }else if(stringPassed == "Futbol"){
                imglogo.image = UIImage(named: "FutbolLogo")
                imglogobot.image = UIImage(named: "Futbol")

            }else if(stringPassed == "Pokemon"){
                imglogo.image = UIImage(named: "PokemonLogo")
                imglogobot.image = UIImage(named: "Pokemon")

            }else if(stringPassed == "Minecraft"){
                imglogo.image = UIImage(named: "MinecraftLogo")
                imglogobot.image = UIImage(named: "Minecraft")
            }

            super.viewDidLoad()

            print(stringPassed)

            switch stringPassed {
            case "Got":
                RandomQuestionsGot()
                break
            case "Futbol":
                RandomQuestionsFutbol()
                break
            case "Pokemon":
                RandomQuestionsPokemon()
                break
            case "Minecraft":
                RandomQuestionsMinecraft()
                break
            default:
                break
            }
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


//*Questions -> Game Of Thrones

    func RandomQuestionsGot(){

        answer1.backgroundColor = UIColor.white
        answer2.backgroundColor = UIColor.white
        answer3.backgroundColor = UIColor.white
        answer4.backgroundColor = UIColor.white

        answer1.isEnabled = true
        answer2.isEnabled = true
        answer3.isEnabled = true
        answer4.isEnabled = true

        let randomIndex = Int(arc4random_uniform(UInt32(randomQuestionArray.count)))
        if randomQuestionArray.count > 0 {
    switch(randomQuestionArray[randomIndex]) {

        case 1:

        questionLabel.text = "¿Como se llama en realidad Jon?"
                answer1.setTitle("Aegon", for: UIControlState.normal)
                answer2.setTitle("Jon", for: UIControlState.normal)
                answer3.setTitle("Juan", for:UIControlState.normal)
                answer4.setTitle("Drogon", for: UIControlState.normal)
            correctAnswer = "Aegon"

            break

        case 2:

            questionLabel.text = "¿Quién ayuda a Sansa Stark a escapar de las garras de Ramsay Bolton?"
            answer1.setTitle("Arya", for: UIControlState.normal)
            answer2.setTitle("Theon", for: UIControlState.normal)
            answer3.setTitle("Jon", for:UIControlState.normal)
            answer4.setTitle("Daenerys", for: UIControlState.normal)
            correctAnswer = "Theon"

            break

        case 3:

            questionLabel.text = "¿A quién mata Daenerys?"
            answer1.setTitle("Los Jordis", for: UIControlState.normal)
            answer2.setTitle("Los Bolton", for: UIControlState.normal)
            answer3.setTitle("Los Immaculados", for:UIControlState.normal)
            answer4.setTitle("Los Khal", for: UIControlState.normal)
            correctAnswer = "Los Khal"

            break

        case 4:

            questionLabel.text = "¿Qué error comete Bran en sus viajes al pasado?"
            answer1.setTitle("Matar a alguien", for: UIControlState.normal)
            answer2.setTitle("Ver al Rey de la Noche", for: UIControlState.normal)
            answer3.setTitle("Cambiar el futuro", for:UIControlState.normal)
            answer4.setTitle("Pasar demasiado tiempo con las visiones", for: UIControlState.normal)
            correctAnswer = "Ver al Rey de la Noche"

            break

        case 5:

            questionLabel.text = "Cuál es el emblema de la casa Baratheon?"
            answer1.setTitle("Crecer fuerte", for: UIControlState.normal)
            answer2.setTitle("Nunca doblegado, nunca roto", for: UIControlState.normal)
            answer3.setTitle("Nuestra es la furia", for:UIControlState.normal)
            answer4.setTitle("El invierno se acerca", for: UIControlState.normal)
            correctAnswer = "Nuestra es la furia"

            break

        default:
            break
        }
            randomQuestionArray.remove(at: randomIndex)
        }

    }

//*Questions -> Pokemon

    func RandomQuestionsPokemon(){

        answer1.backgroundColor = UIColor.white
        answer2.backgroundColor = UIColor.white
        answer3.backgroundColor = UIColor.white
        answer4.backgroundColor = UIColor.white

        answer1.isEnabled = true
        answer2.isEnabled = true
        answer3.isEnabled = true
        answer4.isEnabled = true

        let randomIndex = Int(arc4random_uniform(UInt32(randomQuestionArray.count)))
        if randomQuestionArray.count > 0 {
            switch(randomQuestionArray[randomIndex]) {

            case 1:

                questionLabel.text = "¿Qué número lleva Pikachu en el PokéDex?"
                answer1.setTitle("15", for: UIControlState.normal)
                answer2.setTitle("20", for: UIControlState.normal)
                answer3.setTitle("25", for:UIControlState.normal)
                answer4.setTitle("1", for: UIControlState.normal)
                correctAnswer = "25"

                break

            case 2:

                questionLabel.text = "Cubone es un pokémon del tipo..."
                answer1.setTitle("Fantasma", for: UIControlState.normal)
                answer2.setTitle("Tierra", for: UIControlState.normal)
                answer3.setTitle("Normal", for:UIControlState.normal)
                answer4.setTitle("Lucha", for: UIControlState.normal)
                correctAnswer = "Tierra"

                break

            case 3:

                questionLabel.text = "¿Cuánto vale un Magikarp?"
                answer1.setTitle("500p", for: UIControlState.normal)
                answer2.setTitle("999999p", for: UIControlState.normal)
                answer3.setTitle("No tiene precio", for:UIControlState.normal)
                answer4.setTitle("1p", for: UIControlState.normal)
                correctAnswer = "500p"

                break

            case 4:

                questionLabel.text = "¿Treecko, Torchic y Mudkip son los pokémon iniciales de qué región?"
                answer1.setTitle("Sinooh", for: UIControlState.normal)
                answer2.setTitle("Kanto", for: UIControlState.normal)
                answer3.setTitle("Johto", for:UIControlState.normal)
                answer4.setTitle("Hoenn", for: UIControlState.normal)
                correctAnswer = "Hoenn"

                break

            case 5:

                questionLabel.text = "El primer pokémon que Ash Ketchum atrapó fue..."
                answer1.setTitle("Pikachu", for: UIControlState.normal)
                answer2.setTitle("Charmander", for: UIControlState.normal)
                answer3.setTitle("Caterpie", for:UIControlState.normal)
                answer4.setTitle("Pidgey", for: UIControlState.normal)
                correctAnswer = "Caterpie"

                break
            default:
                break
            }
            randomQuestionArray.remove(at: randomIndex)
        }

    }

//*Questions -> Fifa

    func RandomQuestionsFutbol(){

        answer1.backgroundColor = UIColor.white
        answer2.backgroundColor = UIColor.white
        answer3.backgroundColor = UIColor.white
        answer4.backgroundColor = UIColor.white

        answer1.isEnabled = true
        answer2.isEnabled = true
        answer3.isEnabled = true
        answer4.isEnabled = true

        let randomIndex = Int(arc4random_uniform(UInt32(randomQuestionArray.count)))
        if randomQuestionArray.count > 0 {
            switch(randomQuestionArray[randomIndex]) {

            case 1:

                questionLabel.text = "¿Cuál es el apodo del Leicester City?"
                answer1.setTitle("Los Lobos", for: UIControlState.normal)
                answer2.setTitle("Los Zorros", for: UIControlState.normal)
                answer3.setTitle("Los Leónes", for:UIControlState.normal)
                answer4.setTitle("Los Dinosaurios", for: UIControlState.normal)
                correctAnswer = "Los Zorros"

                break

            case 2:

                questionLabel.text = "Christian Vieri jugó en 12 equipos distintos pero... ¿En cuál de los siguientes clubes estuvo nunca?"
                answer1.setTitle("Milan", for: UIControlState.normal)
                answer2.setTitle("Torino", for: UIControlState.normal)
                answer3.setTitle("Sampdoria", for:UIControlState.normal)
                answer4.setTitle("Fiorentina", for: UIControlState.normal)
                correctAnswer = "Sampdoria"

                break

            case 3:

                questionLabel.text = "¿Cuántos Mundiales suman entre Brasil, Italia y Alemania?"
                answer1.setTitle("Doce", for: UIControlState.normal)
                answer2.setTitle("Catorce", for: UIControlState.normal)
                answer3.setTitle("Diez", for:UIControlState.normal)
                answer4.setTitle("Trece", for: UIControlState.normal)
                correctAnswer = "Trece"

                break

            case 4:

                questionLabel.text = "Miroslav Klose es el máximo goleador de la historia de los Mundiales pero... ¿con cuántos tantos?"
                answer1.setTitle("16", for: UIControlState.normal)
                answer2.setTitle("15", for: UIControlState.normal)
                answer3.setTitle("17", for:UIControlState.normal)
                answer4.setTitle("14", for: UIControlState.normal)
                correctAnswer = "16"

                break

            case 5:

                questionLabel.text = "¿Qué equipo ganó la última Recopa?"
                answer1.setTitle("Barça", for: UIControlState.normal)
                answer2.setTitle("Inter", for: UIControlState.normal)
                answer3.setTitle("Lazio", for:UIControlState.normal)
                answer4.setTitle("Chelsea", for: UIControlState.normal)
                correctAnswer = "Lazio"

                break
            default:
                break
            }
            randomQuestionArray.remove(at: randomIndex)
        }

    }

//*Questions -> Minecraft

    func RandomQuestionsMinecraft(){

        answer1.backgroundColor = UIColor.white
        answer2.backgroundColor = UIColor.white
        answer3.backgroundColor = UIColor.white
        answer4.backgroundColor = UIColor.white

        answer1.isEnabled = true
        answer2.isEnabled = true
        answer3.isEnabled = true
        answer4.isEnabled = true

        let randomIndex = Int(arc4random_uniform(UInt32(randomQuestionArray.count)))
        if randomQuestionArray.count > 0 {
            switch(randomQuestionArray[randomIndex]) {

            case 1:

                questionLabel.text = "¿Que hace un Creeper?"
                answer1.setTitle("Explota", for: UIControlState.normal)
                answer2.setTitle("Ataca", for: UIControlState.normal)
                answer3.setTitle("Huye", for:UIControlState.normal)
                answer4.setTitle("Vuela", for: UIControlState.normal)
                correctAnswer = "Explota"

                break

            case 2:

                questionLabel.text = "¿Que hace un Enderman?"
                answer1.setTitle("Salta", for: UIControlState.normal)
                answer2.setTitle("Explota", for: UIControlState.normal)
                answer3.setTitle("Teletransporta", for:UIControlState.normal)
                answer4.setTitle("Vuela", for: UIControlState.normal)
                correctAnswer = "Teletransporta"

                break

            case 3:

                questionLabel.text = "¿Como paras un generador de Monstruos sin destruirlo?"
                answer1.setTitle("Con bloques", for: UIControlState.normal)
                answer2.setTitle("Con un pico", for: UIControlState.normal)
                answer3.setTitle("Con la Enderpearl", for:UIControlState.normal)
                answer4.setTitle("Con antorchas", for: UIControlState.normal)
                correctAnswer = "Con antorchas"

                break

            case 4:

                questionLabel.text = "¿Como se va al Nether?"
                answer1.setTitle("Por el cielo", for: UIControlState.normal)
                answer2.setTitle("Picando hacía abajo", for: UIControlState.normal)
                answer3.setTitle("Por un portal de obsidiana", for:UIControlState.normal)
                answer4.setTitle("Por un portal de diamantes", for: UIControlState.normal)
                correctAnswer = "Por un portal de obsidiana"

                break

            case 5:

                questionLabel.text = "¿Quien es Herobrine?"
                answer1.setTitle("El hermano del creador del juego", for: UIControlState.normal)
                answer2.setTitle("El nombre del personaje del juego", for: UIControlState.normal)
                answer3.setTitle("El padre del creador del juego", for:UIControlState.normal)
                answer4.setTitle("Tu", for: UIControlState.normal)
                correctAnswer = "El hermano del creador del juego"

                break

            default:
                break
            }
            randomQuestionArray.remove(at: randomIndex)
        }
    }
}


