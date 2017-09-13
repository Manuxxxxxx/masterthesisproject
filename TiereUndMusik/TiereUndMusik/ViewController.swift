//
//  ViewController.swift
//  TiereUndMusik
//
//  Created by Manuel Beyer on 15.12.15.
//  Copyright © 2015 Manuel Beyer. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation



class ViewController: UIViewController {

    
    //MARK: Definition Imageviews
    
    
    
    
    
    
    
    @IBOutlet weak var HouseImageView: UIImageView!
    @IBOutlet weak var Card1ImageView: UIImageView!
    @IBOutlet weak var Card2ImageView: UIImageView!
    @IBOutlet weak var Card3ImageView: UIImageView!
    
    // Play-Buttons

    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var PlayButtonTierart: UIButton!
    @IBOutlet weak var PlayButtonGröße: UIButton!
    
    
    
    //Hintergrund
    
    @IBOutlet weak var BackgroundImageView: UIImageView!
    
    
    
    //CountdownLabel
    @IBOutlet weak var CountdownFarbeLabel: UILabel!
    @IBOutlet weak var CountdownTierartLabel: UILabel!
    @IBOutlet weak var CountdownSizeLabel: UILabel!
    
    
    //Scores
    @IBOutlet weak var FarbeScoreLabel: UILabel!
    var FarbeScore:Int = 0
    
    @IBOutlet weak var TierartScoreLabel: UILabel!
    var TierartScore:Int = 0
    
    @IBOutlet weak var SizeScoreLabel: UILabel!
    var SizeScore = 0
    
    
    
    //Variablen um Kartennamen zugänglich zu machen für if-Funktionen
    var Card1 = String?("")
    var Card2 = String?("")
    var Card3 = String?("")
    var House = String?("")
    
    let imageRestart = UIImage(named: "RestartButtonIconKopie.png")
    

    
    // Countdown
    
    var Countdown = 90
    
    func TimeIsUp () {
        
        if (Countdown > 0) {
            print("\(Countdown)")
            Countdown -= 1
        }
        
        else {
            
        self.HouseImageView.image = UIImage(named: "FamilyDanke")
        CountdownFarbeLabel.text = String("")
        }
    }
    
    func TimeIsUpTierart () {
        
        if (Countdown > 0) {
            print("\(Countdown)")
            Countdown -= 1
        }
            
        else {
            
            self.HouseImageView.image = UIImage(named: "FamilyDanke")
            CountdownTierartLabel.text = String("")
        }
    }
    
    func TimeIsUpSize () {
        
        if (Countdown > 0) {
            print("\(Countdown)")
            Countdown -= 1
        }
            
        else {
            
            self.HouseImageView.image = UIImage(named: "FamilyDanke")
            CountdownSizeLabel.text = String("")
        }
    }
    
    //Sounds und Abspielfunktion
    
    var SoundPlayer = AVAudioPlayer()
    
    let Card1SoundURL =  Bundle.main.url(forResource: "1SchnellMollC_KatzeGroßBlau", withExtension: "wav")!
    let Card2SoundURL =  Bundle.main.url(forResource: "2SchnellMollEb_KatzeGroßBraun", withExtension: "wav")!
    let Card3SoundURL =  Bundle.main.url(forResource: "3SchnellMollF_KatzeGroßGrün", withExtension: "wav")!
    let Card4SoundURL =  Bundle.main.url(forResource: "4SchnellMollGes_KatzeGroßGelb", withExtension: "wav")!
    let Card5SoundURL =  Bundle.main.url(forResource: "5SchnellDurC_KatzeKleinBlau", withExtension: "wav")!
    let Card6SoundURL =  Bundle.main.url(forResource: "6SchnellDurEB_KatzeKleinBraun", withExtension: "wav")!
    let Card7SoundURL =  Bundle.main.url(forResource: "7SchnellDurF_KatzeKleinGrün", withExtension: "wav")!
    let Card8SoundURL =  Bundle.main.url(forResource: "8SchnellDurGes_KatzeKleinGelb", withExtension: "wav")!
    let Card9SoundURL =  Bundle.main.url(forResource: "9LangsamMollC_HundGroßBlau", withExtension: "wav")!
    let Card10SoundURL =  Bundle.main.url(forResource: "10LangsamMollEb_HundGroßBraun", withExtension: "wav")!
    let Card11SoundURL =  Bundle.main.url(forResource: "11LangsamMollF_HundGroßGrün", withExtension: "wav")!
    let Card12SoundURL =  Bundle.main.url(forResource: "12LangsamMollGes_HundGroßGelb", withExtension: "wav")!
    let Card13SoundURL =  Bundle.main.url(forResource: "13LangsamDurC_HundKleinBlau", withExtension: "wav")!
    let Card14SoundURL =  Bundle.main.url(forResource: "14LangsamDurEb_HundKleinBraun", withExtension: "wav")!
    let Card15SoundURL =  Bundle.main.url(forResource: "15LangsamDurF_HundKleinGrün", withExtension: "wav")!
    let Card16SoundURL =  Bundle.main.url(forResource: "16LangsamDurGes_HundKleinGelb", withExtension: "wav")!
    let SoundWhenWrongURL = Bundle.main.url(forResource: "SoundWhenWrong", withExtension: "wav")!
    
