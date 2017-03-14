import UIKit

protocol HeroViewDelegateProtocol: class {
}

class HeroView: UIView {
    var delegate: HeroViewDelegateProtocol?
    
    init() {
        super.init(frame: CGRect.zero)
        
        self.backgroundColor = .white
        
        let heroName = UILabel()
        
        self.addSubview(heroName)
        
        heroName.text = "Iron Man"
        heroName.textColor = .black
        heroName.font = UIFont(name:"HelveticaNeue-Bold", size: 30)
        
        heroName.translatesAutoresizingMaskIntoConstraints = false
        heroName.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        heroName.topAnchor.constraint(equalTo: self.topAnchor, constant: 40).isActive = true
        
        let heroImage = UIImageView()
        
        self.addSubview(heroImage)
        
        heroImage.image = UIImage(named: "iron-man.jpg")
        
        heroImage.translatesAutoresizingMaskIntoConstraints = false
        heroImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        heroImage.topAnchor.constraint(equalTo: heroName.bottomAnchor, constant: 10).isActive = true
        heroImage.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -20).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
