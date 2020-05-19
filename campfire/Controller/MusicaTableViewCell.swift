//
//  MusicaTableViewCell.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 15/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit
import AVKit
class MusicaTableViewCell: UITableViewCell {

    var player:AVAudioPlayer?
    var timer:Timer?
    
    
    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBOutlet weak var timeRight: UILabel!
    
     static let identifier = "tableCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
      
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  
        
    }
    
    func setupPlayer(musicaName:String) {
           let sound = Bundle.main.path(forResource: musicaName, ofType: "mp3")
           do {
               player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
           } catch  {
               fatalError("Audio Not Found")
           }
       }
    
    
    @IBAction func updatePlayPauseButton(_ sender: Any) {
        guard let player = player else { return }
               if player.isPlaying {
                   player.pause()
                   playPauseButton.setImage(UIImage(named: "play"), for: .normal)
               } else {
                   player.play()
                   playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
               }
    }
    @IBAction func scrubbing(_ sender: UISlider) {
        player?.currentTime = Float64(slider.value)
        player?.play()
    }
    
    @objc func updatePlayer() {
           guard let player = player else { return }
           slider.value = Float(player.currentTime)
           let remainingTimeInSeconds = player.duration - player.currentTime
           timeLeft.text = getFormattedTime(timeInterval: player.currentTime)
           timeRight.text = "-" + getFormattedTime(timeInterval: remainingTimeInSeconds)
           if !player.isPlaying {
               playPauseButton.setImage(UIImage(named: "play"), for: .normal)
           } else {
               playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
           }
       }
       
       func getFormattedTime(timeInterval: TimeInterval) -> String {
           let mins = timeInterval / 60
           let secs = timeInterval.truncatingRemainder(dividingBy: 60)
           let timeformatter = NumberFormatter()
           timeformatter.minimumIntegerDigits = 2
           timeformatter.minimumFractionDigits = 0
           timeformatter.roundingMode = .down
           guard let minsStr = timeformatter.string(from: NSNumber(value: mins)), let secsStr = timeformatter.string(from: NSNumber(value: secs)) else {
               return ""
           }
           return "\(minsStr):\(secsStr)"
       }
       
    
    
        func viewDidAppear() {
           guard let player = player else { return }
           slider.value = 0.0
           slider.maximumValue = Float(player.duration)
           timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(self.updatePlayer), userInfo: nil, repeats: true)
            
            imagem.layer.cornerRadius = 10
          
            
       }

    
}
