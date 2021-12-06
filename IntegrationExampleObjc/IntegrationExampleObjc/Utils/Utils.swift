//
//  Utils.swift
//  TestClient
//
//  Created by ITechPSP on 8/10/18.
//  Copyright © 2018 ITechPSP. All rights reserved.
//

import UIKit

class Utils: NSObject {
    @objc(signature:secret:)
    class func signature(paramsToSign: String, secret: String) -> String {
        return paramsToSign.sha512(secret: secret)!.base64EncodedString();
    }
}
