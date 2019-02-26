import UIKit

class ViewController: UIViewController, AnimateImages {
    
    @IBOutlet weak var broImageView: UIImageView!
    @IBOutlet weak var broLabel: UILabel!
    @IBOutlet weak var broButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        broImageView.layer.cornerRadius = 10
        broButton.layer.cornerRadius = 10
        //broLabel.text = animate(imageView: broImageView)
        animate(imageView: broImageView)
    }
    
    @IBAction func clickMeBro(_ sender: Any) {
        startAndStopAnimation(imageView: broImageView)
    }
}


