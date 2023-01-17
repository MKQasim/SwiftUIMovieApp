//
//  ContentView.swift
//  SwiftUIMoviewApp
//
//  Created by KamsQue on 13/01/2023.
//

import SwiftUI

struct ContentView: View {
  @State var currentTab : Tab = .home
  
  init() {
    UITabBar.appearance().isHidden = true
  }
  
  var body: some View {
    VStack{
      
      TabView(selection: $currentTab) {
        Text("Home")
          .tag(Tab.home)
        Text("Location")
          .tag(Tab.location)
        TicketView()
          .tag(Tab.ticket)
        Text("Cetegory")
          .tag(Tab.category)
        Text("Profile")
          .tag(Tab.profile)
      }
      CustomTabbar(currentTab: $currentTab)
    }
    .ignoresSafeArea(.keyboard)
    
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
