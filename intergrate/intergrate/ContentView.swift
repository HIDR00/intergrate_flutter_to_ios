//
//  ContentView.swift
//  intergrate
//
//  Created by mobile on 27/12/24.
//

import SwiftUI
import Flutter

struct FlutterViewControllerRepresentable: UIViewControllerRepresentable {
  // Flutter dependencies are passed in through the view environment.
  @Environment(FlutterDependencies.self) var flutterDependencies
  
  func makeUIViewController(context: Context) -> some UIViewController {
    return FlutterViewController(
      engine: flutterDependencies.flutterEngine,
      nibName: nil,
      bundle: nil)
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
              NavigationLink("My Flutter Feature") {
                FlutterViewControllerRepresentable()
              }
            }
    }
}

#Preview {
    ContentView()
}
