import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let discoverVC = UIViewController()
        discoverVC.view.backgroundColor = .systemBackground
        discoverVC.tabBarItem = UITabBarItem(title: "Discover", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        
        let libraryVC = UIViewController()
        libraryVC.view.backgroundColor = .systemBackground
        libraryVC.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "book"), tag: 1)
        
        let searchVC = UIViewController()
        searchVC.view.backgroundColor = .systemBackground
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        
        let moreVC = UIViewController()
        moreVC.view.backgroundColor = .systemBackground
        moreVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        let tabBarList = [discoverVC, libraryVC, searchVC, moreVC]
        
        viewControllers = tabBarList.map { UINavigationController(rootViewController: $0) }
    }
}
