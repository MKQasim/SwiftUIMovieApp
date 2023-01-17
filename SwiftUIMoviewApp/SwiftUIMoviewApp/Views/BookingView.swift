//
//  BookingView.swift
//  SwiftUIMoviewApp
//
//  Created by KamsQue on 17/01/2023.
//

import SwiftUI

struct BookingView: View {
    var body: some View {
      ZStack {
        Image("booking")
          .resizable()
      }
      .background(Color("backgroundColor"))
      .ignoresSafeArea()
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
