//
//  ColorPalette.swift
//
//  Created by Zack Brown on 24/08/2023.
//

import AppKit
import Euclid

public struct ColorPalette: Sendable {
    
    public enum Key: String,
                     CaseIterable,
                     Identifiable {
        
        case primary
        case secondary
        case tertiary
        case quaternary
        
        public var id: String { rawValue.capitalized }
    }
    
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let quaternary: Color
    
    public init(_ primary: NSColor,
                _ secondary: NSColor,
                _ tertiary: NSColor? = nil,
                _ quaternary: NSColor? = nil) {
        
        self.init(.init(primary),
                  .init(secondary),
                  .init(tertiary ?? primary),
                  .init(quaternary ?? secondary))
    }
    
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

extension ColorPalette {
    
    public func color(for key: Key) -> Color {

        switch key {
                
        case .primary: return primary
        case .secondary: return secondary
        case .tertiary: return tertiary
        case .quaternary: return quaternary
        }
    }
    
    public func random(_ keys: [Key]? = nil) -> Color {
        
        let keys = keys ?? Key.allCases
        
        let values = keys.map { color(for: $0) }
        
        return values.randomElement()!
    }
    
    public func color(for index: Int,
                      _ keys: [Key]? = nil) -> Color {
        
        let keys = keys ?? Key.allCases
        
        let values = keys.map { color(for: $0) }
        
        return values[abs(index) % values.count]
    }
}
