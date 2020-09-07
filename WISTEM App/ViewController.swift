//
//  ViewController.swift
//  WISTEM App
//
//  Created by Uditi Sharma on 05/09/2020.
//  Copyright © 2020 Surender Sharma. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseStorage

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let pickerArray = ["High schooler","Undergraduate","Masters","PhD", "Working"]
    var selectedLevel = ""
    
    let ref = Database.database().reference()
    let storage = Storage.storage().reference()
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    
    
    @IBOutlet weak var descriptionTF: UITextView!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func camera_clicked(_ sender: Any) {
        
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
        textView.resignFirstResponder()
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("finished editing")
        
        guard let image = info[.editedImage] as? UIImage else { return }
        
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let storageRef = Storage.storage().reference()
        let thisUserPhotoStorageRef = storageRef.child("\(nameTF.text)'s image!").child("image")
        
        let uploadTask = thisUserPhotoStorageRef.putData(imageData, metadata: nil) { (metadata, error) in
            guard let metadata = metadata else {
                print("error while uploading")
                return
            }
            
            thisUserPhotoStorageRef.downloadURL { (url, error) in
                print(metadata.size) // Metadata contains file metadata such as size, content-type.
                thisUserPhotoStorageRef.downloadURL { (url, error) in
                    guard let downloadURL = url else {
                        print("an error occured after uploading and then getting the URL")
                        return
                    }
                }
            }
            self.imageView.image = image
            
            picker.dismiss(animated: true)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.delegate = self
        nameTF.delegate = self
        nameTF.tag = 1
        
        emailTF.delegate = self
        emailTF.tag = 2
        
        ageTF.delegate = self
        ageTF.tag = 3
                
        descriptionTF.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTF.resignFirstResponder()
        ageTF.resignFirstResponder()
        emailTF.resignFirstResponder()
        descriptionTF.resignFirstResponder()
        
    }
    // submit button clicked
    @IBAction func submit_clicked(_ sender: Any) {
        
        let post = [
            "Name":  "\(nameTF.text ?? "no name")",
            "Email": "\(emailTF.text ?? "no email")",
            "Age":   "\(ageTF.text ?? "no age")",
            "Currently in":   "\(selectedLevel)",
            "Description":   "\(descriptionTF.text ?? "no description")",
        ]
        ref.child("Posts").childByAutoId().setValue(post)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedLevel = pickerArray[row]
        print(selectedLevel)
    }
}
