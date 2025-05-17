//
//  AppColors.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

public enum AppColors {
    
    // MARK: - Brand
    public static let brandPrimary = Color("BrandPrimary", bundle: .module)
    public static let brandSecondary = Color("BrandSecondary", bundle: .module)
    
    // MARK: - Neutrals
    public static let appBackground = Color("AppBackground", bundle: .module)
    public static let grayLight = Color("GrayLight", bundle: .module)
    public static let grayDark = Color("GrayDark", bundle: .module)
    public static let appBlack = Color("AppBlack", bundle: .module)
    
    // MARK: - Status & Feedback
    public static let statusSuccess = Color("StatusSuccess", bundle: .module)
    public static let statusError = Color("StatusError", bundle: .module)
    public static let statusInfo = Color("StatusInfo", bundle: .module)
    
    // MARK: - Components
    public static let chipBackground = Color("ChipBackground", bundle: .module)
    public static let chipBorder = Color("ChipBorder", bundle: .module)
    public static let mutedText = Color("MutedText", bundle: .module)
    public static let cardBackground = Color("CardBackground", bundle: .module)
    
}
