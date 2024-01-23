//
//  TreeStringCollection.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation

protocol EnumeratedLocalized {
    var rawValue: String { get }
}

extension EnumeratedLocalized {
    var localized: String {
        NSLocalizedString(self.rawValue, comment: "")
    }
}

final class TreeStringCollection {
    private init() { }
    
    static let appName: String = NSLocalizedString("appName", comment: "")
    static let appVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
    
    enum Onboarding: String, EnumeratedLocalized {
        case greetings
        case phoneEnter
        case phonePlaceholder
        case phoneDescription
        case sendVerification
        case enterVerification
        case verify
        case hello
        case getUserId
        case userIdDescription
        case userIdPlaceholder
        case seeMyProfile
        case oh
        case whatANice
        case youWillBeSeen
        case memberNameDescription
        case noIwantToChange
        case likeIt
        case congratulations
        case seeInvitations
        case firstInvitationsDescription
    }
    
    enum Titles: String, EnumeratedLocalized {
        case invitationsTitle
        case receivedInvitationsTitle
        case memberProfileTitle
    }
    
    enum Button: String, EnumeratedLocalized {
        case see
        case deny
    }
    
    
}
