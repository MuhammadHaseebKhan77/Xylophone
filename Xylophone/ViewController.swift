
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.alpha=0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { //DispatchQueue is a class in Swift that manages the execution of tasks or blocks of code concurrently or sequentially. It provides a way to control the timing and execution of tasks in a multithreaded environment.asyncAfter is a method provided by DispatchQueue in Swift that allows you to schedule the execution of a block of code after a specified delay.The asyncAfter method takes two parameters:deadline: It represents the time at which the code block should be executed. You can specify the deadline using a DispatchTime value. DispatchTime can be obtained using methods like .now() to get the current time or by adding a time interval to the current time.
            
            sender.alpha=1// this will return the button to its previous state
            // Code to be executed after the specified delay
            
            
            //  print(sender.backgroundColor) this will print the background colour of the button pressed
            //  print(sender.currentTitle) and this will tell us about title of the button pressed
        }
        playSound(soundName: sender.currentTitle!)
        //In Swift, URL is a type that represents a Uniform Resource Locator, which is commonly used to identify the address or location of a resource on the internet. It provides a way to work with URLs and perform operations such as accessing web content, downloading files, or interacting with web services.
        func playSound(soundName:String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }
    }
}
//AVAudioPlayer is a class that allows us to play audio files.
//contentsOf is a method of AVAudioPlayer used to initialize an instance of the class with the contents of a specific file.
//url is the location (URL) of the audio file that we want to play.
//The exclamation mark ! is used to forcefully unwrap the optional url!, assuming that it has a non-nil value.
//try! is used to handle any errors that may occur during the initialization process. In this case, we are assuming that the initialization will succeed without any errors.

