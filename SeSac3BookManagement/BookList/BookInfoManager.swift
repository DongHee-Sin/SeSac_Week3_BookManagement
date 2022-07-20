//
//  BookInfoManager.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/20.
//

import UIKit

struct BookInfo {
    var title: String
    var rate: Double
    var imageURL: String
    var backgroundColor: UIColor
}


struct BookInfoManager {
    private var bookList: [BookInfo]
    
    var bookCount: Int {
        return bookList.count
    }
    
    private let colorArray: [UIColor] = [.lightGray, .orange, .green, .blue]
    
    init() {
        bookList = [
            BookInfo(title: "역행자", rate: 5.0, imageURL: "https://image.kyobobook.co.kr/images/book/large/716/l9788901260716.jpg", backgroundColor: colorArray.randomElement()!),
            BookInfo(title: "불편한 편의점(40만부 기념 벛꽃 에디션)", rate: 4.1, imageURL: "https://image.kyobobook.co.kr/images/book/large/188/l9791161571188.jpg", backgroundColor: colorArray.randomElement()!),
            BookInfo(title: "작별인사", rate: 4.9, imageURL: "https://image.kyobobook.co.kr/images/book/large/225/l9791191114225.jpg", backgroundColor: colorArray.randomElement()!),
            BookInfo(title: "세상의 마지막 기차역", rate: 4.5, imageURL: "https://image.kyobobook.co.kr/images/book/large/754/l9791191043754.jpg", backgroundColor: colorArray.randomElement()!),
            BookInfo(title: "기분을 관리하면 인생이 관리된다", rate: 5.0, imageURL: "https://image.kyobobook.co.kr/images/book/large/127/l9791196617127.jpg", backgroundColor: colorArray.randomElement()!),
            BookInfo(title: "인플레이션에서 살아남기", rate: 4.7, imageURL: "https://image.kyobobook.co.kr/images/book/large/661/l9791190977661.jpg", backgroundColor: colorArray.randomElement()!)
        ]
    }
    
    func getBookInfo(at index: Int) -> BookInfo? {
        guard index < bookCount else { return nil }
        
        return bookList[index]
    }
}
