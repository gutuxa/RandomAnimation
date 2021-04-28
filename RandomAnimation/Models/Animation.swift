//
//  Animation.swift
//  RandomAnimation
//
//  Created by Oksana Tugusheva on 27.04.2021.
//


struct Animation {
    let name: String
    let curve: String
    let duration: Double
    let delay: Double
    
    var parameters: [String] {
        [name, curve, format(duration), format(delay)]
    }
}

extension Animation {
    static func getAnimation() -> Animation {
        let shared = AnimationDataManager.shared
        
        return Animation(
            name: shared.names.randomElement() ?? "",
            curve: shared.curves.randomElement() ?? "",
            duration: Double.random(in: (shared.durationBounds.first ?? 1)...(shared.durationBounds.last ?? 1)),
            delay: Double.random(in: (shared.delayBounds.first ?? 0)...(shared.delayBounds.last ?? 0))
        )
    }
}

extension Animation {
    private func format(_ value: Double) -> String {
        String(format: "%.2f", value)
    }
}
