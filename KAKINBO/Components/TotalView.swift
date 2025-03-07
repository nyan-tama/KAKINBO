//
//  TotalView.swift
//  KAKINBO
//
//  Created by Apple on 2025/01/31.
//

import SwiftUI

struct TotalView: View {
    // 値を入れないのであれば自動でイニシャライザ
    let total: Int

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(edges: .horizontal)
            VStack {
                // TOTALを左に配置
                HStack {
                    Text("TOTAL")
                        .font(.headline)
                        .padding(.top, 8)
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                
                // 金額は中央に大きく表示
                Text("¥\(total)")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 4)
                
                // YENを右側に
                HStack {
                    Spacer()
                    Text("YEN")
                        .font(.subheadline)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
            }
            .foregroundColor(.black)
        }
        .frame(height: 120)
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView(total: 123456)
    }
}
