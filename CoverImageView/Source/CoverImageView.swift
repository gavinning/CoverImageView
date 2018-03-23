//
//  CoverImageView.swift
//  CoverImageView
//
//  Created by gavinning on 2018/3/23.
//  Copyright © 2018年 gavinning. All rights reserved.
//

import UIKit

public class CoverImageView: UIScrollView, UIScrollViewDelegate {
    var cover: UIImageView!
    var coverHeight: CGFloat!
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(cover image: String, frame: CGRect) {
        self.cover = CoverImageView.create(cover: image, width: frame.size.width)
        self.coverHeight = self.cover.frame.height
        super.init(frame: frame)
        self.delegate = self
        self.contentInset = UIEdgeInsets(top: self.coverHeight, left: 0, bottom: 0, right: 0)
        self.alwaysBounceVertical = true
        self.addSubview(self.cover)
    }
    
    // 创建Cover图片
    static func create( cover image: String, width: CGFloat ) -> UIImageView {
        let cover = UIImageView(name: image, width: width)
        cover?.contentMode = .scaleAspectFill
        cover?.clipsToBounds = true
        return cover!
    }
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        
        // 设置图片的高度 和 Y 值
        if offsetY < -self.coverHeight - statusBarHeight {
            self.cover.frame.origin.y = offsetY
            self.cover.frame.size.height = -offsetY
        }
    }
}
