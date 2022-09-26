//
//  OnboardingViewController.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageController: UIPageControl!
    
    @IBOutlet weak var nextSlideBtn: UIButton!
    
    var currentPage = 0 {
        didSet {
            pageController.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextSlideBtn.setTitle("Get Started", for: .normal)
            }
            else{
                nextSlideBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    var slides : [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NetworkingServices.shared.fetchAllCategories { result in
//            switch result {
//            case .success(let allDishes):
//                print("SUCESSFULLY ")
//            case .failure(let error) :
//                print("Error \(error.localizedDescription)")
//            }
//        }
        
    
      
        slides = [ OnboardingSlide(title: "Quick Delivery At Your Door Step", description: "Home delivery and online reservation system for restaurant and cafe", image: #imageLiteral(resourceName: "slide1")),
               OnboardingSlide(title: "Quick Delivery At Your Door Step", description: "Home delivery and online reservation system for restaurant and cafe", image: #imageLiteral(resourceName: "slide2")),
               OnboardingSlide(title: "Quick Delivery At Your Door Step", description: "Home delivery and online reservation system for restaurant and cafe", image: #imageLiteral(resourceName: "slide3")),
                   OnboardingSlide(title: "Quick Delivery At Your Door Step", description: "Home delivery and online reservation system for restaurant and cafe", image: #imageLiteral(resourceName: "slide3"))]
        
        pageController.numberOfPages = slides.count
    }
    

    @IBAction func clickedNextBtn(_ sender: UIButton) {
        
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
            controller.modalTransitionStyle = .flipHorizontal
            controller.modalPresentationStyle = .fullScreen
            present(controller, animated: true, completion: nil)
        }
        else {
            currentPage = currentPage + 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
   
    }
    
}


extension OnboardingViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        cell.setUp(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let width = scrollView.frame.width
        currentPage =  Int(scrollView.contentOffset.x / width)
        pageController.currentPage = currentPage
        
    }
   
    
}
