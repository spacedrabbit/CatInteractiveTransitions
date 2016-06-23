//
//  ViewController.swift
//  CatInteractiveTransitionController
//
//  Created by Louis Tur on 6/22/16.
//  Copyright © 2016 catthoughts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate,
  UIViewControllerInteractiveTransitioning, UIViewControllerAnimatedTransitioning {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  lazy internal var panGesture: UIPanGestureRecognizer = {
    let panSel = #selector(ViewController.panInitiatedTransitionBegan(_:))
    let pGes: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: panSel)
    return pGes
  }()

  internal func panInitiatedTransitionBegan(sender: UIPanGestureRecognizer) {
    
  }

  // MARK: - UIViewController Transitioning Delegate
  // Manages all of the rest of the transitioning portions, both animated and interactive
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
    return nil
  }
  
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
    return nil
  }
  
  // this protocol function is required if using interactionControllerForPresentation(_:)
  func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    return nil
  }
  
  // this protocol function is required if using interactionControllerForDismissal(_:)
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    return nil
  }
  
  
  // MARK: - UIViewController Interactive Transitioning
  // responsible for managing interaction state
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning) {
    
  }
  
  
  // MARK: - UIViewController Animated Transitioning 
  func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
    
  }
  
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
    return 1.0
  }
  
}

