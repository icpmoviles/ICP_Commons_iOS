//
//  UtilsCommons.swift
//  ICP_Commons_iOS
//
//  Created by felipecambas on 11/4/22.
//

import Foundation
import UIKit


public class UtilsCommons {
    
    
    /// Pinta por pantalla el popup dedicado a los errores
    ///
    /// - Parameters:
    ///   - mensaje: la cadena String a mostrar en el label de mensaje
    ///   - controller: La propia vista donde se va a mostrar el popup, normalmente self
    func presentarPopupEditText(mensaje: String, keyboardType: UIKeyboardType = .default, controller : UIViewController, delegate : UIViewControllerTransitioningDelegate){
        let sb = UIStoryboard(name: "PopupEditText", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! PopupEditTextViewController
        popup.mensaje = mensaje
        
        popup.keyboardType = keyboardType
        popup.transitioningDelegate = delegate
        popup.modalPresentationCapturesStatusBarAppearance = true
        popup.modalPresentationStyle = .custom
        
        controller.present(popup, animated: true) {
            NotificationCenter.default.addObserver(self, selector: #selector(self.handleEditText), name: Constantes.popUpEditText, object: nil)
        }
    }
    @objc func handleEditText(notification: Notification) {
        NotificationCenter.default.removeObserver(self)
    }

}
