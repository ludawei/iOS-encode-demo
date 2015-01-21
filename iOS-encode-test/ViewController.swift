//
//  ViewController.swift
//  iOS-encode-test
//
//  Created by 卢大维 on 15/1/21.
//  Copyright (c) 2015年 weather. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let txt:NSString = "abc=def"
        NSLog("%@", LDEncode.getMd5_16Bit_String(txt));
        NSLog("%@", LDEncode.getMd5_32Bit_String(txt))
        NSLog("%@", LDEncode.getSha1String(txt))
        NSLog("%@", LDEncode.getSha256String(txt))
        NSLog("%@", LDEncode.getSha384String(txt))
        NSLog("%@", LDEncode.getSha512String(txt))
        
        let baseTxt = Base64.encodeString(txt)
        NSLog("%@", baseTxt)
        NSLog("%@", Base64.decodeString(baseTxt))
        
        let data:NSData = NSData(base64EncodedString: baseTxt, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)!
        NSLog("%@", data)
        let gzipData = data.gzippedData()
        NSLog("%@", gzipData)
        NSLog("%@", gzipData.gunzippedData())
        
        NSLog("%@", LDEncode.testOpenssl(txt))
        
        NSLog("%@", LDEncode.urlEncodeString(txt, encode: NSASCIIStringEncoding))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

