//
//  ViewController.swift
//  Story line -  pov you're the hero
//
//  Created by KOPPOLA GOKUL SAI on 15/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var option1Outlet: UIButton!
    @IBOutlet weak var option2Outlet: UIButton!
    @IBOutlet weak var storyOulet: UILabel!
    
    var storyb = StoryBrain()
    
    
   
                        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        storyOulet.text = storyb.getStory()
        option1Outlet.setTitle(storyb.getChoice1(choice: 1), for: .normal)
        option2Outlet.setTitle(storyb.getChoice1(choice: 2), for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        if (sender.currentTitle! == storyb.getChoice1(choice: 1))
        {
            storyb.changeStoryChoice(gotNum: 1)
        }
        if(sender.currentTitle! == storyb.getChoice1(choice: 2))
        {
            storyb.changeStoryChoice(gotNum: 2)
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func UpdateUI()
    {
        storyOulet.text = storyb.getStory()
        option1Outlet.setTitle(storyb.getChoice1(choice: 1), for: .normal)
        option2Outlet.setTitle(storyb.getChoice1(choice: 2), for: .normal)
    }
    
}

