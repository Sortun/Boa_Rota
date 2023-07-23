import UIKit
import Flutter
import GoogleMaps


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let key: String FlutterConfigPlugin.env(for: "Nome da chave")
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("CODIGO DA CHAVE")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
