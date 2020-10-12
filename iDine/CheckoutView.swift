//
//  CheckoutView.swift
//  iDine
//
//  Created by Trinh Thai on 10/12/20.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    static let paymentTypes = ["Cash", "Creadit Card", "iDine Points"]
    @State private var paymentType = 0
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay", selection: $paymentType.projectedValue) {
                    ForEach(0..<Self.paymentTypes.count) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
