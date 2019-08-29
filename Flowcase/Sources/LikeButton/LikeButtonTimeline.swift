// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class LikeButtonTimeline: Timeline {
    public convenience init(view: LikeButtonView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = LikeButtonTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: LikeButtonView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for plusSign
        let position_x_plusSign: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [40, 40, 39.92, 40, 40]
            keyframeAnimation.keyTimes = [0, 0.316832, 0.445545, 0.574257, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_plusSign: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [12, 12, 14.78, 12, 12]
            keyframeAnimation.keyTimes = [0, 0.316832, 0.445545, 0.574257, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_plusSign: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [12, 12, 14.78, 12, 12]
            keyframeAnimation.keyTimes = [0, 0.316832, 0.445545, 0.574257, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_plusSign: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.287129, 0.49505, 0.653465, 0.742574, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_plusSign: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M7.5,4.5s0,0,0,0c0,0,2.981,0,2.981,0 0.839,0,1.519,0.672,1.519,1.5s0,0,0,0c0,0.828,-0.68,1.5,-1.519,1.5 0,0,-2.981,-0,-2.981,-0s0,0,0,0c0,0,0,2.981,0,2.981 -0,0.839,-0.672,1.519,-1.5,1.519s0,0,0,0c-0.828,0,-1.5,-0.68,-1.5,-1.519 0,0,0,-2.981,0,-2.981s0,0,0,0c0,0,-2.981,0,-2.981,0 -0.839,-0,-1.519,-0.672,-1.519,-1.5s0,0,0,0c0,-0.828,0.68,-1.5,1.519,-1.5 0,0,2.981,0,2.981,0s0,0,0,0c0,0,0,-2.981,0,-2.981 0,-0.839,0.672,-1.519,1.5,-1.519s0,0,0,0c0.828,0,1.5,0.68,1.5,1.519 0,0,-0,2.981,-0,2.981zM7.5,4.5")!, CGPathCreateWithSVGString("M7.5,4.5s0,0,0,0c0,0,2.981,0,2.981,0 0.839,0,1.519,0.672,1.519,1.5s0,0,0,0c0,0.828,-0.68,1.5,-1.519,1.5 0,0,-2.981,-0,-2.981,-0s0,0,0,0c0,0,0,2.981,0,2.981 -0,0.839,-0.672,1.519,-1.5,1.519s0,0,0,0c-0.828,0,-1.5,-0.68,-1.5,-1.519 0,0,0,-2.981,0,-2.981s0,0,0,0c0,0,-2.981,0,-2.981,0 -0.839,-0,-1.519,-0.672,-1.519,-1.5s0,0,0,0c0,-0.828,0.68,-1.5,1.519,-1.5 0,0,2.981,0,2.981,0s0,0,0,0c0,0,0,-2.981,0,-2.981 0,-0.839,0.672,-1.519,1.5,-1.519s0,0,0,0c0.828,0,1.5,0.68,1.5,1.519 0,0,-0,2.981,-0,2.981zM7.5,4.5")!, CGPathCreateWithSVGString("M9.238,5.543s0,0,0,0c0,0,4.056,0,4.056,0 0.821,0,1.486,0.679,1.486,1.517 0,0,0,0.662,0,0.662 -0,0.838,-0.666,1.517,-1.486,1.517 0,0,-4.056,0,-4.056,0s0,0,0,0c0,0,-0,4.056,-0,4.056 0,0.821,-0.679,1.486,-1.517,1.486 0,0,-0.662,0,-0.662,0 -0.838,-0,-1.517,-0.666,-1.517,-1.486 0,0,0,-4.056,0,-4.056s0,0,0,0c0,0,-4.056,-0,-4.056,-0 -0.821,0,-1.486,-0.679,-1.486,-1.517 0,0,0,-0.662,0,-0.662 0,-0.838,0.666,-1.517,1.486,-1.517 0,0,4.056,0,4.056,0s0,0,0,0c0,0,0,-4.056,0,-4.056 0,-0.821,0.679,-1.486,1.517,-1.486 0,0,0.662,0,0.662,0 0.838,0,1.517,0.666,1.517,1.486 0,0,0,4.056,0,4.056zM9.238,5.543")!, CGPathCreateWithSVGString("M7.5,4.5s0,0,0,0c0,0,2.981,0,2.981,0 0.839,0,1.519,0.672,1.519,1.5s0,0,0,0c0,0.828,-0.68,1.5,-1.519,1.5 0,0,-2.981,-0,-2.981,-0s0,0,0,0c0,0,0,2.981,0,2.981 -0,0.839,-0.672,1.519,-1.5,1.519s0,0,0,0c-0.828,0,-1.5,-0.68,-1.5,-1.519 0,0,0,-2.981,0,-2.981s0,0,0,0c0,0,-2.981,0,-2.981,0 -0.839,-0,-1.519,-0.672,-1.519,-1.5s0,0,0,0c0,-0.828,0.68,-1.5,1.519,-1.5 0,0,2.981,0,2.981,0s0,0,0,0c0,0,0,-2.981,0,-2.981 0,-0.839,0.672,-1.519,1.5,-1.519s0,0,0,0c0.828,0,1.5,0.68,1.5,1.519 0,0,-0,2.981,-0,2.981zM7.5,4.5")!, CGPathCreateWithSVGString("M7.5,4.5s0,0,0,0c0,0,2.981,0,2.981,0 0.839,0,1.519,0.672,1.519,1.5s0,0,0,0c0,0.828,-0.68,1.5,-1.519,1.5 0,0,-2.981,-0,-2.981,-0s0,0,0,0c0,0,0,2.981,0,2.981 -0,0.839,-0.672,1.519,-1.5,1.519s0,0,0,0c-0.828,0,-1.5,-0.68,-1.5,-1.519 0,0,0,-2.981,0,-2.981s0,0,0,0c0,0,-2.981,0,-2.981,0 -0.839,-0,-1.519,-0.672,-1.519,-1.5s0,0,0,0c0,-0.828,0.68,-1.5,1.519,-1.5 0,0,2.981,0,2.981,0s0,0,0,0c0,0,0,-2.981,0,-2.981 0,-0.839,0.672,-1.519,1.5,-1.519s0,0,0,0c0.828,0,1.5,0.68,1.5,1.519 0,0,-0,2.981,-0,2.981zM7.5,4.5")!]
            keyframeAnimation.keyTimes = [0, 0.316832, 0.445545, 0.574257, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for heartOutlined
        let bounds_size_width_heartOutlined: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [31.93, 26, 31.93, 31.93]
            keyframeAnimation.keyTimes = [0, 0.217822, 0.39604, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_heartOutlined: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [28.71, 23.38, 28.71, 28.71]
            keyframeAnimation.keyTimes = [0, 0.217822, 0.39604, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_heartOutlined: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.217822, 0.39604, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_heartOutlined: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M-0.005,9.92c0,7.081,6.208,11.743,15.309,18.325 0,0,0.628,0.46,0.628,0.46s0,0,0,0c0,0,0.661,-0.449,0.661,-0.449 8.328,-5.971,15.332,-11.239,15.332,-18.336 -0,-10.783,-10.749,-13.327,-15.993,-4.779 -5.792,-8.615,-15.937,-6.004,-15.937,4.779zM-0.005,9.92")!, CGPathCreateWithSVGString("M-0.004,8.078c0,5.766,5.055,9.563,12.466,14.923 0,0,0.512,0.375,0.512,0.375s0,0,0,0c0,0,0.538,-0.366,0.538,-0.366 6.781,-4.862,12.484,-9.152,12.484,-14.932 -0,-8.781,-8.753,-10.853,-13.023,-3.892 -4.716,-7.016,-12.977,-4.889,-12.977,3.892zM-0.004,8.078")!, CGPathCreateWithSVGString("M-0.005,9.92c0,7.081,6.208,11.743,15.309,18.325 0,0,0.628,0.46,0.628,0.46s0,0,0,0c0,0,0.661,-0.449,0.661,-0.449 8.328,-5.971,15.332,-11.239,15.332,-18.336 -0,-10.783,-10.749,-13.327,-15.993,-4.779 -5.792,-8.615,-15.937,-6.004,-15.937,4.779zM-0.005,9.92")!, CGPathCreateWithSVGString("M-0.005,9.92c0,7.081,6.208,11.743,15.309,18.325 0,0,0.628,0.46,0.628,0.46s0,0,0,0c0,0,0.661,-0.449,0.661,-0.449 8.328,-5.971,15.332,-11.239,15.332,-18.336 -0,-10.783,-10.749,-13.327,-15.993,-4.779 -5.792,-8.615,-15.937,-6.004,-15.937,4.779zM-0.005,9.92")!]
            keyframeAnimation.keyTimes = [0, 0.217822, 0.39604, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for rectangle
        let position_y_rectangle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [64.09, 64.09, 15, 15]
            keyframeAnimation.keyTimes = [0, 0.277228, 0.534653, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.heartOutlined.layer] = [path_heartOutlined, bounds_size_height_heartOutlined, bounds_size_width_heartOutlined, opacity_heartOutlined]
        animationsByLayer[view.plusSign.layer] = [bounds_size_width_plusSign, position_x_plusSign, opacity_plusSign, bounds_size_height_plusSign, path_plusSign]
        animationsByLayer[view.rectangle.layer] = [position_y_rectangle]

        return animationsByLayer 
    }
}