import SwiftUI
import UIKit

/*
 Reference :
 https:www.pxfuel.com/en/desktop-wallpaper-taldj/download/2880x1800
 */

class UIKitPageView: UIPageViewController {
    var pages : [UIViewController]?
    let initPageIndex = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        dataSource = self
        guard let initPage = pages?[initPageIndex] else {
            return
        }
        
        self.setViewControllers([initPage], direction: .forward, animated: true, completion: nil)
        
    }
    
    
}

extension UIKitPageView : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages?.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        
        return pages?[index - 1] ?? nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard
            let index = pages?.firstIndex(of: viewController),
            let pagecount = pages?.count,
            index < pagecount - 1 else {
            return nil
        }
        
        return pages?[index  + 1] ?? nil
    }
    
    
}
