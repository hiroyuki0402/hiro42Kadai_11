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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(prefectureLabel.text!)
    }
    @IBAction private func choicePrefectureButton(_ sender: Any) {
        guard let choiceVc = storyboard?.instantiateViewController(identifier: "prefecture")
                as? ChoicePrefecturesViewController else { return }
        choiceVc.delegate = self
        present(choiceVc, animated: true)
    }
}
extension InputViewController: ChoicePrefecturesViewControllerDelegate {
    func didSelectPrefecture(prefectureName: String) {
        prefectureLabel.text = prefectureName
    }
}
