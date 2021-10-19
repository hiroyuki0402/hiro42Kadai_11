//
//  InputViewController.swift
//  Hiro42Kadai11
//
//  Created by 白石裕幸 on 2021/10/16.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet private weak var prefectureLabel: UILabel! {
        didSet {
            prefectureLabel.text = "未選択"
        }
    }
    @IBAction private func choicePrefectureButton(_ sender: Any) {
        let choiceVc = ChoicePrefecturesViewController.instantiate()
        let navigationController = UINavigationController(rootViewController: choiceVc)
        navigationController.modalPresentationStyle = .fullScreen
        choiceVc.delegate = self
        present(navigationController, animated: true)
    }
}
extension InputViewController: ChoicePrefecturesViewControllerDelegate {
    func didSelectPrefecture(prefectureName: String) {
        prefectureLabel.text = prefectureName
    }
}
