//
//  meditation1View.swift
//  BreatheSync iOS
//
//  Created by Marco Deb on 2025-12-01.
//

import SwiftUI

let backgroundColor = Color(hex: "F3FFFF")
let buttonColor = Color(hex: "33E4DB")

struct meditation1View: View {
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
                  
                  // Pushes content down slightly from the top
                  Spacer()
                      .frame(height: 50)
                  
                  // MARK: - Breathing Pattern Display
                  VStack(alignment: .leading, spacing: 10) {
                      
                      Text("Breathing Pattern")
                          .font(.largeTitle)
                          .fontWeight(.bold)
                          .foregroundStyle(buttonColor) // Use the same teal color
                          .padding(.bottom, 20)
                      
                      // Use a Grid or HStack/VStack combo for the pattern times
                      Grid(alignment: .leading, horizontalSpacing: 20) {
                          GridRow {
                              Text("Inhale").foregroundStyle(buttonColor)
                              Text("-")
                              Text("4")
                          }
                          GridRow {
                              Text("Hold").foregroundStyle(buttonColor)
                              Text("-")
                              Text("4")
                          }
                          GridRow {
                              Text("Exhale").foregroundStyle(buttonColor)
                              Text("-")
                              Text("4")
                          }
                          GridRow {
                              Text("Hold").foregroundStyle(buttonColor)
                              Text("-")
                              Text("4")
                          }
                      }
                      .font(.title2)
                      
                      Spacer() // Pushes the pattern up
                  }
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.horizontal, 40)
                  
                  // MARK: - Control Buttons
                  VStack(spacing: 40) {
                      HStack(spacing: 30) {
                          
                          // 1. Rewind 15 Seconds Button
                          Button {
                              // Action: rewind 15s (logic will go here)
                          } label: {
                              ZStack {
                                  Circle()
                                      .stroke(buttonColor, lineWidth: 2) // Thin teal border
                                      .frame(width: 60, height: 60)
                                  Image(systemName: "gobackward.15") // SF Symbol for rewind
                                      .font(.title3)
                                      .foregroundStyle(buttonColor)
                              }
                          }

                          // 2. Play/Pause Button (The main control)
                          Button {
                              isPlaying.toggle() // Simple UI toggle for now
                          } label: {
                              Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                                  .font(.system(size: 40)) // Larger icon size
                                  .frame(width: 80, height: 80) // Larger tap target
                                  .background(buttonColor) // Solid teal background
                                  .foregroundStyle(.white)
                                  .clipShape(Circle())
                                  .shadow(radius: 5) // Subtle shadow
                          }

                          // 3. Fast Forward 15 Seconds Button
                          Button {
                              // Action: fast forward 15s (logic will go here)
                          } label: {
                              ZStack {
                                  Circle()
                                      .stroke(buttonColor, lineWidth: 2) // Thin teal border
                                      .frame(width: 60, height: 60)
                                  Image(systemName: "goforward.15") // SF Symbol for fast-forward
                                      .font(.title3)
                                      .foregroundStyle(buttonColor)
                              }
                          }
                      }
                      
                      // MARK: - Progress Bar and Timer
                      VStack(spacing: 10) {
                          // Placeholder for the progress bar (looks like a thin line in the image)
                          Rectangle()
                              .frame(height: 4)
                              .foregroundStyle(buttonColor.opacity(0.5)) // Lighter teal color for the bar
                              .padding(.horizontal, 30)
                          
                          // Timer text
                          Text("00:00 / 03:52")
                              .font(.callout)
                              .foregroundStyle(.gray)
                      }
                      .padding(.bottom, 40) // Spacing from the bottom edge
                  }
                  
              }
              // Set the background for the entire view
              .background(backgroundColor.ignoresSafeArea(.all))
              
              // Set the title for the system navigation bar
              .navigationTitle("Box Breathing 4-4-4-4")
              
              // Ensure the title is always visible
              .navigationBarTitleDisplayMode(.inline)
    }
        
}

#Preview {
    meditation1View()
}
