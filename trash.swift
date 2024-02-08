//import SwiftUI
//import UIKit
////https:www.pxfuel.com/en/desktop-wallpaper-taldj/download/2880x1800
//
//class UIKitPageView: UIPageViewController {
//    
//    var pages : [UIViewController]
//    
//    init(Pages: [UIViewController]) {
//        self.pages = Pages
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        presentPage()
//        view.backgroundColor = .red
//    }
//    
//    func presentPage() {
//        guard let firstView = viewControllers!.first else { return }
//        
//        let vc = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
//        
//        vc.dataSource = self
//        vc.setViewControllers(, direction: .forward, animated: true)
//        
////        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
////            self.present(vc, animated: true)
////        })
//        
//    }
//    
//    
//    
//}
//
//extension UIKitPageView : UIPageViewControllerDataSource {
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        guard let index = viewControllers?.firstIndex(of: viewController), index > 0 else {
//            return nil
//        }
//        
//        return viewControllers![index - 1]
//    }
//    
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        guard let index = viewControllers?.firstIndex(of: viewController), index < viewControllers!.count - 1 else {
//            return nil
//        }
//        
//        return viewControllers![index + 1]
//    }
//}
