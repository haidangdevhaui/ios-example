//
//  AddAnimeViewController.swift
//  BaiTapLon
//
//  Created by Vũ Hải Đăng on 9/25/18.
//  Copyright © 2018 haidang.baitaplon. All rights reserved.
//

import UIKit

class AddAnimeViewController: UITableViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var pickerAuthor: UIPickerView!
    @IBOutlet weak var textFieldImage: UITextField!
    
    var anime : Anime?
    var authorId: Int? = authorData[authorData.count - 1].id
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerAuthor.dataSource = self
        pickerAuthor.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            textFieldName.becomeFirstResponder()
        } else if indexPath.section == 1 {
            
        } else if indexPath.section == 2 {
            textFieldImage.becomeFirstResponder()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SaveAnimeSegue" {
//            self.anime = Anime(id: 5, name: self.textFieldName.text ?? "Default name", author_id: authorId!, image: self.textFieldImage.text ?? "")
        }
    }
}

extension AddAnimeViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return authorData.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        authorId = authorData[row].id
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return authorData[row].name
    }
}
