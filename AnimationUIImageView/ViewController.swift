

import UIKit

class ViewController: UIViewController {
    
    var test = ImageArray()
    var status = false
    
    @IBOutlet weak var broImageView: UIImageView!
    @IBOutlet weak var broLabel: UILabel!
    @IBOutlet weak var broButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        broImageView.layer.cornerRadius = 10
        broButton.layer.cornerRadius = 10
        setupImage()
        
    }
    
    func setupImage() {
        broImageView.animationImages = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4")]
        broImageView.animationDuration = 10
    }
    
    
    
    @IBAction func clickMeBro(_ sender: Any) {
        if !status {
            broImageView.startAnimating()
            status = true
        } else {
            broImageView.stopAnimating()
            status = false
        }
        
    }
}
