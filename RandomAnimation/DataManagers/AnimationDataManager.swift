//
//  AnimationDataManager.swift
//  RandomAnimation
//
//  Created by Oksana Tugusheva on 27.04.2021.
//

class AnimationDataManager {
    let names = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    let curves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    let durationRange = (min: 0.5, max: 2.0)
    let delayRange = (min: 0.0, max: 0.5)
    
    static let shared = AnimationDataManager()
    
    private init() {}
}
