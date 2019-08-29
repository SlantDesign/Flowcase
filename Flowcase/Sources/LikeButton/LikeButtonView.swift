// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class LikeButtonView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 40, height: 40)
        public static let backgroundColor = UIColor.white
    }

    public var plusSign: ShapeView!
    public var redHeart: ShapeView!
    public var heartOutlined: ShapeView!
    public var mask_1: ShapeView!
    public var rectangle: ShapeView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        createViews()
        addSubviews()
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createPlusSign()
            createRedHeart()
            createHeartOutlined()
            createMask1()
            createRectangle()
        }
    }

    private func createPlusSign() {
        plusSign = ShapeView(frame: CGRect(x: 40, y: 0, width: 12, height: 12))
        plusSign.backgroundColor = UIColor.clear
        plusSign.alpha = 0
        plusSign.layer.shadowOffset = CGSize(width: 0, height: 0)
        plusSign.layer.shadowColor = UIColor.clear.cgColor
        plusSign.layer.shadowOpacity = 1
        plusSign.layer.position = CGPoint(x: 40, y: 0)
        plusSign.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        plusSign.layer.masksToBounds = false
        plusSign.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        plusSign.shapeLayer.fillColor = UIColor(red: 0.946, green: 0.086, blue: 0.154, alpha: 1).cgColor
        plusSign.shapeLayer.lineDashPattern = []
        plusSign.shapeLayer.lineDashPhase = 0
        plusSign.shapeLayer.lineWidth = 0
        plusSign.shapeLayer.path = CGPathCreateWithSVGString("M7.5,4.5s0,0,0,0c0,0,2.981,0,2.981,0 0.839,0,1.519,0.672,1.519,1.5s0,0,0,0c0,0.828,-0.68,1.5,-1.519,1.5 0,0,-2.981,-0,-2.981,-0s0,0,0,0c0,0,0,2.981,0,2.981 -0,0.839,-0.672,1.519,-1.5,1.519s0,0,0,0c-0.828,0,-1.5,-0.68,-1.5,-1.519 0,0,0,-2.981,0,-2.981s0,0,0,0c0,0,-2.981,0,-2.981,0 -0.839,-0,-1.519,-0.672,-1.519,-1.5s0,0,0,0c0,-0.828,0.68,-1.5,1.519,-1.5 0,0,2.981,0,2.981,0s0,0,0,0c0,0,0,-2.981,0,-2.981 0,-0.839,0.672,-1.519,1.5,-1.519s0,0,0,0c0.828,0,1.5,0.68,1.5,1.519 0,0,-0,2.981,-0,2.981zM7.5,4.5")!

    }

    private func createRedHeart() {
        redHeart = ShapeView(frame: CGRect(x: 19.99, y: 20.19, width: 35, height: 32.13))
        redHeart.backgroundColor = UIColor.clear
        redHeart.layer.shadowOffset = CGSize(width: 0, height: 0)
        redHeart.layer.shadowColor = UIColor.clear.cgColor
        redHeart.layer.shadowOpacity = 1
        redHeart.layer.position = CGPoint(x: 19.99, y: 20.19)
        redHeart.layer.bounds = CGRect(x: 0, y: 0, width: 35, height: 32.13)
        redHeart.layer.masksToBounds = false
        let redHeartMask = CAShapeLayer()
        redHeartMask.path = CGPathCreateWithSVGString("M0,11.244c0,7.583,7.182,13.343,16.834,20.393 0,0,0.666,0.493,0.666,0.493s0,0,0,0c0,0,0.701,-0.481,0.701,-0.481 8.831,-6.395,16.799,-12.804,16.799,-20.405 0,-10.919,-10.969,-15.702,-17.5,-5.974 -7.022,-9.74,-17.5,-4.95,-17.5,5.974zM0,11.244")!
        redHeart.layer.mask = redHeartMask
    }

    private func createHeartOutlined() {
        heartOutlined = ShapeView(frame: CGRect(x: 20.04, y: 19.93, width: 31.93, height: 28.71))
        heartOutlined.backgroundColor = UIColor.clear
        heartOutlined.layer.shadowOffset = CGSize(width: 0, height: 0)
        heartOutlined.layer.shadowColor = UIColor.clear.cgColor
        heartOutlined.layer.shadowOpacity = 1
        heartOutlined.layer.position = CGPoint(x: 20.04, y: 19.93)
        heartOutlined.layer.bounds = CGRect(x: 0, y: 0, width: 31.93, height: 28.71)
        heartOutlined.layer.masksToBounds = false
        heartOutlined.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        heartOutlined.shapeLayer.strokeColor = UIColor(red: 0.706, green: 0.694, blue: 0.694, alpha: 1).cgColor
        heartOutlined.shapeLayer.fillColor = UIColor.white.cgColor
        heartOutlined.shapeLayer.lineDashPattern = []
        heartOutlined.shapeLayer.lineDashPhase = 0
        heartOutlined.shapeLayer.lineWidth = 3
        heartOutlined.shapeLayer.path = CGPathCreateWithSVGString("M-0.005,9.92c0,7.081,6.208,11.743,15.309,18.325 0,0,0.628,0.46,0.628,0.46s0,0,0,0c0,0,0.661,-0.449,0.661,-0.449 8.328,-5.971,15.332,-11.239,15.332,-18.336 -0,-10.783,-10.749,-13.327,-15.993,-4.779 -5.792,-8.615,-15.937,-6.004,-15.937,4.779zM-0.005,9.92")!

    }

    private func createMask1() {
        mask_1 = ShapeView(frame: CGRect(x: 17.5, y: 16.07, width: 35, height: 32.13))
        mask_1.backgroundColor = UIColor.clear
        mask_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        mask_1.layer.shadowColor = UIColor.clear.cgColor
        mask_1.layer.shadowOpacity = 1
        mask_1.layer.position = CGPoint(x: 17.5, y: 16.07)
        mask_1.layer.bounds = CGRect(x: 0, y: 0, width: 35, height: 32.13)
        mask_1.layer.masksToBounds = false
        mask_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        mask_1.shapeLayer.fillColor = nil
        mask_1.shapeLayer.lineDashPattern = []
        mask_1.shapeLayer.lineDashPhase = 0
        mask_1.shapeLayer.lineWidth = 0
        mask_1.shapeLayer.path = CGPathCreateWithSVGString("M0,11.239c0,7.583,7.182,13.343,16.834,20.393 0,0,0.666,0.493,0.666,0.493s0,0,0,0c0,0,0.701,-0.481,0.701,-0.481 8.831,-6.395,16.799,-12.804,16.799,-20.405 0,-10.919,-10.969,-15.702,-17.5,-5.974 -7.022,-9.74,-17.5,-4.95,-17.5,5.974zM0,11.239")!

    }

    private func createRectangle() {
        rectangle = ShapeView(frame: CGRect(x: 17.57, y: 64.09, width: 43.19, height: 43.19))
        rectangle.backgroundColor = UIColor.clear
        rectangle.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        rectangle.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle.layer.shadowColor = UIColor.clear.cgColor
        rectangle.layer.shadowOpacity = 1
        rectangle.layer.position = CGPoint(x: 17.57, y: 64.09)
        rectangle.layer.bounds = CGRect(x: 0, y: 0, width: 43.19, height: 43.19)
        rectangle.layer.masksToBounds = false
        rectangle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle.shapeLayer.fillColor = UIColor(red: 0.945, green: 0.086, blue: 0.153, alpha: 1).cgColor
        rectangle.shapeLayer.lineDashPattern = []
        rectangle.shapeLayer.lineDashPhase = 0
        rectangle.shapeLayer.lineWidth = 0
        rectangle.shapeLayer.path = CGPathCreateWithSVGString("M0,0s0,0,0,0c0,0,43.19,0,43.19,0s0,0,0,0c0,0,0,43.19,0,43.19s0,0,0,0c0,0,-43.19,0,-43.19,0s0,0,0,0c0,0,0,-43.19,0,-43.19zM0,0")!

    }

    private func addSubviews() {
        redHeart.addSubview(mask_1)
        redHeart.addSubview(rectangle)
        addSubview(plusSign)
        addSubview(redHeart)
        addSubview(heartOutlined)
    }
}
