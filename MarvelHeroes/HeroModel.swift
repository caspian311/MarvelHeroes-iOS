import Foundation

protocol HeroModelDelegateProtocol: class {
}

class HeroModel {
    var delegate: HeroModelDelegateProtocol?

}
