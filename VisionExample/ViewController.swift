//
//  ViewController.swift
//  VisionExample
//
//  Created by Sergey Grischyov on 01.02.2021.
//

import UIKit
import VisionUI

final class ViewController: UIViewController {
    @IBAction func startFlowClicked(_ sender: Any) {
        let vc = MainVisionVC()
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

extension ViewController: MainVisionVCDelegate {
    func didFinish(withResult: Result<VisionData, Error>, sender: MainVisionVC) {
        switch withResult {
        case .failure(let error):
            sender.showAlert(title: error.localizedDescription)
        default:
            break
        }
    }
    
    func didClickDismiss(sender: MainVisionVC) {
        sender.dismiss(animated: true)
    }
}
