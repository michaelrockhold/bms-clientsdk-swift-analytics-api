/*
*     Copyright 2016 IBM Corp.
*     Licensed under the Apache License, Version 2.0 (the "License");
*     you may not use this file except in compliance with the License.
*     You may obtain a copy of the License at
*     http://www.apache.org/licenses/LICENSE-2.0
*     Unless required by applicable law or agreed to in writing, software
*     distributed under the License is distributed on an "AS IS" BASIS,
*     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*     See the License for the specific language governing permissions and
*     limitations under the License.
*/


/**
    Set of device events that the `Analytics` class will listen for. Whenever an event of the specified type occurs, analytics data for that event get recorded.

    - Note: Register DeviceEvents in the `Analytics.initializeWithAppName()` method
*/
public enum DeviceEvent {
    
    /// Records the duration of the app's lifecycle from when it enters the foreground to when it goes to the background.
    /// - Note: Only available for iOS apps. For watchOS apps, manually call the `recordApplicationDidBecomeActive()` and `recordApplicationWillResignActive()` methods in the appropriate `ExtensionDelegate` methods.
    case LIFECYCLE
}


/**
    `Analytics` provides a means of capturing analytics data and sending the data to the mobile analytics service.
*/
public class Analytics {
    
    
    // MARK: Properties (public)
    
    /// Determines whether analytics logs will be persisted to file.
    public static var enabled: Bool = true
    
    /// The unique ID used to send logs to the Analytics server
    public private(set) static var apiKey: String?
    
    /// The name of the iOS/WatchOS app
    public private(set) static var appName: String?
    
    /// Identifies the current application user.
    /// To reset the userId, set the value to nil.
    public static var userIdentity: String? {
        didSet {
            // TODO: Passthrough to BMSAnalytics
        }
    }
    
    
    
    // MARK: Methods (public)
    
    
    /**
        The required initializer for the `Analytics` class when communicating with a Bluemix analytics service.
        
        This method must be called after the `BMSClient.initializeWithBluemixAppRoute()` method and before calling `Analytics.send()` or `Logger.send()`.
        
        - parameter appName:        The application name.  Should be consistent across platforms (e.g. Android and iOS).
        - parameter apiKey:         A unique ID used to authenticate with the Bluemix analytics service
        - parameter deviceEvents:   Device events that will be recorded automatically by the `Analytics` class
    */
    public static func initializeForBluemix(appName appName: String?, apiKey: String?, deviceEvents: DeviceEvent...) {
        
        // TODO: Passthrough to BMSAnalytics
    }
    
    
    /**
         Write analytics data to file.
         
         Similar to the `Logger` class logging methods, old logs will be removed if the file size exceeds the `Logger.maxLogStoreSize` property.
         
         When ready, use the `Analytics.send()` method to send the logs to the Bluemix server.
         
         - parameter metadata:  The analytics data
     */
    public static func log(metadata: [String: AnyObject]) {
        
        // TODO: Passthrough to BMSAnalytics
    }
    
    
    /**
         Send the accumulated analytics logs to the Bluemix server.
         
         Analytics logs can only be sent if the BMSClient was initialized via the `initializeWithBluemixAppRoute()` method.
         
         - parameter completionHandler:  Optional callback containing the results of the send request
     */
    public static func send(completionHandler userCallback: AnyObject? = nil) {
        
        // TODO: Passthrough to BMSAnalytics
    }
    
}