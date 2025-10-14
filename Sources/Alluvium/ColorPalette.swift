//
//  ColorPalette.swift
//
//  Created by Zack Brown on 24/08/2023.
//

import Euclid

public struct ColorPalette {
    
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let quaternary: Color
    
    public init(_ primary: Color,
                _ secondary: Color,
                _ tertiary: Color? = nil,
                _ quaternary: Color? = nil) {
        
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary ?? primary
        self.quaternary = quaternary ?? secondary
    }
    
    public init(_ primary: String,
                _ secondary: String,
                _ tertiary: String? = nil,
                _ quaternary: String? = nil) {
        
        self.primary = Color(primary)
        self.secondary = Color(secondary)
        self.tertiary = Color(tertiary ?? primary)
        self.quaternary = Color(quaternary ?? secondary)
    }
}
