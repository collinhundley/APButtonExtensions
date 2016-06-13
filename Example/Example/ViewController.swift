import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var button: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		button.addTarget(.TouchDown) { [weak self] in
			self?.view.backgroundColor = UIColor.grayColor()
		}
		button.addTarget(.TouchUpInside) { [weak self] in
			self?.view.backgroundColor = UIColor.greenColor()
		}
		button.addTarget(.TouchUpOutside) { [weak self] in
			self?.view.backgroundColor = UIColor.redColor()
		}
	}
}
