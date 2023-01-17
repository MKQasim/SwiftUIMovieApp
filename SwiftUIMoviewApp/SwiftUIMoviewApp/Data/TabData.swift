  //
  //  TabData.swift
  //  SwiftUIMoviewApp
  //
  //  Created by KamsQue on 17/01/2023.
  //

import Foundation

enum Tab : String , CaseIterable {
case home = "Home"
case location = "Location"
case ticket = "Ticket"
case category = "Category"
case profile = "Profile"
  
  func getIndex() -> Int{
    switch self {
    case .home : return 0
    case .location:return 1
    case .ticket:return 2
    case .category:return 3
    case .profile:return 4
    }
  }
}
