
    import UIKit

    /*******************************************************************************************************************
    *   This is the main application delegate. It creates the window where your app's content is drawn
    *   and provides a place to respond to state transitions within the app. The file creates the entry point
    *   to your app and a run loop that delivers input events to your app.
    *
    *   @author  Christopher Stock
    *   @version 0.0.1
    *******************************************************************************************************************/
    @UIApplicationMain
    class SoundBoard : UIResponder, UIApplicationDelegate
    {
        /***************************************************************************************************************
        *   The window instance.
        ***************************************************************************************************************/
        var window : UIWindow?

        /***************************************************************************************************************
        +   Override point for customization after application launch.
        *
        *   @param application
        *   @paran didFinishLaunchingWithOptions
        ***************************************************************************************************************/
        func application( _ application:UIApplication, didFinishLaunchingWithOptions launchOptions:[UIApplicationLaunchOptionsKey:Any]? ) -> Bool
        {
            print( "SoundBoard::didFinishLaunchingWithOptions()" );
            
            return true
        }

        /***************************************************************************************************************
        *
        *   Sent when the application is about to move from active to inactive state. This can occur for certain
        *   types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits
        *   the application and it begins the transition to the background state.
        *
        *   Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks.
        *   Games should use this method to pause the game.
        ***************************************************************************************************************/
        func applicationWillResignActive( _ application:UIApplication )
        {
        }

        /***************************************************************************************************************
        *   Being invoked when the application enters the background.
        *
        *   Use this method to release shared resources, save user data, invalidate timers,
        *   and store enough application state information to restore your application to its current state
        *   in case it is terminated later.
        *
        *   If your application supports background execution, this method is called instead of
        *   applicationWillTerminate: when the user quits.
        *
        *   @param application The application instance.
        ***************************************************************************************************************/
        func applicationDidEnterBackground( _ application:UIApplication )
        {
        }

        /***************************************************************************************************************
        *   Being invoked when the application enters the foreground.
        *
        *   Called as part of the transition from the background to the active state;
        *   here you can undo many of the changes made on entering the background.
        *
        *   @param application The application instance.
        ***************************************************************************************************************/
        func applicationWillEnterForeground( _ application:UIApplication )
        {
        }

        /***************************************************************************************************************
        *   Being invoked when the application has become active.
        *
        *   Restart any tasks that were paused (or not yet started) while the application was inactive.
        *   If the application was previously in the background, optionally refresh the user interface.
        *
        *   @param application The application instance.
        ***************************************************************************************************************/
        func applicationDidBecomeActive( _ application:UIApplication )
        {
        }

        /***************************************************************************************************************
        *   Being invoked when the application terminates.
        *
        *   Called when the application is about to terminate. Save data if appropriate.
        *   See also applicationDidEnterBackground.
        *
        *   @param application The application instance.
        ***************************************************************************************************************/
        func applicationWillTerminate( _ application:UIApplication )
        {
        }
    }
