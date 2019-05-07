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
        return true
    }
}
