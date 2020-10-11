//
//  ItemDetail.swift
//  iDine
//
//  Created by Trinh Thai on 10/11/20.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
//    @State var isShowing: Bool = false
    var item: MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(CGSize(width: -10.0, height: -10.0))
            }
            
            Text(item.description)
                .padding()

            Button("Order this") {
                self.order.add(item: self.item)
//                isShowing = true
            }
            .font(.headline)
//            .sheet(isPresented: $isShowing) {
//                OrderView()
//            }
            
            Spacer()
        }
//        .navigationBarTitle(item.name)
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
                .environmentObject(order)
        }
    }
}
