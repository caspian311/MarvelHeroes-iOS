import UIKit

class HeroViewController: UIViewController {
    let heroView: HeroView
    let heroModel: HeroModel
    
    
    init(heroView: HeroView = HeroView(), heroModel: HeroModel = HeroModel()) {
        self.heroView = heroView
        self.heroModel = heroModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        super.navigationController?.navigationBar.isTranslucent = false
        super.navigationController?.navigationBar.isHidden = true
    }
}
