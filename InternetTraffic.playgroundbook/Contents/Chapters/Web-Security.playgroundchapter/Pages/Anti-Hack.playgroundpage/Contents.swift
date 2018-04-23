//#-hidden-code
import UIKit
import PlaygroundSupport
import AudioToolbox
//#-end-hidden-code
/*:
 Notice: This Page Contains SoundEffects, 🔊 **Turn up the Volume** 🔊 to Experience.
 - - -
 ## How to Prevent Hacking ?
 
 1. Security [Encryption](glossary://Encryption)
 
    - After Encryption, All the [Files](glossary://Files) are Unreadable without 'Encryption Keys'.
 
    - If Hackers Get the [Files](glossary://Files), They Cannot Decipher it Easily.
 
 2. Upgrade To [HTTPS](glossary://HTTPS) Protocal
 
    - All Communications and Data Transfer between User's Devices and  Websites are Encrypted.
 
    - Uses [SSL](glossary://SSL) or [TLS](glossary://TLS), Both Use Asymmetric Public Key Infrastructure(PKI) system.
 
    - PKI is Harder to be Deciphered.
 
 */
//#-hidden-code
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        let backgroundView = UIImageView(image: UIImage(named: "BG1.png"))
        backgroundView.contentMode = .center
        view.addSubview(backgroundView)
        applyParallax(onView: backgroundView, withmagnitude: 50)
        
        let arrowBaseCoorX : CGFloat = 80
        let arrowBaseCoorY : CGFloat = 460
        let datacircleOriginalSize : CGFloat = 22
        
        let server = UIImageView(frame: CGRect(x: 126, y: 10, width: 260, height: 210))
        server.image = UIImage(named: "Server1.png")
        
        let user_device = UIImageView(frame:CGRect(x:156, y:530, width: 200, height:110))
        user_device.image = UIImage(named:"gallery_hw_large_2x.png")
        
        
        
        var transferArrow1 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY, width: 30, height:30))
        transferArrow1.textColor = UIColor.lightGray
        transferArrow1.text = "👆"
        view.addSubview(transferArrow1)
        applyParallax(onView: transferArrow1, withmagnitude: -30)
        
        var transferArrow2 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY-60, width: 30, height:30))
        transferArrow2.textColor = UIColor.lightGray
        transferArrow2.text = "👆"
        view.addSubview(transferArrow2)
        applyParallax(onView: transferArrow2, withmagnitude: -30)
        
        var transferArrow3 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY-120, width: 30, height:30))
        transferArrow3.textColor = UIColor.lightGray
        transferArrow3.text = "👆"
        view.addSubview(transferArrow3)
        applyParallax(onView: transferArrow3, withmagnitude: -30)
        
        let animator_transferArrow1 = UIViewPropertyAnimator(duration: 1.6, curve: .easeOut) {
            
            transferArrow1.alpha = 0.0
            transferArrow1.frame = transferArrow1.frame.offsetBy(dx: 0, dy: -180)
            
        }
        animator_transferArrow1.startAnimation(afterDelay:0.3)
        
        let animator_transferArrow2 = UIViewPropertyAnimator(duration: 1.4, curve: .easeOut) {
            
            transferArrow2.alpha = 0.0
            transferArrow2.frame = transferArrow2.frame.offsetBy(dx: 0, dy: -100)
            
        }
        animator_transferArrow2.startAnimation(afterDelay:0.5)
        
        
        let animator_transferArrow3 = UIViewPropertyAnimator(duration: 1.2, curve: .easeOut) {
            
            transferArrow3.alpha = 0.0
            transferArrow3.frame = transferArrow3.frame.offsetBy(dx: 0, dy: -60)
            
        }
        animator_transferArrow3.startAnimation(afterDelay:1)
        
        
        
        
        
        let uptoDownPosition = 240
        var transferArrow4 = UILabel(frame:CGRect(x:400, y: uptoDownPosition, width: 30, height:30))
        transferArrow4.textColor = UIColor.lightGray
        transferArrow4.text = "👇"
        view.addSubview(transferArrow4)
        applyParallax(onView: transferArrow4, withmagnitude: -30)
        
        var transferArrow5 = UILabel(frame:CGRect(x:400, y: uptoDownPosition+60, width: 30, height:30))
        transferArrow5.textColor = UIColor.lightGray
        transferArrow5.text = "👇"
        view.addSubview(transferArrow5)
        applyParallax(onView: transferArrow5, withmagnitude: -30)
        
        var transferArrow6 = UILabel(frame:CGRect(x:400, y: uptoDownPosition+120, width: 30, height:30))
        transferArrow6.textColor = UIColor.lightGray
        transferArrow6.text = "👇"
        view.addSubview(transferArrow6)
        applyParallax(onView: transferArrow6, withmagnitude: -30)
        
        let animator_transferArrow4 = UIViewPropertyAnimator(duration: 1.6, curve: .easeOut) {
            
            transferArrow4.alpha = 0.0
            transferArrow4.frame = transferArrow4.frame.offsetBy(dx: 0, dy: 180)
            
        }
        animator_transferArrow4.startAnimation(afterDelay:5.0)
        
        let animator_transferArrow5 = UIViewPropertyAnimator(duration: 1.4, curve: .easeOut) {
            
            transferArrow5.alpha = 0.0
            transferArrow5.frame = transferArrow5.frame.offsetBy(dx: 0, dy: 100)
            
        }
        animator_transferArrow5.startAnimation(afterDelay:5.2)
        
        
        let animator_transferArrow6 = UIViewPropertyAnimator(duration: 1.2, curve: .easeOut) {
            
            transferArrow6.alpha = 0.0
            transferArrow6.frame = transferArrow6.frame.offsetBy(dx: 0, dy: 60)
            
        }
        animator_transferArrow6.startAnimation(afterDelay:5.7)
        
        
        
        var transferLabel = UILabel(frame:CGRect(x:60, y: 500, width:120, height:20))
        transferLabel.textColor = UIColor.gray
        transferLabel.text = "Request"
        transferLabel.font = UIFont(name: "American Typewriter", size: 20)
        view.addSubview(transferLabel)
        applyParallax(onView: transferLabel, withmagnitude: -40)
        
        let animator_transferLabel = UIViewPropertyAnimator(duration:2.1, curve: .easeInOut) {
            transferLabel.frame = transferLabel.frame.offsetBy(dx: 0, dy: -300)
        }
        animator_transferLabel.addCompletion { (position) in
            transferLabel.frame = transferLabel.frame.offsetBy(dx: -20, dy: 0)
            transferLabel.text = "✓Request"
        }
        animator_transferLabel.startAnimation()
        
        
        
        var transferLabel_2 = UILabel(frame:CGRect(x:360, y: 195, width: 120, height:30))
        transferLabel_2.textColor = #colorLiteral(red: 0.4912334681, green: 0.7198978662, blue: 0.9490961432, alpha: 1)
        
        transferLabel_2.text = "Key"
        transferLabel_2.font = UIFont(name: "American Typewriter", size: 20)
        view.addSubview(transferLabel_2)
        applyParallax(onView: transferLabel_2, withmagnitude: -40)
        
        let animator_transferLabel_2 = UIViewPropertyAnimator(duration:2.2, curve: .easeInOut) {
            transferLabel_2.frame = transferLabel_2.frame.offsetBy(dx: 0, dy: 290)
        }
        animator_transferLabel_2.addCompletion { (position) in
            transferLabel_2.frame = transferLabel_2.frame.offsetBy(dx: -20, dy: 0)
            transferLabel_2.text = "✓Key"
        }
        animator_transferLabel_2.startAnimation(afterDelay:5.0)
        
        let generatingKeys = UILabel(frame: CGRect(x: 360, y: 515, width: 200, height: 30))
        generatingKeys.text = "Generating Keys.."
        generatingKeys.font = UIFont(name: "American Typewriter", size: 20)
        generatingKeys.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        generatingKeys.alpha = 0.0
        
        let animator_generatingKeys = UIViewPropertyAnimator(duration:0.6, curve: .easeOut) {
            generatingKeys.alpha = 1.0
        }
        animator_generatingKeys.addCompletion { (position) in
            generatingKeys.frame = generatingKeys.frame.offsetBy(dx: -20, dy: 0)
            generatingKeys.text = "✓Generated Keys"
        }
        animator_generatingKeys.startAnimation(afterDelay: 8.0)
        view.addSubview(generatingKeys)
        applyParallax(onView: generatingKeys, withmagnitude: -40)
        
        //
        let encryptingKeys = UILabel(frame: CGRect(x: 360, y: 545, width: 220, height: 30))
        encryptingKeys.text = "Encrypting Keys.."
        encryptingKeys.font = UIFont(name: "American Typewriter", size: 20)
        encryptingKeys.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        encryptingKeys.alpha = 0.0
        
        var sendingKeysToS = UILabel(frame:CGRect(x:60, y: 500, width:200, height:20))
        sendingKeysToS.textColor = #colorLiteral(red: 0.9492822289, green: 0.8024404049, blue: 0.2407791913, alpha: 1)
        sendingKeysToS.text = "User's Keys"
        sendingKeysToS.font = UIFont(name: "American Typewriter", size: 20)
        sendingKeysToS.alpha = 0.0
        view.addSubview(sendingKeysToS)
        applyParallax(onView: sendingKeysToS, withmagnitude: -40)
        
        let animator_encryptingKeys = UIViewPropertyAnimator(duration:0.6, curve: .easeOut) {
            encryptingKeys.alpha = 1.0
            sendingKeysToS.alpha = 1.0
        }
        animator_encryptingKeys.addCompletion { (position) in
            encryptingKeys.frame = encryptingKeys.frame.offsetBy(dx: -20, dy: 0)
            encryptingKeys.text = "✓Encrypted Keys"
        }
        animator_encryptingKeys.startAnimation(afterDelay: 9.0)
        view.addSubview(encryptingKeys)
        applyParallax(onView: encryptingKeys, withmagnitude: -40)
        
        var encryptedFiles = UILabel(frame:CGRect(x:360, y: 195, width: 200, height:30))
        encryptedFiles.textColor = #colorLiteral(red: 0.8739114404, green: 0.3509777188, blue: 0.3139274418, alpha: 1)
        
        encryptedFiles.text = "Encrypted Files"
        encryptedFiles.font = UIFont(name: "American Typewriter", size: 20)
        encryptedFiles.alpha = 0.0
        view.addSubview(encryptedFiles)
        applyParallax(onView: encryptedFiles, withmagnitude: -40)
        
        let animator_sendingKeysToS = UIViewPropertyAnimator(duration:2.1, curve: .easeInOut) {
            sendingKeysToS.frame = sendingKeysToS.frame.offsetBy(dx: 0, dy: -270)
            encryptedFiles.alpha = 1.0
        }
        animator_sendingKeysToS.addCompletion { (position) in
            sendingKeysToS.frame = sendingKeysToS.frame.offsetBy(dx: -20, dy: 0)
            sendingKeysToS.text = "✓User's Keys"
        }
        animator_sendingKeysToS.startAnimation(afterDelay: 10.0)
        
        
        
        let animator_encryptedFiles = UIViewPropertyAnimator(duration:2.2, curve: .easeInOut) {
            encryptedFiles.frame = encryptedFiles.frame.offsetBy(dx: 0, dy: 260)
        }
        animator_encryptedFiles.addCompletion { (position) in
            encryptedFiles.frame = encryptedFiles.frame.offsetBy(dx: -20, dy: 0)
            encryptedFiles.text = "✓Encrypted Files"
        }
        animator_encryptedFiles.startAnimation(afterDelay:15.0)
        
        
        func datacircleAni(withColor: String, andOrient: Int, startingPointx : CGFloat, startingPointy: CGFloat, withStartDelay: Int) {
            let circleColor = "Playgrounds_DataPt_"+withColor
            var displace_circle : CGFloat = 300
            if andOrient == 0 {
                displace_circle = -280
                
            } else {
                displace_circle = 280
            }
            //Set up
            let datacircle1 = UIImageView(frame: CGRect(x:startingPointx, y:startingPointy, width: datacircleOriginalSize, height: datacircleOriginalSize))
            datacircle1.image = UIImage(named: circleColor)
            
            let datacircle2 = UIImageView(frame: CGRect(x:startingPointx, y:startingPointy, width: datacircleOriginalSize, height: datacircleOriginalSize))
            datacircle2.image = UIImage(named: circleColor)
            
            let datacircle3 = UIImageView(frame: CGRect(x:startingPointx, y:startingPointy, width: datacircleOriginalSize, height: datacircleOriginalSize))
            datacircle3.image = UIImage(named: circleColor)
            
            //data Circle Animation
            let animator_datac1 = UIViewPropertyAnimator(duration: 1.5, curve: .easeInOut) {
                datacircle1.frame = datacircle1.frame.offsetBy(dx: 0, dy: displace_circle)
            }
            view.addSubview(datacircle1)
            applyParallax(onView: datacircle1, withmagnitude: -60)
            animator_datac1.startAnimation(afterDelay:TimeInterval(withStartDelay))
            
            let animator_datac2 = UIViewPropertyAnimator(duration: 1.75, curve: .easeInOut) {
                datacircle2.frame = datacircle2.frame.offsetBy(dx: 0, dy: displace_circle)
                
            }
            view.addSubview(datacircle2)
            applyParallax(onView: datacircle2, withmagnitude: -60)
            animator_datac2.startAnimation(afterDelay:TimeInterval(withStartDelay))
            
            let animator_datac3 = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut) {
                datacircle3.frame = datacircle3.frame.offsetBy(dx: 0, dy: displace_circle)
            }
            view.addSubview(datacircle3)
            applyParallax(onView: datacircle3, withmagnitude: -60)
            animator_datac3.startAnimation(afterDelay:TimeInterval(withStartDelay))
            
            
            
            UIView.animate(withDuration: 2.0, delay: TimeInterval(withStartDelay) + 2, animations: { () -> Void in
                
                // ROTATE ANIMATION
                let rotate = CGAffineTransform(rotationAngle: 360)
                // SCALE ANIMATION
                let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
                // ROTATE AND SCALE ANIMATION
                datacircle3.transform = rotate.concatenating(scale)
            })
        }
        
        
        //0 is Down to Up, 1 is Up to Down
        datacircleAni(withColor: "Gray", andOrient: 0, startingPointx: 200, startingPointy: 480, withStartDelay: 0)
        
        datacircleAni(withColor: "Blue", andOrient: 1, startingPointx: 200, startingPointy: 200, withStartDelay: 5)
        
        datacircleAni(withColor: "Yellow", andOrient: 0, startingPointx: 270, startingPointy: 480, withStartDelay: 10)
        
        datacircleAni(withColor: "RedPink", andOrient: 1, startingPointx: 270, startingPointy: 200, withStartDelay: 15)
        
        //        let decoding = UILabel(frame: CGRect(x: 360, y: 515, width: 120, height: 30))
        //        decoding.text = "✓Decoded"
        //        decoding.font = UIFont(name: "American Typewriter", size: 20)
        //        decoding.textColor = #colorLiteral(red: 0.4912334681, green: 0.7198978662, blue: 0.9490961432, alpha: 1)
        //        decoding.alpha = 0.0
        //
        //        let animator_decoding = UIViewPropertyAnimator(duration:0.6, curve: .easeOut) {
        //            decoding.alpha = 1.0
        //        }
        //        animator_decoding.startAnimation(afterDelay: 8.0)
        //        view.addSubview(decoding)
        //        applyParallax(onView: decoding, withmagnitude: -50)
        //
        //        let decodedPage = UIImageView(frame: CGRect(x: 180, y: 535, width: 152, height: 92))
        //        decodedPage.image = UIImage(named: "wwdc18Page")
        //        decodedPage.alpha = 0.0
        //
        //        let animator_decoded = UIViewPropertyAnimator(duration:1.5, curve: .easeOut) {
        //            decodedPage.alpha = 1.0
        //        }
        //        animator_decoded.startAnimation(afterDelay: 9.0)
        
        var noticeSound = SystemSoundID()
        func returnSoundDetail() -> SystemSoundID {
            var soundID:SystemSoundID = 0
            let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "https_success" as CFString, "m4a" as CFString, nil)
            AudioServicesCreateSystemSoundID(soundURL!, &soundID)
            return soundID
        }
        noticeSound = returnSoundDetail()
        AudioServicesPlaySystemSound(noticeSound)
        
        let congLabel = UILabel(frame:CGRect(x:106, y: 400, width:300, height:40))
        congLabel.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        congLabel.font = UIFont(name: "American Typewriter", size: 30)
        view.addSubview(congLabel)
        applyParallax(onView: congLabel, withmagnitude: -70)
        congLabel.text = " Congratulations ! "
        congLabel.alpha = 0.0
        
        let successLabel = UILabel(frame:CGRect(x:106, y: 400, width:300, height:40))
        successLabel.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        successLabel.font = UIFont(name: "American Typewriter", size: 30)
        view.addSubview(successLabel)
        applyParallax(onView: successLabel, withmagnitude: -70)
        successLabel.text = " HTTPS Connected ! "
        successLabel.alpha = 0.0
        
        let animator_sucLabel = UIViewPropertyAnimator(duration:2.2, dampingRatio:0.2) {
            congLabel.alpha = 1.0
            successLabel.alpha = 1.0
            successLabel.center = CGPoint(x:260, y: 380)
            congLabel.center = CGPoint(x:260, y: 335)
        }
        animator_sucLabel.startAnimation(afterDelay: 18.0)
        
        let decodedPage = UIImageView(frame: CGRect(x: 180, y: 535, width: 152, height: 92))
        decodedPage.image = UIImage(named: "wwdc18Page")
        decodedPage.alpha = 0.0
        
        let animator_decoded = UIViewPropertyAnimator(duration:1.0, curve: .easeOut) {
            decodedPage.alpha = 1.0
        }
        animator_decoded.startAnimation(afterDelay: 18.0)
        
        view.addSubview(server)
        applyParallax(onView: server, withmagnitude: -50)
        view.addSubview(user_device)
        applyParallax(onView: user_device, withmagnitude: -50)
        view.addSubview(decodedPage)
        applyParallax(onView: decodedPage, withmagnitude: -50)
        
        self.view = view
        
        
    }
    func applyParallax(onView: UIView, withmagnitude: Double) {
        //X Axis
        let xAxisEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xAxisEffect.minimumRelativeValue = -withmagnitude
        xAxisEffect.maximumRelativeValue = withmagnitude
        
        //Y Axis
        let yAxisEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yAxisEffect.minimumRelativeValue = -withmagnitude
        yAxisEffect.maximumRelativeValue = withmagnitude
        
        let effectGroup = UIMotionEffectGroup()
        effectGroup.motionEffects = [xAxisEffect, yAxisEffect]
        
        onView.addMotionEffect(effectGroup)
    }
}
PlaygroundPage.current.liveView = MyViewController()
//#-end-hidden-code

