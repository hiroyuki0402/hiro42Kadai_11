//
//  ChoicePrefecturesViewController.swift
//  Hiro42Kadai11
//
//  Created by 白石裕幸 on 2021/10/16.
//

import UIKit

protocol ChoicePrefecturesViewControllerDelegate: AnyObject {
    func didSelectPrefecture(prefectureName: String)
}

class ChoicePrefecturesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var prefectureTableView: UITableView!
    private let prefectures = Prefectures.prefectures()
    weak var delegate: ChoicePrefecturesViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
                tableView.dequeueReusableCell(withIdentifier: CellForSelectingAValue.identifier, for: indexPath) as?
                CellForSelectingAValue else { fatalError("予期しないnilが見つかりました ")
        }
        cell.setTextOnLabel(text: prefectures[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let prefecture = prefectures[indexPath.row]
        delegate?.didSelectPrefecture(prefectureName: prefecture)
        dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    private func setUpTableView() {
        prefectureTableView.register(CellForSelectingAValue.nib(),
                                     forCellReuseIdentifier: CellForSelectingAValue.identifier )
    }
}
