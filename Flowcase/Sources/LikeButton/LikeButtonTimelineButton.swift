// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class LikeButtonTimelineButton: ToggleButton {
    private lazy var artboard: LikeButtonView = {
        let startView = LikeButtonView(frame: .zero)
        startView.scale(to: frame.size)
        return startView
    }()

    override var forward: Timeline? {
        return LikeButtonTimeline(view: artboard, duration: 1.01)
    }

    override var reverse: Timeline? {
        return LikeButtonTimeline(view: artboard, duration: 1.01).reversed
    }

    override func createView() -> UIView {
        return artboard
    }
}
