//
//  Constant.swift
//  Bibleness
//
//  Created by SOTSYS140 on 29/05/17.
//  Copyright © 2017 Chiragl.Spaceo. All rights reserved.
//

import UIKit
public extension UIDevice {
    
    static let modelName: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        func mapToDevice(identifier: String) -> String { // swiftlint:disable:this cyclomatic_complexity
            #if os(iOS)
            switch identifier {
            case "iPod5,1":                                 return "iPod Touch 5"
            case "iPod7,1":                                 return "iPod Touch 6"
            case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
            case "iPhone4,1":                               return "iPhone 4s"
            case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
            case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
            case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
            case "iPhone7,2":                               return "iPhone 6"
            case "iPhone7,1":                               return "iPhone 6 Plus"
            case "iPhone8,1":                               return "iPhone 6s"
            case "iPhone8,2":                               return "iPhone 6s Plus"
            case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
            case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
            case "iPhone8,4":                               return "iPhone SE"
            case "iPhone10,1", "iPhone10,4":                return "iPhone 8"
            case "iPhone10,2", "iPhone10,5":                return "iPhone 8 Plus"
            case "iPhone10,3", "iPhone10,6":                return "iPhone X"
            case "iPhone11,2":                              return "iPhone XS"
            case "iPhone11,4", "iPhone11,6":                return "iPhone XS Max"
            case "iPhone11,8":                              return "iPhone XR"
            case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
            case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
            case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
            case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
            case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
            case "iPad6,11", "iPad6,12":                    return "iPad 5"
            case "iPad7,5", "iPad7,6":                      return "iPad 6"
            case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
            case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
            case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
            case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
            case "iPad6,3", "iPad6,4":                      return "iPad Pro (9.7-inch)"
            case "iPad6,7", "iPad6,8":                      return "iPad Pro (12.9-inch)"
            case "iPad7,1", "iPad7,2":                      return "iPad Pro (12.9-inch) (2nd generation)"
            case "iPad7,3", "iPad7,4":                      return "iPad Pro (10.5-inch)"
            case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":return "iPad Pro (11-inch)"
            case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":return "iPad Pro (12.9-inch) (3rd generation)"
            case "AppleTV5,3":                              return "Apple TV"
            case "AppleTV6,2":                              return "Apple TV 4K"
            case "AudioAccessory1,1":                       return "HomePod"
            case "i386", "x86_64":                          return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))"
            default:                                        return identifier
            }
            #elseif os(tvOS)
            switch identifier {
            case "AppleTV5,3": return "Apple TV 4"
            case "AppleTV6,2": return "Apple TV 4K"
            case "i386", "x86_64": return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))"
            default: return identifier
            }
            #endif
        }
        
        return mapToDevice(identifier: identifier)
    }()
    
}
/********************////
// App theme color
let kAppThemeDarkGrayColor = UIColor(red:116/255, green:116/255, blue:116/255, alpha:1.00)

// App Hind Font
let fontRobotoMedium = UIFont(name: "Roboto-Medium", size: 16)
var appLocaleIdentifier: String = Locale.current.identifier

//API Parameter Name
//******************************************************

var frompendingornot = true
var useremail = ""
var userOTP = ""
var radialstrock : CGFloat = 31
var fileurl : URL!
var fileidentify  = ""
var filemimetype = ""
var arrwork : [String] = []
var imgmatch : UIImage = UIImage()
var imgmatchverify : UIImage = UIImage()
var imgSign : UIImage = UIImage()
var isfaceblinkcount : Bool = false
var arrcleartextvalue : NSArray = NSArray()
var arrIDCardvalue = [String]()
var arrArabicIDCardvalue = [String]()
var lang = "English"
var viewback : Bool = false
var arrbarcodedetail = [String]()
var dictQRdetail = [String : String]()
var dictIDdetail = [String : String]()
var strScore = "0"
var strLocation = ""
var strCountry = ""
var strPassportCountry = ""
var strcity = ""
var strabbreviation = ""
var passportornot : Int = 0
var imageHeight : CGFloat = 0
var imageWidth : CGFloat = 0
var faceangleleftorright : Bool = false
var randomwords  = ""
var devicetoken  = ""
var systemVersion = ""
var modelName = ""
var strfaceid1 = ""
var strfaceid2 = ""
var appVersion = ""
var IDNumber  = ""
var LanguageName = ["en","af","az","be","bg","ca","zh","hr","cs","da","nl","et","fil","fi","fr","de","el","he","hi","hu","is","id","it","ja","kk","ko","ky","lv","lt","mk","mn","ne","nn-NO","ps","fa","pl","pt","ro","ru","sr","sk","sl","es","sv","th","tr","uk","ur","uz","vi"]

