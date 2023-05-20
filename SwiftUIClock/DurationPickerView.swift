//
//  DurationPickerView.swift
//  SwiftUIClock
//
//  Created by Andrew Welch on 5/20/23.
//

import SwiftUI

struct DurationPickerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIPickerView {
        let picker = UIPickerView()
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        picker.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        picker.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        return picker
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        
        let parent: DurationPickerView
        
        init(_ parent: DurationPickerView) {
            self.parent = parent
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 6
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            var label = UILabel()
            if let v = view as? UILabel { label = v }
            label.font = UIFont (name: "Helvetica Neue", size: 10)
            label.textAlignment = .left
           switch component {
            case 1:
                label.text = "Hours"
            case 3:
                label.text = "Minutes"
            case 5:
                label.text = "Seconds"
            default:
                label.text = "\(row)"
                label.font = UIFont (name: "Helvetica Neue", size: 20)
                label.textAlignment = .center
            }
            return label
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                return 25
            }
            
            else if component == 1 {
                return 1
            }
            
            else if component == 2 {
                return 61
            }
            
            else if component == 3 {
                return 1
            }
            
            else if component == 4 {
                return 61
            }
            
            else if component == 5 {
                return 1
            }
            
            return 0
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if component == 0 {
                return "\(row)"
            }
            
            else if component == 1 {
                return "Hour"
            }
            
            else if component == 2 {
                return "\(row)"
            }
            
            else if component == 3 {
                return "Min"
            }
            
            else if component == 4 {
                return "\(row)"
            }
            
            else if component == 5 {
                return "Sec"
            }
            
            return ""
        }
    }
}
