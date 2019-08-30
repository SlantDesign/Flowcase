//
//  UIImage+Animated.swift
//  Flowcase
//
//  Created by Travis on 2019-08-30.
//  Copyright © 2019 Travis. All rights reserved.
//

import Foundation
import UIKit

func createRawAnimatedImage(gifName: String, duration: TimeInterval = -1, repeatCount: Int) -> RawAnimatedImage? {
    guard let path = Bundle.main.path(forResource: gifName, ofType: "gif") else {
        print("Cannot find \(gifName).gif")
        return nil
    }

    let url = URL(fileURLWithPath: path)
    let data = try? Data(contentsOf: url)
    guard let d = data else {
        print("Cannot convert \(gifName).gif to data")
        return nil
    }

    return animatedImageFrom(data: d, duration: duration, repeatCount: repeatCount)
}

func animatedImageFrom(data: Data, duration userSpecifiedDuration: TimeInterval = -1, repeatCount: Int) -> RawAnimatedImage? {
    guard let source = CGImageSourceCreateWithData(data as CFData, nil) else {
        print("Couldn't create image source from data")
        return nil
    }

    let imageCount = CGImageSourceGetCount(source)
    var images = [UIImage]()
    var calculatedDuration: TimeInterval = 0

    for i in 0..<imageCount {
        if let cgimg = CGImageSourceCreateImageAtIndex(source, i, nil) {
            images.append(UIImage(cgImage: cgimg))
        }

        if userSpecifiedDuration != -1 {
            calculatedDuration += delayForImageAtIndex(source: source, UInt(i))
        }
    }

    var duration: TimeInterval = (userSpecifiedDuration == -1) ? calculatedDuration : userSpecifiedDuration
    let minimumDuration = Double(imageCount) / 60.0
    duration = (duration >= minimumDuration) ? duration : minimumDuration
    return RawAnimatedImage(images: images, duration: duration, repeatCount: repeatCount)
}

func delayForImageAtIndex(source: CGImageSource, _ i: UInt) -> TimeInterval {
    var delay: Double = 1/60

    let properties = CGImageSourceCopyPropertiesAtIndex(source, Int(i), nil)

    if (properties != nil) {
        let gifDictionaryProperty = unsafeBitCast(kCGImagePropertyGIFDictionary, to: UnsafeRawPointer.self)
        let gifProperties = CFDictionaryGetValue(properties, gifDictionaryProperty)

        if (gifProperties != nil) {
            let gifPropertiesCFD = unsafeBitCast(gifProperties, to: CFDictionary.self)

            let unclampedDelayTimeProperty = unsafeBitCast(kCGImagePropertyGIFUnclampedDelayTime, to: UnsafeRawPointer.self)
            var number = unsafeBitCast(CFDictionaryGetValue(gifPropertiesCFD, unclampedDelayTimeProperty), to: NSNumber.self);

            if (number.doubleValue == 0) {
                let delayTimeProperty = unsafeBitCast(kCGImagePropertyGIFDelayTime, to: UnsafeRawPointer.self)
                number = unsafeBitCast(CFDictionaryGetValue(gifPropertiesCFD, delayTimeProperty), to: NSNumber.self);
            }

            if (number.doubleValue > 0) {
                delay = number.doubleValue;
            }
        }
    }

    return delay
}


struct RawAnimatedImage {
    var images: [UIImage]
    var duration: TimeInterval
    var repeatCount: Int
}
