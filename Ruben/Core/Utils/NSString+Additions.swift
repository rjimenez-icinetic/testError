//
//  String+Helper.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

extension NSString {

    func isUrl() -> Bool {

        let linkDetector: NSDataDetector?
        do {
            
            linkDetector = try NSDataDetector(types: NSTextCheckingType.Link.rawValue)
            
        } catch _ {
            
            linkDetector = nil
        }
        
        guard let detector = linkDetector else {
        
            return false
        }
    
        let range = NSMakeRange(0, length)
        
        if 1 != detector.numberOfMatchesInString(self as String, options: NSMatchingOptions(rawValue: 0), range: range) {
        
            return false
        }
        
        let result = detector.firstMatchInString(self as String, options: NSMatchingOptions(rawValue: 0), range: range)
        
        guard let res = result else {
        
            return false
        }
        
        return res.resultType == .Link && NSEqualRanges(res.range, range)
    }
    
    func trim() -> String {
        
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}