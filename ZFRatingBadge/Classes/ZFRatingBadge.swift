import UIKit
import SnapKit

open class ZFRatingBadge: UIView {
    
    override public var backgroundColor: UIColor? {
        willSet(color) {
            self.backgroundView.backgroundColor = color
        }
    }
    
    open var starImage: UIImage = UIImage(named: "Star")! {
        willSet(image) {
            self.starImageView.image = image
        }
    }
    
    open var rating: Double = 0.0 {
        willSet(rating) {
            self.ratingLabel.text = "\(rating)"
        }
    }
    
    open var font: UIFont = UIFont(name: "HelveticaNeue", size: 16)! {
        willSet(font) {
            self.ratingLabel.font = font
        }
    }
    
    open var textColor: UIColor = .white {
        willSet(color) {
            self.ratingLabel.textColor = color
        }
    }
    
    open var shadowRadius: CGFloat = 0 {
        willSet(shadowRadius) {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    open var shadowColor: CGColor = UIColor.clear.cgColor {
        willSet(shadowColor) {
            self.layer.shadowColor = shadowColor
        }
    }
    
    open var shadowOpacity: Float = 0 {
        willSet(shadowOpacity) {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    open var shadowOffset: CGSize = CGSize.zero {
        willSet(shadowOffset) {
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    //MARK: - Helper Methods
    open func addShadow(shadowRadius: CGFloat = 5,
                   shadowColor: CGColor = UIColor.darkGray.cgColor,
                   shadowOpacity: Float = 0.5,
                   shadowOffset: CGSize = CGSize(width: -1, height: 1)) {
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = shadowOffset
    }
    
    // MARK: - Initialization
    init(backgroundColor: UIColor = .orange,
         starImage: UIImage = UIImage(named: "Star")!,
         rating: Double = 0.0,
         font: UIFont = UIFont(name: "HelveticaNeue", size: 16)!,
         textColor: UIColor = .white,
         shadowRadius: CGFloat = 0,
         shadowColor: CGColor = UIColor.clear.cgColor,
         shadowOpacity: Float = 0,
         shadowOffset: CGSize = .zero) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        self.starImage = starImage
        self.rating = rating
        self.font = font
        self.textColor = textColor
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = shadowOffset
        
        setupUI()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Properties
    private lazy var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = self.backgroundColor
        return view
    }()
    
    private lazy var starImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = self.starImage
        return imageView
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.font = self.font
        label.textColor = self.textColor
        label.text = "\(self.rating)"
        return label
    }()
    
    private func setupUI() {
        self.addSubview(starImageView)
        self.addSubview(ratingLabel)
        
        starImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.snp.centerY)
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(5)
        }
        
        ratingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(starImageView.snp.bottom)
            make.bottom.centerX.equalToSuperview()
        }
    }
    
    
}
