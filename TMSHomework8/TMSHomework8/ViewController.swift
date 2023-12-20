import UIKit

class ViewController: UIViewController {
    
    var circleView: UIView?
    var x: CGFloat = 0
    var y: CGFloat = 49
    let side: CGFloat = 40
    let circle = UIView()
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Game for cats
        //        createCircleView()
        //        tapGesture()
        //        circleTapped()
        
        //MARK: - Circle game
        createCircleView()
    }
    
    //MARK: - Game for cats
    //    func createCircleView() {
    //        let circleSize: CGFloat = 100
    //        let randomCoordinateX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
    //        let randomCoordinateY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
    //        circleView = UIView(frame: CGRect(x: randomCoordinateX, y: randomCoordinateY, width: circleSize, height: circleSize))
    //        circleView?.backgroundColor = UIColor.green
    //        circleView?.layer.cornerRadius = circleSize/2
    //        view.addSubview(circleView!)
    //    }
    //
    //    func tapGesture() {
    //        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(circleTapped))
    //        view.addGestureRecognizer(tapGesture)
    //    }
    //
    //    @objc func circleTapped() {
    //        let circleSize: CGFloat = 100
    //        let randomCoordinateX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
    //        let randomCoordinateY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
    //        UIView.animate(withDuration: 0.5){
    //            self.circleView?.frame = CGRect(x: randomCoordinateX, y: randomCoordinateY, width: circleSize, height: circleSize)
    //        }
    //    }
    
    //MARK: - Creating squares
    //        func addSquares() {
    //            let squares = UIView(frame: CGRect(x: self.x, y: self.y, width: self.side, height: self.side))
    //            squares.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    //            view.addSubview(squares)
    //        }
    //
    //        func canCreateSquares() -> Bool {
    //            if self.x + self.side > view.bounds.width {
    //                return false
    //            }
    //            if self.y + self.side > view.bounds.height {
    //                return false
    //            }
    //            return true
    //        }
    //
    //        func createSquares() {
    //            if canCreateSquares() {
    //                addSquares()
    //                self.x += self.side
    //                createSquares()
    //            }
    //            else if self.x + self.side > view.bounds.width {
    //                self.x = 0
    //                self.y += self.side
    //                if canCreateSquares() {
    //                    createSquares()
    //                }
    //            }
    //        }
    //
    //        @IBAction func createSquaresButtonPressed(_ sender: UIButton) {
    //            createSquares()
    //        }
    
    //MARK: - Circle game
    func createCircleView() {
        circle.frame = CGRect(x: 150, y: 300, width: 100, height: 100)
        circle.layer.cornerRadius = circle.frame.width/2
        circle.backgroundColor = .blue
        containerView.addSubview(circle)
    }
    
    @IBAction func upButtonPressed(_ sender: UIButton) {
        guard circle.center.y - 50 - 30 >= containerView.bounds.minY else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.y -= 30
        }
    }
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        guard circle.center.y + 50 + 30 <= containerView.bounds.maxY else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.y += 30
        }
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        guard circle.center.x - 50 - 30 >= containerView.bounds.minX else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.x -= 30
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        guard circle.center.x + 50 + 30 <= containerView.bounds.maxX else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.x += 30
        }
    }
}
