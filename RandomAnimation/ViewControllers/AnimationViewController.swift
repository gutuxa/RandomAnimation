//
//  AnimationViewController.swift
//  RandomAnimation
//
//  Created by Oksana Tugusheva on 27.04.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var parameterLabels: [UILabel]!
    @IBOutlet var runButton: SpringButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        setParameterLabels(with: animation)
        setButtonLabel(with: animation.name)
    }
    
    @IBAction func runAnimation() {
        setParameterLabels(with: animation)
        
        animatedView.animation = animation.name
        animatedView.curve = animation.curve
        animatedView.duration = CGFloat(animation.duration)
        animatedView.delay = CGFloat(animation.delay)
        animatedView.animate()
        
        animation = Animation.getAnimation()
        setButtonLabel(with: animation.name)
    }
}

extension AnimationViewController {
    private func setButtonLabel(with text: String) {
        runButton.setTitle("Run \(text)", for: .normal)
    }
    
    private func setParameterLabels(with animation: Animation) {
        for (index, parameter) in animation.parameters.enumerated(){
            parameterLabels[index].text = parameter
        }
    }
}

