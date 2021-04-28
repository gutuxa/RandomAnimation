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
    let durationBounds = [0.5, 2]
    let delayBounds = [0, 0.5]
    
    static let shared = AnimationDataManager()
    
    private init() {}
}