    func Card1Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card1SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card2Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card2SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card3Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card3SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card4Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card4SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card5Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card5SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card6Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card6SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card7Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card7SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card8Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card8SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card9Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card9SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card10Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card10SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card11Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card11SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card12Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card12SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card13Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card13SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card14Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card14SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card15Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card15SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func Card16Sound() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: Card16SoundURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
    }
    
    func SoundWhenWrong() throws {
        SoundPlayer = try AVAudioPlayer(contentsOf: SoundWhenWrongURL, fileTypeHint: "wav")
        SoundPlayer.prepareToPlay()
        SoundPlayer.play()
        
    }















    
    
    
    
    
    //MARK: Karten neu ausgeben falls richtig oder falsch gespielt
    
    func NewCards() {
        
        // Randomisierte Nummern für Karten und Häuser
        let RandomNumber1 = arc4random_uniform(16)+1
        let RandomNumber2 = arc4random_uniform(16)+1
        let RandomNumber3 = arc4random_uniform(16)+1
        let RandomNumber4 = arc4random_uniform(16)+1
        
        //Erstellen der Namen von Karten und Häusern mit Zahl dazu
        let FirstCardString = String(format: "Card%i", RandomNumber1)
        let SecondCardString = String(format: "Card%i", RandomNumber2)
        let ThirdCardString = String(format: "Card%i", RandomNumber3)
        let HouseString = String(format: "House%i", RandomNumber4)
        
        
        //UIImages mit randomisiertem Bild füllen
        self.Card1ImageView.image = UIImage(named: FirstCardString)
        self.Card2ImageView.image = UIImage(named: SecondCardString)
        self.Card3ImageView.image = UIImage(named: ThirdCardString)
        self.HouseImageView.image = UIImage(named: HouseString)
        
        self.Card1 = String(FirstCardString)
        self.Card2 = String(SecondCardString)
        self.Card3 = String(ThirdCardString)
        self.House = String(HouseString)
        
        if HouseString == "House1" {
            try! Card1Sound()
        }
        else if HouseString == "House2" {
            try! Card2Sound()
        }
        else if HouseString == "House3" {
            try! Card3Sound()
        }
        else if HouseString == "House4" {
            try! Card4Sound()
        }
        else if HouseString == "House5" {
            try! Card5Sound()
        }
        else if HouseString == "House6" {
            try! Card6Sound()
        }
        else if HouseString == "House7" {
            try! Card7Sound()
        }
        else if HouseString == "House8" {
            try! Card8Sound()
        }
        else if HouseString == "House9" {
            try! Card9Sound()
        }
        else if HouseString == "House10" {
            try! Card10Sound()
        }
        else if HouseString == "House11" {
            try! Card11Sound()
        }
        else if HouseString == "House12" {
            try! Card12Sound()
        }
        else if HouseString == "House13" {
            try! Card13Sound()
        }
        else if HouseString == "House14" {
            try! Card14Sound()
        }
        else if HouseString == "House15" {
            try! Card15Sound()
        }
        else if HouseString == "House16" {
            try! Card16Sound()
        }
        else {
            
        }
        
        
        
        
        
        
    }

    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    

    
    
    
    
        
    
    
    //MARK: PlayButton
    @IBAction func PlayTapped(_ sender: UIButton) {
        //PlayButton muss Sowohl Tierkarten als auch Häuser randomisiert verteilen
        
        
        // Randomisierte Nummern für Karten und Häuser
        let RandomNumber1 = arc4random_uniform(16)+1
        let RandomNumber2 = arc4random_uniform(16)+1
        let RandomNumber3 = arc4random_uniform(16)+1
        let RandomNumber4 = arc4random_uniform(16)+1
        
        //Erstellen der Namen von Karten und Häusern mit Zahl dazu
        let FirstCardString = String(format: "Card%i", RandomNumber1)
        let SecondCardString = String(format: "Card%i", RandomNumber2)
        let ThirdCardString = String(format: "Card%i", RandomNumber3)
        let HouseString = String(format: "House%i", RandomNumber4)
        
        
        //UIImages mit Randomisiertem Bild füllen
        self.Card1ImageView.image = UIImage(named: FirstCardString)
        self.Card2ImageView.image = UIImage(named: SecondCardString)
        self.Card3ImageView.image = UIImage(named: ThirdCardString)
        self.HouseImageView.image = UIImage(named: HouseString)
        
        self.Card1 = String(FirstCardString)
        self.Card2 = String(SecondCardString)
        self.Card3 = String(ThirdCardString)
        self.House = String(HouseString)
        
        //Playbutton mit neuem "Bild" - Reload
        
        self.PlayButton.setImage(imageRestart, for: UIControlState())
        
        //Timer starten
        
        if Countdown == (90) {
        
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.TimeIsUp), userInfo: nil, repeats: true)
        }
        
        else {
            
        }

        if HouseString == "House1" {
            try! Card1Sound()
        }
        else if HouseString == "House2" {
            try! Card2Sound()
        }
        else if HouseString == "House3" {
            try! Card3Sound()
        }
        else if HouseString == "House4" {
            try! Card4Sound()
        }
        else if HouseString == "House5" {
            try! Card5Sound()
        }
        else if HouseString == "House6" {
            try! Card6Sound()
        }
        else if HouseString == "House7" {
            try! Card7Sound()
        }
        else if HouseString == "House8" {
            try! Card8Sound()
        }
        else if HouseString == "House9" {
            try! Card9Sound()
        }
        else if HouseString == "House10" {
            try! Card10Sound()
        }
        else if HouseString == "House11" {
            try! Card11Sound()
        }
        else if HouseString == "House12" {
            try! Card12Sound()
        }
        else if HouseString == "House13" {
            try! Card13Sound()
        }
        else if HouseString == "House14" {
            try! Card14Sound()
        }
        else if HouseString == "House15" {
            try! Card15Sound()
        }
        else if HouseString == "House16" {
            try! Card16Sound()
        }
        else {
            
        }

        
        }
   
    
    // PlayButtonTierart --------------------------------------------------------------
    
    @IBAction func PlayButtonTierartTapped(_ sender: UIButton) {
        
        // Randomisierte Nummern für Karten und Häuser
        let RandomNumber1 = arc4random_uniform(16)+1
        let RandomNumber2 = arc4random_uniform(16)+1
        let RandomNumber3 = arc4random_uniform(16)+1
        let RandomNumber4 = arc4random_uniform(16)+1
        
        //Erstellen der Namen von Karten und Häusern mit Zahl dazu
        let FirstCardString = String(format: "Card%i", RandomNumber1)
        let SecondCardString = String(format: "Card%i", RandomNumber2)
        let ThirdCardString = String(format: "Card%i", RandomNumber3)
        let HouseString = String(format: "House%i", RandomNumber4)
        
        
        //UIImages mit Randomisiertem Bild füllen
        self.Card1ImageView.image = UIImage(named: FirstCardString)
        self.Card2ImageView.image = UIImage(named: SecondCardString)
        self.Card3ImageView.image = UIImage(named: ThirdCardString)
        self.HouseImageView.image = UIImage(named: HouseString)
        
        self.Card1 = String(FirstCardString)
        self.Card2 = String(SecondCardString)
        self.Card3 = String(ThirdCardString)
        self.House = String(HouseString)
        
        //Playbutton mit neuem "Bild" - Reload
        
        self.PlayButtonTierart.setImage(imageRestart, for: UIControlState())
        
        //Timer starten
        
        if Countdown == (90) {
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.TimeIsUpTierart), userInfo: nil, repeats: true)
        }
            
        else {
            
        }
        
        
        if HouseString == "House1" {
            try! Card1Sound()
        }
        else if HouseString == "House2" {
            try! Card2Sound()
        }
        else if HouseString == "House3" {
            try! Card3Sound()
        }
        else if HouseString == "House4" {
            try! Card4Sound()
        }
        else if HouseString == "House5" {
            try! Card5Sound()
        }
        else if HouseString == "House6" {
            try! Card6Sound()
        }
        else if HouseString == "House7" {
            try! Card7Sound()
        }
        else if HouseString == "House8" {
            try! Card8Sound()
        }
        else if HouseString == "House9" {
            try! Card9Sound()
        }
        else if HouseString == "House10" {
            try! Card10Sound()
        }
        else if HouseString == "House11" {
            try! Card11Sound()
        }
        else if HouseString == "House12" {
            try! Card12Sound()
        }
        else if HouseString == "House13" {
            try! Card13Sound()
        }
        else if HouseString == "House14" {
            try! Card14Sound()
        }
        else if HouseString == "House15" {
            try! Card15Sound()
        }
        else if HouseString == "House16" {
            try! Card16Sound()
        }
        else {
            
        }
        
        
    }

    
    
    //PlayButtonGröße -------------------------------------------------------------
    
    
    @IBAction func PlayButtonSizeTapped(_ sender: UIButton) {
        
        // Randomisierte Nummern für Karten und Häuser
        let RandomNumber1 = arc4random_uniform(16)+1
        let RandomNumber2 = arc4random_uniform(16)+1
        let RandomNumber3 = arc4random_uniform(16)+1
        let RandomNumber4 = arc4random_uniform(16)+1
        
        //Erstellen der Namen von Karten und Häusern mit Zahl dazu
        let FirstCardString = String(format: "Card%i", RandomNumber1)
        let SecondCardString = String(format: "Card%i", RandomNumber2)
        let ThirdCardString = String(format: "Card%i", RandomNumber3)
        let HouseString = String(format: "House%i", RandomNumber4)
        
        
        //UIImages mit Randomisiertem Bild füllen
        self.Card1ImageView.image = UIImage(named: FirstCardString)
        self.Card2ImageView.image = UIImage(named: SecondCardString)
        self.Card3ImageView.image = UIImage(named: ThirdCardString)
        self.HouseImageView.image = UIImage(named: HouseString)
        
        self.Card1 = String(FirstCardString)
        self.Card2 = String(SecondCardString)
        self.Card3 = String(ThirdCardString)
        self.House = String(HouseString)
        
        //Playbutton mit neuem "Bild" - Reload
        
        self.PlayButtonGröße.setImage(imageRestart, for: UIControlState())
        
        //Timer starten
        
        if Countdown == (90) {
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.TimeIsUpSize), userInfo: nil, repeats: true)
        }
            
        else {
            
        }
        
        if HouseString == "House1" {
            try! Card1Sound()
        }
        else if HouseString == "House2" {
            try! Card2Sound()
        }
        else if HouseString == "House3" {
            try! Card3Sound()
        }
        else if HouseString == "House4" {
            try! Card4Sound()
        }
        else if HouseString == "House5" {
            try! Card5Sound()
        }
        else if HouseString == "House6" {
            try! Card6Sound()
        }
        else if HouseString == "House7" {
            try! Card7Sound()
        }
        else if HouseString == "House8" {
            try! Card8Sound()
        }
        else if HouseString == "House9" {
            try! Card9Sound()
        }
        else if HouseString == "House10" {
            try! Card10Sound()
        }
        else if HouseString == "House11" {
            try! Card11Sound()
        }
        else if HouseString == "House12" {
            try! Card12Sound()
        }
        else if HouseString == "House13" {
            try! Card13Sound()
        }
        else if HouseString == "House14" {
            try! Card14Sound()
        }
        else if HouseString == "House15" {
            try! Card15Sound()
        }
        else if HouseString == "House16" {
            try! Card16Sound()
        }
        else {
            
        }
        
        
    

        
    }
    
    
    
    
    
    
    
    
    
    
    //MARK: Actions------------------------------------------------------------
    //Hier die gesture-controller einfügen, sortiert nach Spieloption
    
    
    
    //Modus Farbe------------------------
    
        
    
    //Card1------------
    
    
    @IBAction func FarbeCard1SwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        
        //Farbe Blau
        if Card1 == "Card1" && House == "House1" {
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
            
            
        }
            
            
        else if Card1 == "Card1" && House == "House5" {
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card1" && House == "House13" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card5" && House == "House9" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card1 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House5" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House1" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        //Farbe Braun
            
        
            
        else if Card1 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card2" && House == "House14" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card6" && House == "House10" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card10" && House == "House6" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card14" && House == "House2" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
        // Farbe Grün


        else if Card1 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card3" && House == "House15" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card7" && House == "House11" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card11" && House == "House7" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card15" && House == "House3" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        //Farbe Gelb
            
        else if Card1 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card4" && House == "House16" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card8" && House == "House12" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card12" && House == "House8" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card16" && House == "House4" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card16" && House == "House8" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card16" && House == "House12" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card1 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }


            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
        
    }
    
    
    
    
    
    
    
    
    //Card2------------
    
    
    @IBAction func FarbeCard2SwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        //Farbe Blau
        if Card2 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card1" && House == "House5" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card1" && House == "House13" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card5" && House == "House9" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card2 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House5" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House1" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Farbe Braun
            
            
            
        else if Card2 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House14" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House10" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House6" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House2" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
            // Farbe Grün
            
            
        else if Card2 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House15" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House11" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House7" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House3" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Farbe Gelb
            
        else if Card2 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House16" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House12" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House8" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House4" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House8" {
            
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House12" {
            
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House16" {
            
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
        
    }
        
        
    
    
    
    
    //Card3------------
    
    
    @IBAction func FarbeCard3SwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        //Farbe Blau
        if Card3 == "Card1" && House == "House1" {
            
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card1" && House == "House5" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card1" && House == "House13" {
            
            try! Card1Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card5" && House == "House9" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
        else if Card3 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House5" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House1" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Farbe Braun
            
            
            
        else if Card3 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House14" {
            
            try! Card2Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House10" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House6" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House2" {
            
            try! Card10Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
            // Farbe Grün
            
            
        else if Card3 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House15" {
            
            try! Card3Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House11" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House7" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House3" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Farbe Gelb
            
        else if Card3 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House16" {
            
            try! Card4Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House12" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House8" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House4" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House8" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House12" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.FarbeScore += 1
            self.FarbeScoreLabel.text = String (self.FarbeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
        
    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //Modus Tierart------------------------
    
    
    //Card1----------
    @IBAction func SwipeTierartCard1(_ sender: UISwipeGestureRecognizer) {
        
        
        //Katzen--------
        if Card1 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House5" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House6" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House7" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House8" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House5" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House7" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House8" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House5" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House6" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House8" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
    
        else if Card1 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House5" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House6" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House7" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House2" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House3" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House4" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House1" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House3" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House4" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House1" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House2" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House4" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House1" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House2" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House3" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
            
            
            
        //Hunde -----------
        
        else if Card1 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House14" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House15" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House16" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House13" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House15" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House16" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House13" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House14" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House16" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House13" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House14" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House15" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House10" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House11" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House12" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House9" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House11" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House12" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House9" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House10" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House12" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House9" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House10" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House11" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House12" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    //Card2----------
    @IBAction func SwipeTierartCard2(_ sender: UISwipeGestureRecognizer) {
        
        
        
        //Katzen--------
        if Card2 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House5" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House6" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House7" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House8" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House5" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House7" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House8" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House5" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House6" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House8" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House5" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House6" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House7" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House2" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House3" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House4" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House1" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House3" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House4" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House1" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House2" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House4" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House1" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House2" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House3" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
            
            //Hunde -----------
            
        else if Card2 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House14" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House15" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House16" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House13" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House15" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House16" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House13" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House14" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House16" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House13" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House14" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House15" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House10" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House11" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House12" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House9" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House11" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House12" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House9" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House10" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House12" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House9" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House10" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House11" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House12" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    //Card3-----------
    @IBAction func SwipeTierartCard3(_ sender: UISwipeGestureRecognizer) {
        
        
        //Katzen--------
        if Card3 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House5" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House6" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House7" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House8" {
            
            try! Card1Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House5" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House6" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House7" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House8" {
            
            try! Card2Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House5" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House6" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House7" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House8" {
            
            try! Card3Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House5" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House6" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House7" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House8" {
            
            try! Card4Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House1" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House2" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House3" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House4" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House1" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House2" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House3" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House4" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House1" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House2" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House3" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House4" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House1" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House2" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House3" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House4" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            
            
            //Hunde -----------
            
        else if Card3 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House13" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House14" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House15" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House16" {
            
            try! Card9Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House13" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House14" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House15" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House16" {
            
            try! Card10Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House13" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House14" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House15" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House16" {
            
            try! Card11Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House13" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House14" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House15" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House16" {
            
            try! Card12Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House9" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House10" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House11" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House12" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House9" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House10" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House11" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House12" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House9" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House10" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House11" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House12" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House9" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House10" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House11" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House12" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.TierartScore += 1
            self.TierartScoreLabel.text = String (self.TierartScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else {
            try! SoundWhenWrong()
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //Modus Größe--------------------------
        
    //Card1-----------
    @IBAction func SwipeSizeCard1(_ sender: UISwipeGestureRecognizer) {
        
        //Groß---------
        
        if Card1 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House10" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House11" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card1" && House == "House12" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House9" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House11" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card2" && House == "House12" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House9" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House10" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card3" && House == "House12" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House9" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House10" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card4" && House == "House11" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        else if Card1 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
    
        else if Card1 == "Card9" && House == "House2" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House3" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House4" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House1" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House3" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House4" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House1" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House2" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House4" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House1" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House2" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House3" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
            
        //Klein
            
        else if Card1 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House14" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House15" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card5" && House == "House16" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House13" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card6" && House == "House16" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House13" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House14" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card7" && House == "House16" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House13" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House14" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House15" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House6" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House7" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House8" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House5" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House7" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House8" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House5" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House6" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House8" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House5" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House6" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House7" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House8" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card1 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
        
        
        
    }
    
    //Card2-----------
    @IBAction func SwipeSizeCard2(_ sender: UISwipeGestureRecognizer) {
        
        //Groß---------
        
        if Card2 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House10" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House11" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card1" && House == "House12" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House9" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House11" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card2" && House == "House12" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House9" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House10" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card3" && House == "House12" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House9" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House10" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card4" && House == "House11" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        else if Card2 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House2" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House3" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House4" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House1" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House3" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House4" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House1" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House2" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House4" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House1" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House2" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House3" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Klein
            
        else if Card2 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House14" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House15" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card5" && House == "House16" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House13" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card2 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card6" && House == "House16" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House13" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House14" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card7" && House == "House16" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House13" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House14" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House15" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House6" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House7" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House8" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House5" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House7" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House8" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House5" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House6" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House8" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        
        else if Card2 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House5" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House6" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House7" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House8" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card2 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
            
        }
    }
    
    //Card3-----------
    @IBAction func SwipeSizeCard3(_ sender: UISwipeGestureRecognizer) {
        
        //Groß---------
        
        if Card3 == "Card1" && House == "House1" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House2" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House3" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House4" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House9" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House10" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House11" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card1" && House == "House12" {
            
            try! Card1Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House1" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House2" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House3" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House4" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House9" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House10" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House11" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card2" && House == "House12" {
            
            try! Card2Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House1" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House2" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House3" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House4" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House9" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House10" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House11" {
            
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card3" && House == "House12" {
        
            try! Card3Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House1" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House2" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House3" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House4" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House9" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House10" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card4" && House == "House11" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
        else if Card3 == "Card4" && House == "House12" {
            
            try! Card4Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House1" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House2" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House3" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House4" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House9" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House10" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House11" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card9" && House == "House12" {
            
            try! Card9Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House1" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House2" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House3" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House4" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House9" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House10" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House11" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card10" && House == "House12" {
            
            try! Card10Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House1" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House2" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House3" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House4" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House9" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House10" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House11" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card11" && House == "House12" {
            
            try! Card11Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House1" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House2" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House3" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House4" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House9" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House10" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House11" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card12" && House == "House12" {
            
            try! Card12Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
            
            //Klein
            
        else if Card3 == "Card5" && House == "House5" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House6" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House7" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House8" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House13" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House14" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House15" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card5" && House == "House16" {
            
            try! Card5Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House5" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House6" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House7" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House8" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House13" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House14" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card6" && House == "House16" {
            
            try! Card6Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House5" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House6" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House7" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House8" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House13" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House14" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House15" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card7" && House == "House16" {
            
            try! Card7Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House5" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House6" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House7" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House8" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House13" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House14" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House15" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card8" && House == "House16" {
            
            try! Card8Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House5" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House6" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House7" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House8" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House13" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House14" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House15" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card13" && House == "House16" {
            
            try! Card13Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House5" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House6" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House7" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House8" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House13" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House14" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House15" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card14" && House == "House16" {
            
            try! Card14Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House5" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House6" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House7" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House8" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House13" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House14" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House15" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card15" && House == "House16" {
            
            try! Card15Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House5" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House6" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House7" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House8" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House13" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House14" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House15" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else if Card3 == "Card16" && House == "House16" {
            
            try! Card16Sound()
            self.SizeScore += 1
            self.SizeScoreLabel.text = String (self.SizeScore)
            Thread.sleep(forTimeInterval: 1.5)
            self.NewCards()
        }
            
        else {
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            try! SoundWhenWrong()
        }
        
    }
    
        
}


