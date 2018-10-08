








import UIKit
@IBDesignable class UiLable_Design: UILabel {
    func setup() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}
