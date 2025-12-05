//
//  ColorLookData.swift
//  CineLooks
//
//  Created by Jonathan Braun on 12/4/25.
//

import UIKit

struct ColorLookData {
    static let all: [ColorLook] = [
        ColorLook(
            name: "Teal & Orange",
            category: "Blockbuster",
            description: "Warm skin tones in the mids and highlights, cool cyan in shadows. High contrast and saturation for a modern action-film feel.",
            backgroundColor: UIColor.systemTeal,
            textColor: .systemOrange
            
        ),
        ColorLook(
            name: "Bleach Bypass",
            category: "Gritty",
            description: "Desaturated color with strong contrast and milky highlights. Emulates skipping the bleach step in film processing.",
            backgroundColor: UIColor.systemGray4,
            textColor: .lightGray
        ),
        ColorLook(
            name: "Pastel Daylight",
            category: "Soft Drama",
            description: "Lower contrast, gentle roll-off, and pastel hues. Great for romantic or coming-of-age daytime scenes.",
            backgroundColor: UIColor.systemPink.withAlphaComponent(0.3),
            textColor: .systemBlue
        ),
        ColorLook(
            name: "Low-Key Noir",
            category: "Monochrome",
            description: "Deep blacks, strong key-to-fill ratio, often near-monochrome. Emphasizes mystery and shadow detail.",
            backgroundColor: UIColor.black,
            textColor: .white
        ),
        ColorLook(
            name: "Cross-Process",
            category: "Experimental",
            description: "Unusual hues from simulated film cross-processing: greens in skin, magenta shadows, punchy saturation.",
            backgroundColor: UIColor.systemGreen.withAlphaComponent(0.4),
            textColor: .systemCyan
        ),
        ColorLook(
            name: "Golden Hour Glow",
            category: "Warm",
            description: "Strong warm bias in highlights with soft contrast. Emulates late-afternoon sun and lens flare vibes.",
            backgroundColor: UIColor.systemOrange.withAlphaComponent(0.5),
            textColor: .systemYellow
        ),
        ColorLook(
            name: "Cool Night Street",
            category: "Neon",
            description: "Cool blue/cyan base with pockets of magenta and yellow from neon signs and streetlights.",
            backgroundColor: UIColor.systemIndigo.withAlphaComponent(0.7),
            textColor: .systemPink
        ),
        ColorLook(
            name: "Vintage Kodachrome",
            category: "Vintage",
            description: "Warm reds, slightly compressed dynamic range, rich saturation. Feels like old family slides.",
            backgroundColor: UIColor.systemRed.withAlphaComponent(0.4),
            textColor: .yellow
        ),
        ColorLook(
            name: "High-Key Beauty",
            category: "Commercial",
            description: "Bright whites, soft saturation, minimal shadows. Classic beauty/advertising look.",
            backgroundColor: UIColor.systemYellow.withAlphaComponent(0.5),
            textColor: .systemPurple
        ),
        ColorLook(
            name: "Muted Documentary",
            category: "Naturalistic",
            description: "Lower saturation and contrast with neutral balance, keeping attention on story instead of a heavy grade.",
            backgroundColor: UIColor.systemGray5,
            textColor: .darkGray
        )
    ]
}

