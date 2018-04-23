//#-hidden-code
import UIKit
import PlaygroundSupport
import AudioToolbox
//#-end-hidden-code
/*:
 Notice: This Page Contains SoundEffects, 🔊 **Turn up the Volume** 🔊 to Experience.
 - - -
 ## Be a Hacker Here !
 
 1. You Have Pre-Built HTTP Connection.
 
 2. Try to fake a Web Server and Receive User's Request.
 
 3. Send Harmful [Files](glossary://Files) to User's Device.
 
 4. Control User's Device.
 
 - - -
 
 **For Viewer's Convenience,
   the Codes Have Been Pre-entered.**
 
 */
//#-hidden-code
class MyViewController : UIViewController {
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
    override func loadView() {
        let view = UIView()
        let backgroundView = UIImageView(image: UIImage(named: "BG1.png"))
        backgroundView.contentMode = .center
        view.addSubview(backgroundView)
        applyParallax(onView: backgroundView, withmagnitude: 50)
        
        var displaceX : CGFloat = 0
        let arrowBaseCoorX : CGFloat = 80
        let arrowBaseCoorY : CGFloat = 460
        let datacircleOriginalSize : CGFloat = 22
        
        let server = UIImageView(frame: CGRect(x: 126, y: 10, width: 260, height: 210))
        server.image = UIImage(named: "Server1.png")
        
        let user_device = UIImageView(frame:CGRect(x:156, y:530, width: 200, height:110))
        user_device.image = UIImage(named:"gallery_hw_large_2x.png")
        
        var transferLabel = UILabel(frame:CGRect(x:60, y: 500, width:120, height:20))
        transferLabel.textColor = UIColor.gray
        transferLabel.text = "Request"
        transferLabel.font = UIFont(name: "American Typewriter", size: 20)
        view.addSubview(transferLabel)
        applyParallax(onView: transferLabel, withmagnitude: -50)
        
        var transferLabel_2 = UILabel(frame:CGRect(x:380, y: 195, width: 120, height:30))
        transferLabel_2.textColor = #colorLiteral(red: 0.9193801284, green: 0.3822097182, blue: 0.3408029675, alpha: 1)
        
        transferLabel_2.text = "Files"
        transferLabel_2.font = UIFont(name: "American Typewriter", size: 20)
        view.addSubview(transferLabel_2)
        applyParallax(onView: transferLabel_2, withmagnitude: -50)
        
        var transferArrow1 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY, width: 30, height:30))
        transferArrow1.textColor = UIColor.lightGray
        transferArrow1.text = "👆"
        view.addSubview(transferArrow1)
        applyParallax(onView: transferArrow1, withmagnitude: -50)
        
        var transferArrow2 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY-60, width: 30, height:30))
        transferArrow2.textColor = UIColor.lightGray
        transferArrow2.text = "👆"
        view.addSubview(transferArrow2)
        applyParallax(onView: transferArrow2, withmagnitude: -50)
        
        var transferArrow3 = UILabel(frame:CGRect(x:arrowBaseCoorX, y: arrowBaseCoorY-120, width: 30, height:30))
        transferArrow3.textColor = UIColor.lightGray
        transferArrow3.text = "👆"//^⇡
        view.addSubview(transferArrow3)
        applyParallax(onView: transferArrow3, withmagnitude: -50)
        
        let animator_transferArrow1 = UIViewPropertyAnimator(duration: 1.6, curve: .easeOut) {
            
            transferArrow1.alpha = 0.0
            transferArrow1.frame = transferArrow1.frame.offsetBy(dx: 0, dy: -180)
            
        }
        
        
        let animator_transferArrow2 = UIViewPropertyAnimator(duration: 1.4, curve: .easeOut) {
            
            transferArrow2.alpha = 0.0
            transferArrow2.frame = transferArrow2.frame.offsetBy(dx: 0, dy: -100)
            
        }
        
        
        
        let animator_transferArrow3 = UIViewPropertyAnimator(duration: 1.2, curve: .easeOut) {
            
            transferArrow3.alpha = 0.0
            transferArrow3.frame = transferArrow3.frame.offsetBy(dx: 0, dy: -60)
            
        }
        
        
        
        let animator_transferLabel = UIViewPropertyAnimator(duration:2.1, curve: .easeInOut) {
            transferLabel.frame = transferLabel.frame.offsetBy(dx: 0, dy: -300)
        }
        animator_transferLabel.addCompletion { (position) in
            transferLabel.frame = transferLabel.frame.offsetBy(dx: -20, dy: 0)
            transferLabel.text = "✓Received"
        }
        
        
        
        let uptoDownPosition = 240
        var transferArrow4 = UILabel(frame:CGRect(x:400, y: uptoDownPosition, width: 30, height:30))
        transferArrow4.textColor = UIColor.lightGray
        transferArrow4.text = "👇"
        view.addSubview(transferArrow4)
        applyParallax(onView: transferArrow4, withmagnitude: -50)
        
        var transferArrow5 = UILabel(frame:CGRect(x:400, y: uptoDownPosition+60, width: 30, height:30))
        transferArrow5.textColor = UIColor.lightGray
        transferArrow5.text = "👇"
        view.addSubview(transferArrow5)
        applyParallax(onView: transferArrow5, withmagnitude: -50)
        
        var transferArrow6 = UILabel(frame:CGRect(x:400, y: uptoDownPosition+120, width: 30, height:30))
        transferArrow6.textColor = UIColor.lightGray
        transferArrow6.text = "👇"
        view.addSubview(transferArrow6)
        applyParallax(onView: transferArrow6, withmagnitude: -50)
        
        let animator_transferArrow4 = UIViewPropertyAnimator(duration: 1.6, curve: .easeOut) {
            
            transferArrow4.alpha = 0.0
            transferArrow4.frame = transferArrow4.frame.offsetBy(dx: 0, dy: 180)
            
        }
        
        
        let animator_transferArrow5 = UIViewPropertyAnimator(duration: 1.4, curve: .easeOut) {
            
            transferArrow5.alpha = 0.0
            transferArrow5.frame = transferArrow5.frame.offsetBy(dx: 0, dy: 100)
            
        }
        
        
        
        let animator_transferArrow6 = UIViewPropertyAnimator(duration: 1.2, curve: .easeOut) {
            
            transferArrow6.alpha = 0.0
            transferArrow6.frame = transferArrow6.frame.offsetBy(dx: 0, dy: 60)
            
        }
        
        
        let animator_transferLabel_2 = UIViewPropertyAnimator(duration:2.2, curve: .easeInOut) {
            transferLabel_2.frame = transferLabel_2.frame.offsetBy(dx: 0, dy: 290)
        }
        animator_transferLabel_2.addCompletion { (position) in
            transferLabel_2.frame = transferLabel_2.frame.offsetBy(dx: -20, dy: 0)
            transferLabel_2.text = "✓Received"
        }
        
        
        
        
        
        func datacircleAni(withColor: String, andOrient: Int, startingPointx : CGFloat, startingPointy: CGFloat, withStartDelay: Int) {
            let circleColor = "Playgrounds_DataPt_"+withColor
            var displace_circle : CGFloat = 300
            //    var startingPointx : CGFloat = 200
            //    var startingPointy : CGFloat = 490
            if andOrient == 0 {
                displace_circle = -280
                displaceX = 0
            } else {
                displace_circle = 280
                displaceX = -100
                //        startingPointx = 360
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
                datacircle1.frame = datacircle1.frame.offsetBy(dx: displaceX, dy: displace_circle)
            }
            view.addSubview(datacircle1)
            applyParallax(onView: datacircle1, withmagnitude: -50)
            animator_datac1.startAnimation(afterDelay:TimeInterval(withStartDelay))
            
            let animator_datac2 = UIViewPropertyAnimator(duration: 1.75, curve: .easeInOut) {
                datacircle2.frame = datacircle2.frame.offsetBy(dx: displaceX, dy: displace_circle)
                
            }
            view.addSubview(datacircle2)
            applyParallax(onView: datacircle2, withmagnitude: -50)
            animator_datac2.startAnimation(afterDelay:TimeInterval(withStartDelay))
            
            let animator_datac3 = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut) {
                datacircle3.frame = datacircle3.frame.offsetBy(dx: displaceX, dy: displace_circle)
            }
            view.addSubview(datacircle3)
            applyParallax(onView: datacircle3, withmagnitude: -50)
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
        
        
        //        animator_transferArrow2.startAnimation(afterDelay:0.5)
        
        //0 is Down to Up, 1 is Up to Down
        
        
        
        let decoding = UILabel(frame: CGRect(x: 360, y: 515, width: 120, height: 30))
        decoding.text = "✓Decoded"
        decoding.font = UIFont(name: "American Typewriter", size: 20)
        decoding.textColor = #colorLiteral(red: 0.9207233787, green: 0.3788781762, blue: 0.3403795958, alpha: 1)
        decoding.alpha = 0.0
        
        let animator_decoding = UIViewPropertyAnimator(duration:0.6, curve: .easeOut) {
            decoding.alpha = 1.0
        }
        
        view.addSubview(decoding)
        applyParallax(onView: decoding, withmagnitude: -50)
        
        
        let hackSk = UILabel(frame:CGRect(x:400, y:100, width:100, height:100))
        hackSk.text = "💀"
        hackSk.font = UIFont(name: "American Typewriter", size: 80)
        
        
        let decodedPage = UILabel(frame:CGRect(x:240, y: 550,width:40, height:40))
        decodedPage.text = "☠️"
        decodedPage.font = UIFont(name: "American Typewriter", size: 30)
        decodedPage.alpha = 0.0
        
        let animator_decoded = UIViewPropertyAnimator(duration:1.5, curve: .easeOut) {
            decodedPage.alpha = 1.0
        }
        
        
        
        var noticeSound = SystemSoundID()
        func returnSoundDetail() -> SystemSoundID {
            var soundID:SystemSoundID = 0
            let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "user&hacker" as CFString, "m4a" as CFString, nil)
            AudioServicesCreateSystemSoundID(soundURL!, &soundID)
            return soundID
        }
        noticeSound = returnSoundDetail()
        
        
        
        view.addSubview(server)
        applyParallax(onView: server, withmagnitude: -50)
        view.addSubview(user_device)
        applyParallax(onView: user_device, withmagnitude: -50)
        view.addSubview(hackSk)
        applyParallax(onView: hackSk, withmagnitude: -30)
        view.addSubview(decodedPage)
        applyParallax(onView: decodedPage, withmagnitude: -50)
        
        self.view = view
        
        var userSendRequestv = false
        var serverReceivingRequestv = false
        
        var userReceiveFilesv = false
        var userDecodeAndDisplayv = false
        var runningOk = true
        var hackerFakeServerv = false
        var hackerSendFilesv = false
        //0 for userSide, 1 for serverSide
        func forMissingProcess(atSide: Int) {
            var errorLabel = UILabel(frame:CGRect(x:106, y: 400, width:300, height:40))
            errorLabel.textColor = UIColor.red
            errorLabel.text = "Error!"
            errorLabel.font = UIFont(name: "American Typewriter", size: 30)
            view.addSubview(errorLabel)
            applyParallax(onView: errorLabel, withmagnitude: -70)
            
            if atSide == 0 {
                errorLabel.text = " User Side Error! "
            }
            if atSide == 1 {
                errorLabel.text = " Hacker Failed! "
            }
            let animator_errorLabel = UIViewPropertyAnimator(duration:2.2, dampingRatio:0.2) {
                errorLabel.center = CGPoint(x:260, y: 360)
            }
            animator_errorLabel.startAnimation()
            runningOk = false
        }
        
        func userSendRequest() {
            userSendRequestv = true
            
        }
        func serverReceivingRequest() {
            serverReceivingRequestv = true
        }
        
        func userReceiveFiles() {
            userReceiveFilesv = true
        }
        func userDecodeAndDisplay() {
            userDecodeAndDisplayv = true
        }
        func hackerFakeServer() {
            hackerFakeServerv = true
        }
        func hackerSendFiles() {
            hackerSendFilesv = true
        }
        
        func userToServer() {
            if userSendRequestv == true {
                datacircleAni(withColor: "Gray", andOrient: 0, startingPointx: 245, startingPointy: 480, withStartDelay: 0)
            } else if runningOk == true{
                forMissingProcess(atSide: 0)
                
            }
            if serverReceivingRequestv == true && runningOk == true {
                animator_transferArrow1.startAnimation(afterDelay:0.3)
                animator_transferArrow2.startAnimation(afterDelay:0.5)
                animator_transferArrow3.startAnimation(afterDelay:1)
                animator_transferLabel.startAnimation()
            } else if runningOk == true{
                forMissingProcess(atSide: 1)
                
            }
        }
        
        func hackerToUser() {
            if hackerSendFilesv == true && runningOk == true {
                datacircleAni(withColor: "RedPink", andOrient: 1, startingPointx: 350, startingPointy: 200, withStartDelay: 5)
            } else if runningOk == true{
                forMissingProcess(atSide: 1)
            }
            if userReceiveFilesv == true  && runningOk == true {
                animator_transferArrow4.startAnimation(afterDelay:5.0)
                animator_transferArrow5.startAnimation(afterDelay:5.2)
                animator_transferArrow6.startAnimation(afterDelay:5.7)
                animator_transferLabel_2.startAnimation(afterDelay:5.0)
            } else if runningOk == true{
                forMissingProcess(atSide: 0)
            }
        }
        
        func decodingProcess() {
            if userDecodeAndDisplayv == true  && runningOk == true {
                animator_decoding.startAnimation(afterDelay: 8.0)
                animator_decoded.startAnimation(afterDelay: 9.0)
                AudioServicesPlaySystemSound(noticeSound)
            } else if runningOk == true {
                forMissingProcess(atSide: 0)
            }
        }
        func fullAnimation() {
            //user to server
            userToServer()
            //server to user
            hackerToUser()
            //decode
            decodingProcess()
        }
        //#-end-hidden-code
        func hacker() {
            //#-editable-code Tap to enter code
            //Step 1
            hackerFakeServer()
            //#-end-editable-code
            //#-editable-code Tap to enter code
            //Step 2
            hackerSendFiles()
            //#-end-editable-code
        }
        
        func userSide() {
            //#-editable-code Tap to enter code
            userSendRequest()
            //#-end-editable-code
            //#-editable-code Tap to enter code
            userReceiveFiles()
            //#-end-editable-code
            //#-editable-code Tap to enter code
            userDecodeAndDisplay()
            //#-end-editable-code
        }
        func serverSide() {
            //#-editable-code Tap to enter code
            serverReceivingRequest()
            //#-end-editable-code
        }
        //#-hidden-code
        userSide()
        serverSide()
        hacker()
        fullAnimation()
        
    }
    
}
PlaygroundPage.current.liveView = MyViewController()

//#-end-hidden-code


