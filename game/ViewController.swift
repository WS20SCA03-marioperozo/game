//
//  ViewController.swift
//  game
//
//  Created by Mario Perozo on 5/11/20.
//  Copyright © 2020 Mario Perozo. All rights reserved.
//

import UIKit
import AVFoundation

//struct microbe {
//    let name: String;
//    let image: UIColor;
//}

//if v >= 1 && v <= 16 {
//picture.image = UIImage(named: "frame_\(v)")
//picture.image = UIImage(named: "frame_\(v+1)");
//v = v + 1

class ViewController: UIViewController {
    @IBOutlet weak var microbe1: UIImageView!
    @IBOutlet weak var microbe2: UIImageView!
    @IBOutlet weak var microbe3: UIImageView!
    @IBOutlet weak var microbe4: UIImageView!
    @IBOutlet weak var microbe5: UIImageView!
    @IBOutlet weak var microbe6: UIImageView!
    @IBOutlet weak var microbe7: UIImageView!
    @IBOutlet weak var microbe8: UIImageView!
    @IBOutlet weak var microbe9: UIImageView!
    @IBOutlet weak var microbe10: UIImageView!
    @IBOutlet weak var microbe11: UIImageView!
    @IBOutlet weak var microbe12: UIImageView!
    @IBOutlet weak var microbe13: UIImageView!
    @IBOutlet weak var microbe14: UIImageView!
    @IBOutlet weak var microbe15: UIImageView!
    @IBOutlet weak var microbe16: UIImageView!
    
    @IBOutlet weak var clorox1: UIImageView!
    @IBOutlet weak var clorox2: UIImageView!
    @IBOutlet weak var clorox3: UIImageView!
    @IBOutlet weak var clorox4: UIImageView!
    @IBOutlet weak var clorox5: UIImageView!
    @IBOutlet weak var clorox6: UIImageView!
    @IBOutlet weak var clorox7: UIImageView!
    @IBOutlet weak var clorox8: UIImageView!
    @IBOutlet weak var clorox9: UIImageView!
    @IBOutlet weak var clorox10: UIImageView!
    @IBOutlet weak var clorox11: UIImageView!
    @IBOutlet weak var clorox12: UIImageView!
    @IBOutlet weak var clorox13: UIImageView!
    @IBOutlet weak var clorox14: UIImageView!
    @IBOutlet weak var clorox15: UIImageView!
    @IBOutlet weak var clrox16: UIImageView!
    
    
    @IBOutlet weak var apprentice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Sounds taken from dklon at https://opengameart.org/content/laser-fire
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            if microbe1.frame.contains(point) {
                microbe1.center = point;
            }
            if clorox1.frame.contains(point) {
                clorox1.center = point;
            }
            if apprentice.frame.contains(point) {
                apprentice.center = point;
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        var audioPlayer: AVAudioPlayer = AVAudioPlayer();
        
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            if microbe1.frame.contains(point) {
                microbe1.center = point;
            }
            
            if clorox1.frame.contains(point) {
                clorox1.center = point;
            }
            if apprentice.frame.contains(point) {
                apprentice.center = point;
            }
            
            if clorox1.frame.intersects(apprentice.frame)  {
                
                let path: String = Bundle.main.path(forResource: "Achievement", ofType: "mp3")!;
                //print("path = \(path)");
                
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path));
                } catch {
                    print(error)
                }
                
                audioPlayer.numberOfLoops = 1;
                audioPlayer.volume = 1.0;
                audioPlayer.play();
                apprentice.alpha = 1;
                clorox1.isHidden = true;
            }
            
            if microbe1.frame.intersects(clorox1.frame) {
                
                let path: String = Bundle.main.path(forResource: "Achievement", ofType: "mp3")!;
                //print("path = \(path)");
                
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path));
                } catch {
                    print(error)
                }
                
                audioPlayer.numberOfLoops = 1;
                audioPlayer.volume = 1.0;
                audioPlayer.play();
                
                microbe1.isHidden = true;
                clorox1.isHidden = true;
            }
            
            if microbe1.frame.intersects(apprentice.frame)  {
                
                let path: String = Bundle.main.path(forResource: "Achievement", ofType: "mp3")!;
                //print("path = \(path)");
                
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path));
                } catch {
                    print(error)
                }
                
                audioPlayer.numberOfLoops = 1;
                audioPlayer.volume = 1.0;
                audioPlayer.play();
                
                apprentice.alpha = 0.1;
                microbe1.isHidden = true;
                
                
                
            }
            
            
        }
        
        
    }
    
}
