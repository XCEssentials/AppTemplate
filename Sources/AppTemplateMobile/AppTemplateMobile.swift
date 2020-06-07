import UIKit

//---

@UIApplicationMain
class AppTemplateMobile: UIResponder
{
    var window: UIWindow?
}

//---

extension AppTemplateMobile: UIApplicationDelegate
{
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey: Any]?
        ) -> Bool
    {
        window = .init()
        window?.rootViewController = .init()
        window?.rootViewController?.view.backgroundColor = .green
        window?.makeKeyAndVisible()
        return true
    }
}
