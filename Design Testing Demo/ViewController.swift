//
//  ViewController.swift
//  Design Testing Demo
//
//  Created by Neosoft on 30/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBottomView()
        setButton()
    }
    
    func setBottomView(){
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: bottomView.frame.height))
        path.addLine(to: CGPoint(x: bottomView.frame.width, y: bottomView.frame.height))
        path.addLine(to: CGPoint(x: bottomView.frame.width, y: 60))
        path.addLine(to: CGPoint(x: 0, y: 60))
        
        path.move(to: CGPoint(x: 0, y: 60))
        path.addQuadCurve(to: CGPoint(x: bottomView.frame.width, y: 60), controlPoint: CGPoint(x: bottomView.frame.width / 2 , y: 0 ))
        path.close()

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath

        bottomView.layer.mask = shapeLayer
    }
    
    func setButton(){
        btnNext.applyGradient(colours:[UIColor(hex: "EB305B"), UIColor(hex: "561CD8")])
        btnNext.clipsToBounds = true
        btnNext.layer.cornerRadius = 20
        btnNext.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
        
    }
    
    
    @IBAction func btnNextTapped(_ sender: UIButton) {
        let vc = CustomTabBarController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
