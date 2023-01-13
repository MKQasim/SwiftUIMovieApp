//
//  TicketView.swift
//  SwiftUIMoviewApp
//
//  Created by KamsQue on 13/01/2023.
//

import SwiftUI

struct TicketView: View {
  
  @State var animate = false
  
    var body: some View {
      ZStack {
       
          CircleBackground(color: Color("greenCircle"))
            .blur(radius: animate ? 30 : 100)
            .offset(x:animate ? -50 : -130,y:animate ? -30 : -100)
            .task {
              withAnimation(.easeInOut(duration: 7).repeatForever()){
                animate.toggle()
              }
            }
          CircleBackground(color: Color("pinkCircle"))
            .blur(radius: animate ? 30:  100)
            .offset(x:animate ? 50 :130,y: animate ? 150:  100)
        VStack(spacing: 30.0) {
          Text("Mobile Ticket")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.bold )
          
          Text("Once you buy a Movie Ticket simply scan the barcode to access to your movie.")
            .frame(maxWidth: 240)
            .font(.body)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
          
        }
        .padding(.horizontal,20)
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        Tickets()
          .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
      }
      .background(
        LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"),Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom))
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
