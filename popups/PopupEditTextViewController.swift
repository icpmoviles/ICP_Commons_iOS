//
//  PopupEditTextViewController.swift
//  ICP_Commons_iOS
//
//  Created by felipecambas on 11/4/22.
//

import UIKit

class PopupEditTextViewController: UIViewController {

    @IBOutlet weak var editText: UITextField!
    @IBOutlet weak var lblMensaje: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    
    var titulo : String = "Atención"
    var mensaje : String = ""
    var requestCode : Int = 0
    
    weak var delegate : EditTextDelegate?
    var keyboardType : UIKeyboardType = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblMensaje.text = mensaje
        lblTitulo.text = titulo
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
        editText.keyboardType = keyboardType
        editText.delegate = self
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func actionCancelar(_ sender: Any) {
        //dismiss(animated: true)
        editText.text = ""
        escapar("")
    }
    @IBAction func primaryActionTextField(_ sender: Any) {
        escapar("")
    }
    
    @IBAction func actionAceptar(_ sender: Any) {
        escapar(self.editText.text!)
    }
    
    func escapar(_ texto : String)
    {
        dismiss(animated: true)
        self.delegate?.aceptar(requestCode: requestCode, response: texto)
    }

}

extension PopupEditTextViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        editText.resignFirstResponder()
        return true
    }
}


protocol EditTextDelegate : AnyObject {
    func aceptar (requestCode : Int, response : String)
}

