import Foundation
import UIKit

private struct ImageArray {
    //static var arrayImages: [UIImage] = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4")]
    static var newArrayImages = [UIImage] ()
    static var image = ["1", "2", "3", "4"]
}

private struct Status {
   static var status = false
}

protocol AnimateImages {
    func animate(imageView: UIImageView)
    func startAndStopAnimation(imageView: UIImageView)
}

extension AnimateImages {
    
    func addImageToArray(imageName: [String]) -> [UIImage] {
        var arr = [UIImage]()
        for i in imageName {
            arr.append(UIImage(named: i)!)
        }
        return arr
    }
    
   func animate(imageView: UIImageView) {
    imageView.animationImages = addImageToArray(imageName: ImageArray.image)
        imageView.animationDuration = 10
    
    }
    
    func startAndStopAnimation(imageView: UIImageView) {
        if Status.status == false {
            imageView.startAnimating()
            Status.status = true
        } else {
            imageView.stopAnimating()
            Status.status = false
        }
    }
    
}
