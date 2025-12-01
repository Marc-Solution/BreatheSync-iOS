//
//  ContentView.swift
//  BreatheSync iOS
//
//  Created by Marco Deb on 2025-12-01.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundColor = Color(hex: "E0F7FA")
    
    let buttonColor = Color(hex: "00BBD3")
    
    var body: some View {
      
        NavigationStack {
            VStack {
                Spacer()
                Text("BreatheSync")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    // Match the color from the image (or use the button color)
                    .foregroundStyle(buttonColor)
                Spacer()
                
                NavigationLink {
                    meditation1View()
                } label: {
                    
                    VStack {
                        Text("Box Breathing")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("4-4-4-4")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 270, height: 110)
                    .background(buttonColor)
                    .cornerRadius(30)
                    .padding(10)
                }
                .buttonStyle(.plain)
                
                NavigationLink {
                    meditation2View()
                } label: {
                    VStack {
                        Text("Box Breathing")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("6-2-8")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 270, height: 110)
                    .background(buttonColor)
                    .cornerRadius(30)
                    .padding(10)
                }
                
                NavigationLink {
                    meditation3View()
                } label: {
                    VStack {
                        Text("Flow Breathing")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("5 in / 6 out")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 270, height: 110)
                    .background(buttonColor)
                    .cornerRadius(30)
                    .padding(10)
                }
                
                NavigationLink {
                    meditation4View()
                } label: {
                    VStack {
                        Text("Flow Breathing")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        Text("4 in / 8 out")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 270, height: 110)
                    .background(buttonColor)
                    .cornerRadius(30)
                    .padding(10)
                }
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
            .ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(backgroundColor, for: .navigationBar)
           // .toolbarBackground(.visible, for: .navigationBar)
        }
        }
    }
        



#Preview {
    ContentView()
}
