//
//  CellForSelectingAValue.swift
//  Hiro42Kadai11
//
//  Created by 白石裕幸 on 2021/10/16.
//

import UIKit

class CellForSelectingAValue: UITableViewCell {
    static var identifier = "prefecturesCell"
    @IBOutlet private weak var label: UILabel!
    override func awakeFromNib() {
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setTextOnLabel(text: String) {
        label.text = text
    }
    static func nib() -> UINib {
        UINib(nibName: "CellForSelectingAValue", bundle: nil)
    }
}
