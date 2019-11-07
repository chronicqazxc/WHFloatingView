//
//  FloatingViewController.swift
//  FloatingView
//
//  Created by Hsiao, Wayne on 2019/11/6.
//  Copyright © 2019 Hsiao, Wayne. All rights reserved.
//

import UIKit


/// Floating view delegate.
public protocol FloatingViewControllerDelegate: class {
    
    /// Arbitrary view controller will be presented by floating view.
    var entryViewController: (() -> UIViewController)? { get set }
}

protocol FloatingViewController: UIViewController {
    static func instanceFromNib() -> FloatingViewController?
    var floatingView: UIView! { get set }
    var delegate: FloatingViewControllerDelegate? { get set }
}
