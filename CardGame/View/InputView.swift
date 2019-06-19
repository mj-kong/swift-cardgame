//
//  InputView.swift
//  CardGame
//
//  Created by jang gukjin on 18/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//



import Foundation

struct InputView {

static func announceMent() -> String {
    let ment: String = """
                        다음 메뉴를 선택해주세요.(0을 입력하면 종료)
                        1. 카드 초기화
                        2. 카드 섞기
                        3. 카드 하나 뽑기
                        >
                        """
    print(ment, terminator:"")
    let selectNumber = readLine()
    return selectNumber ?? ""
    }
}