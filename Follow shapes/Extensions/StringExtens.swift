//
//  StringExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 30/12/2020.
//  Copyright © 2020 Asif Razzaq. All rights reserved.
//

import Foundation
import UIKit

extension String {
    /**
        Localize string to support multiple language
     - loc - It is locale identifier
     */
//    func localizableString(loc: String? = Constants.language) -> String {
//        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
//        let bundle = Bundle(path: path!)
//        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
//    }
    
    /**
     This function returns NSAttributedString after undlerning the self string
     */
    func underlineString() -> NSAttributedString {
        let textRange = NSMakeRange(0, self.count)
        let attributedText = NSMutableAttributedString(string: self)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.PrimaryTextColor ?? .blue, range: textRange)
        return attributedText
    }
    
    func getAttributedString(with boldText: String) -> NSMutableAttributedString {
        let regularFONT = UIFont.HKGrotesk?.withSize(16) ?? UIFont.systemFont(ofSize: 16)
        let boldFont = UIFont.HKGroteskB?.withSize(16) ?? UIFont.boldSystemFont(ofSize: 16)
        
        let boldTextAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: boldFont,
            NSAttributedString.Key.foregroundColor: UIColor.black,
        ]
        
        let standartTextAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: regularFONT,
            NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        
        let regularTextAtt = NSMutableAttributedString(string: self, attributes: nil)
        regularTextAtt.addAttributes(standartTextAttributes, range: regularTextAtt.range(string: self))
        
        let boldTextAtt = NSMutableAttributedString(string: boldText)
        boldTextAtt.addAttributes(boldTextAttributes, range: boldTextAtt.range(string: boldText))
    
        boldTextAtt.append(regularTextAtt)
        
        return boldTextAtt
        
    }
    
    func isValidName() -> Bool {
        guard !self.isEmpty else {
            return false
        }
        do {
            let regex = try NSRegularExpression(pattern: ".*[^A-Za-z ].*", options: [])
            if regex.firstMatch(in: self, options: [], range: NSMakeRange(0, self.count)) != nil {
                 return false
            } else {
                return self.count > 1 && self.count < 30
            }
        }
        catch {

        }
        
        return false
    }
    
    func isValidPhoneNumber() -> Bool {
        let regEx = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phoneCheck = NSPredicate(format: "SELF MATCHES[c] %@", regEx)
        return phoneCheck.evaluate(with: self)
    }
    
    func getCustomAttributedString(with boldText: String) -> NSMutableAttributedString {
        let regularFONT = UIFont.HKGrotesk?.withSize(16) ?? UIFont.systemFont(ofSize: 16)
        let boldFont = UIFont.HKGroteskB?.withSize(16) ?? UIFont.boldSystemFont(ofSize: 16)
        
        let boldTextAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: boldFont,
            NSAttributedString.Key.foregroundColor: UIColor.PrimaryTextColor ?? UIColor.green,
        ]
        
        let standartTextAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: regularFONT,
            NSAttributedString.Key.foregroundColor: UIColor.PrimaryTextColor ?? UIColor.green
        ]
        
        let regularTextAtt = NSMutableAttributedString(string: self, attributes: nil)
        regularTextAtt.addAttributes(standartTextAttributes, range: regularTextAtt.range(string: self))
        
        let boldTextAtt = NSMutableAttributedString(string: boldText)
        boldTextAtt.addAttributes(boldTextAttributes, range: boldTextAtt.range(string: boldText))
    
        regularTextAtt.append(boldTextAtt)
        
        return regularTextAtt
        
    }
    
//    func convertToDouble() -> Double {
//        Double(self) ?? DefaultValue.double
//    }
//    
//    
//    func convertToDate() -> Date? {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = Constants.SERVER_DATE_FORMAT
//        return dateFormatter.date(from: self)
//    }
    
//    func convertToLocalDateFromUTCDateString() -> String {
//        let formatter = DateFormatter()
//        formatter.dateFormat = Constants.SERVER_DATE_FORMAT
//        let sourceDate = formatter.date(from: self)
//        let formatter2 = DateFormatter()
//        
//        if Utils.shared.dateBeforeToday(date: sourceDate ?? Date()) {
//            formatter2.dateFormat = "dd MMM h:mm a"
//        } else {
//            formatter2.dateFormat = "h:mm a"
//        }
//        
//        let localTime = formatter2.string(from: sourceDate!)
//        return localTime
//    }
//    
//    func convertToUserModel(_ completion: (UserData?) -> Void) {
//        convertStringToJson(completion)
//    }
//    
//    func convertStringToJson<T: APIResponse>(_ completion: (T?) -> Void ) {
//        let data = self.data(using: .utf8)!
//        
//        do {
//            let response = try JSONDecoder().decode(T.self, from: data)
//            completion(response)
//            
//        } catch let error {
//            print(error.localizedDescription)
//            completion(nil)
//        }
//        
//    }
    
    func convertStringToDic(_ completion: ([String: Any]?) -> Void ) {
        let data = self.data(using: .utf8)!
        do {
            if let jsonDic = try JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [String: Any]
            {
                print(jsonDic)
                completion(jsonDic)
            } else {
                print("bad json")
                completion(nil)
            }
        } catch let error as NSError {
            print(error)
        }
    }
    
    func characterAtIndex(index: Int) -> Character? {
        var cur = 0
        for char in self {
            if cur == index {
                return char
            }
            cur += 1
        }
        return nil
    }
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
    
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
    
}
