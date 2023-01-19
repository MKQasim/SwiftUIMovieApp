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
    NavigationView {
      VStack{
        TabView(selection: $currentTab) {
          HomeView()
            .tag(Tab.home)
          Text("Location")
            .tag(Tab.location)
          TicketView()
            .tag(Tab.ticket)
          BookingView()
            .tag(Tab.category)
          SeatsView()
            .tag(Tab.profile)
        }
        CustomTabbar(currentTab: $currentTab)
      }
      .ignoresSafeArea(.keyboard)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
