//
//  TableViewCell.swift
//  ChangeTableViewCellCheckImage
//
//  Created by 1134 on 2017/8/11.
//  Copyright © 2017年 1134. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var testLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //self.setImageForCheckMark()
    }
    
    override func didTransition(to state: UITableViewCellStateMask) {
        
        if state == UITableViewCellStateMask.showingEditControlMask {
            self.setImageForCheckMark()
        }
    }
    
    func setImageForCheckMark() {
        
        for control in self.subviews {
            if control.isKind(of: NSClassFromString("UITableViewCellEditControl")!) {
                let subviews = control.subviews
                for subview in subviews {
                    if subview.isKind(of: UIImageView.self) {
                        let imgV = subview as! UIImageView
                        if self.isSelected {
                            imgV.image = UIImage(named: "check.png")
                        } else {
                            imgV.image = UIImage(named: "unCheck.png")
                        }
                        
                        break
                    }
                }                
            }
        }
    }
    
}