class Constant: NSObject {
    
    struct AlertMessage
    {
        static let kAlertMsgNoInternet = "No Internet connection is found"
        static let kAlertMsgSomethingWentWrong = "Something went wrong..."
    }
    
    struct AlertButton
    {
        static let kAlertButtonOK = "OK"
        static let kAlertButtonCancel = "Cancel"
        static let kAlertButtonYes = "Yes"
        static let kAlertButtonNo = "No"
    }
    
    struct AlertTitle
    {
        static let kAlertTitleAppName = "IDMValidate"
        static let kAlertTitleInvalid = "Invalid"
        static let kAlertTitleSuccess  = "Success"
        static let kAlertTitleError  = "Error"
        static let kAlertTitleNoInternet = "No Internet!"
        static let kAlertTitleEmail = "Could Not Send Email"
        static let kAlertTitleSorry = "Sorry"
        
    }
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
        static let IS_IPAD_PRO          = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1366.0
    }
    
    struct ControllerName
    {
        static let VCMain = "MainVC"
        
    }
    
    struct ApiNames
    {
        static let Vlogin = "Register/Index"
        
    }
    
    struct HeaderType {
        
        static let HeaderCheckOut = "application/x-www-form-urlencoded"
        static let KACCESSTOKEN = "KAccessToken"
        
    }
    
    struct StatusCode
    {
        static let codeOk = 200
        static let codecodeBadrequest = 400
        static let statusCodeOk = "OK"
        static let codeNovalue = 302
        static let codeDealCompleted = 303
    }
    
    struct StatusErrorMessade {
        
        static let response_message = "Message"
    }
    
    struct StaticNameOfVariable
    {
        //For Card
        static let VFirstname = "Firstname"
        static let VMiddlename = "Middlename"
        static let VLastname = "Lastname"
        static let VDateOB = "DOB"
        static let VISSDate = "Issuedate"
        static let VExpDate = "Expiry"
        static let VLicenseNo = "License"
        static let VCountry = "Country"
        static let VBarcodeAddress = "Address"
        static let VStreet = "Street"
        static let VBarcodeCity = "City"
        static let VStateCode = "StateCode"
        static let VPostalCode = "PostalCode"
        
        static let Vresult = "result"
        
        static let Vadd1 = "add1"
        static let Vadd2 = "add2"
        static let Vcountry = "country"
        static let Vdl = "dl"
        static let Vdob = "dob"
        static let Vexp = "exp"
        static let Vfn = "fn"
        static let Viss = "iss"
        static let Vln = "ln"
        
        
        static let VDL = "DL"
        static let VEXP = "EXP"
        static let VLN = "LN"
        static let VFN = "FN"
        static let VADD1 = "ADD1"
        static let VADD2 = "ADD2"
        static let VDOB = "DOB"
        static let VISS = "ISS"
        static let VCOUNTRY = "COUNTRY"
        
        static let VfaceId1 = "faceId1"
        static let VfaceId2 = "faceId2"
        
        static let Vdevice_token = "device_token"
        static let Vdevice_model = "device_model"
        static let Vos_version = "os_version"
        
        
        static let Vlanguage = "language"
        static let VdetectOrientation = "detectOrientation"
        
        //Extra
        static let Vemail = "email"
        
        //API
        static let Vdata = "data"
        static let Vstatus = "status"
        
    }
    
    class func XSET_STRING(_ key:String,_ value:String)
    {
        UserDefaults.standard.set(value, forKey:key)
        // LDAppSingleton.XSYNC()
    }
}
func stringfromdate(strDate : String) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    let date = dateFormatter.date(from:strDate)
    dateFormatter.dateFormat = "dd MMM yyyy"
    return dateFormatter.string(from: date!)
}
func stringfromholiday(strDate : String) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMM yyyy"
    let date = dateFormatter.date(from:strDate)
    dateFormatter.dateFormat = "dd MMM"
    return dateFormatter.string(from: date!)
}
struct myStrings
{
    static let KUSERID = "KUserID"
    static let KACCESSTOKEN = "KAccessToken"
}
extension String {
    var westernArabicNumeralsOnly: String {
        let pattern = UnicodeScalar("0")..."9"
        return String(unicodeScalars
            .flatMap { pattern ~= $0 ? Character($0) : nil })
    }
}
extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
func AnimationShakeTextField(_ textField:UITextField){
    let animation = CABasicAnimation(keyPath: "position")
    animation.duration = 0.07
    animation.repeatCount = 4
    animation.autoreverses = true
    animation.fromValue = NSValue(cgPoint: CGPoint(x: textField.center.x - 5, y: textField.center.y))
    animation.toValue = NSValue(cgPoint: CGPoint(x: textField.center.x + 5, y: textField.center.y))
    textField.layer.add(animation, forKey: "position")
}
func moveOnHome(view : UIView){
    /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
     
     let sw = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
     view.window?.rootViewController = sw
     let destinationController = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
     
     let navigationController = UINavigationController(rootViewController: destinationController)
     
     sw.pushFrontViewController(navigationController, animated: true)
     print("LogIn success full")*/
}
func setviewImage(view : UIView){
    view.backgroundColor = UIColor.white
    view.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    view.layer.borderWidth = 1.0
    //  view.layer.opacity = 0.6
    view.layer.shadowRadius = 5
    view.layer.shadowOpacity = 0.35
    view.layer.shadowOffset = CGSize(width: 0, height: 0)
    view.layer.cornerRadius = 6
}
//Scan View
@available(iOS 11.0, *)
func detectedLangauge<T: StringProtocol>(_ forString: T) -> String? {
    guard let languageCode = NSLinguisticTagger.dominantLanguage(for: String(forString)) else {
        return nil
    }
    let detectedLangauge = Locale.current.localizedString(forIdentifier: languageCode)
    return detectedLangauge
}
func setdatefromstring(strdate : String) -> String
{
    var datestr:Date? = nil
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMddyyyy"
    datestr = dateFormatter.date(from: strdate)
    if dateFormatter.date(from: strdate) != nil{
        dateFormatter.dateFormat = "MM/dd/yyyy"
    }else{
        dateFormatter.dateFormat = "yyyyMMdd"
        datestr = dateFormatter.date(from: strdate)
        dateFormatter.dateFormat = "MM/dd/yyyy"
    }
    return String(dateFormatter.string(from: datestr!))
}
func cropImage(image: UIImage, toRect: CGRect) -> UIImage? {
    let cgImage :CGImage! = image.cgImage
    let croppedCGImage: CGImage! = cgImage.cropping(to: toRect)
    return UIImage(cgImage: croppedCGImage)
}
func toCIImage(image: UIImage) -> CIImage {
    return image.ciImage ?? CIImage.init(cgImage:  image.cgImage!)
}

func getCity(city : String , abbreviation : String) -> String{
    if let range = city.range(of: abbreviation) {
        let firstPartIncludingDelimiter = city.substring(to: range.lowerBound)
        var editedText = firstPartIncludingDelimiter.replacingOccurrences(of: ",", with: "")
        return editedText
    }
    return ""
}
