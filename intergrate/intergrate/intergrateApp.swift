//
//  intergrateApp.swift
//  intergrate
//
//  Created by mobile on 27/12/24.
//

import SwiftUI
import Flutter
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant


@Observable
class FlutterDependencies {
 let flutterEngine = FlutterEngine(name: "my flutter engine")
 init() {
   // Runs the default Dart entrypoint with a default Flutter route.
   flutterEngine.run()
 }
}

@main
struct intergrateApp: App {
    @State var flutterDependencies = FlutterDependencies()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(flutterDependencies)
        }
    }
}
