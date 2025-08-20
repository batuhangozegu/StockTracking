//
//  LabelView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 19.08.2025.
//

import SwiftUI

enum textFieldType {
    case email
    case password
}

struct LabelView: View {
    
    
    
    let label : String
    let placeHolder : String
    var contentType : UITextContentType
    let textFieldType : textFieldType
    
    
    @Binding var text : String
    @FocusState private var focus : Bool
    @State private var isSecure : Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack{
                if textFieldType == .password && isSecure {
                    SecureField(placeHolder, text: $text)
                        .textContentType(.password)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .submitLabel(.done)
                        .focused($focus)
                        .font(.system(size: 16))
                } else {
                    TextField(placeHolder, text: $text)
                        .textContentType(contentType)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .submitLabel(.done)
                        .focused($focus)
                        .font(.system(size: 16))
                }
                
                if textFieldType == .password {
                    Button(action: { isSecure.toggle() }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundStyle(.black)
                            .imageScale(.medium)
                            .foregroundStyle(.secondary)
                    }
                }
                
            }
            .padding()
            .frame(height: 55)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(focus ? .blue : .gray.opacity(0.25), lineWidth: 1)
            )
        }
        
    }
}
#Preview {
    @Previewable @State var email = ""
        @Previewable @State var password = ""
    LabelView(label: "Deneme", placeHolder: "Deneme", contentType: .password, textFieldType: .password, text: $password)
    
}
