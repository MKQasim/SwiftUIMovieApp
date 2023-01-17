//
//  HomeView.swift
//  SwiftUIMoviewApp
//
//  Created by KamsQue on 17/01/2023.
//

import SwiftUI

struct HomeView: View {
  
  
  @State var posters1 : [String] = ["poster1","poster2","poster3","poster4","poster5","poster6"]
  @State var posters2 : [String] = ["poster7","poster8","poster9","poster10","poster11","poster12"]
  @State var posters3 : [String] = ["poster13","poster14","poster15","poster16","poster17","poster18"]

  @State var animate = false
  var backgroundColors : [Color] = [Color("purple"),Color("lightBlue"),Color("pink")]
  
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
        
        VStack(spacing: 0.0){
          Text("Choose Movie")
            .fontWeight(.bold)
            .font(.title3)
            .foregroundColor(.white)
          CustomSearchBar()
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
          ScrollView(.vertical,showsIndicators: false) {
            VStack(spacing: 20.0) {
              ScrollSection(title: "Now playing", posters: posters1)
              ScrollSection(title: "Coming Soon", posters: posters2)
              ScrollSection(title: "Top Movies", posters: posters3)
              ScrollSection(title: "Favorite", posters: posters1)
            }
            .padding(.bottom,90)
          }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity ,alignment: .top)
        
        
      }
      .background(LinearGradient(colors: backgroundColors, startPoint: .top, endPoint: .bottom))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
