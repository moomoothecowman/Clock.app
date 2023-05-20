//
//  TimerView.swift
//  SwiftUIClock
//
//  Created by Andrew Welch on 5/20/23.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        Text("Timer View!")
        
        HStack{
            Spacer()
            DurationPickerView()
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
