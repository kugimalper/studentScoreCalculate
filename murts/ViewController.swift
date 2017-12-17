//
//  ViewController.swift
//  murts
//
//  Created by ST18 on 16.12.2017.
//  Copyright © 2017 ST18. All rights reserved.
//

import UIKit

var newString : String = ""
var formattedString : String = ""
class ViewController: UIViewController {
    
    func notHesaplama (not: Double, kaldi: Double) ->  String {
        
        var notDegeri: String
        
        if  not < kaldi  {
            notDegeri = "Kaldi"
            return notDegeri
        } else if not < 55  {
            notDegeri = "Geçer"
            return notDegeri
        } else if not < 70 {
            notDegeri = "Orta"
            return notDegeri
        } else if not < 85 {
            notDegeri = "İyi"
            return notDegeri
        } else {
            notDegeri = "Pekiyi"
            return notDegeri
        }
        
    }


    @IBOutlet weak var notInfoOutlet: UILabel!
    @IBOutlet weak var notOutlet: UITextField!
    @IBAction func hesaplaAction(_ sender: UIButton) {
        print ("hesapla Butonuna Bastım")
        print (notOutlet.text!)
        print(type (of:notOutlet.text!))
        
        
        newString = notOutlet.text!
        formattedString =  newString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if  Double(formattedString) != nil && Double(formattedString)! >= 0.00 {
            notInfoOutlet.text = notHesaplama(not: Double(formattedString)!, kaldi: 45.00)
        } else {
           notInfoOutlet.text = "Geçerli Bir Not Değeri Girmelisiniz!"
        }
        
      /*  if  notOutlet.text != " " && Double(notOutlet.text!) != nil && Double(notOutlet.text!)! >= 0.00 {
            notInfoOutlet.text = notHesaplama(not: Double(notOutlet.text!)!, kaldi: 45.00)
        } else {
            notInfoOutlet.text = "Geçerli Bir Not Değeri Girmelisiniz!"
        }
       */
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

