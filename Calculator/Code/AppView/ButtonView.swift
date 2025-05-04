
import SwiftUI

struct ButtonView: View {
    
    let buttonSize1: CGFloat
    let buttonSize2: CGFloat
    let symbolSize: CGFloat
    let color1: Color
    let color2: Color
    let buttonSymbol: CalcButton
    
    var systemImage: String? {
        let value: String = buttonSymbol.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    var text: String? {
        let value: String = buttonSymbol.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    var isIPadSize1: CGFloat { UIDevice.isIPad ? buttonSize1 / 2 : buttonSize1 }
    var isIPadSize2: CGFloat { UIDevice.isIPad ? buttonSize2 / 2 : buttonSize2 }

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: isIPadSize1, height: isIPadSize1)
                .background(LinearGradient(colors: [color2, color1], startPoint: .topLeading, endPoint: .bottomTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 23))
                .shadow(color: shadowColor, radius: 6, x: 0, y: 3)
            Rectangle()
                .fill(LinearGradient(colors: [color1, color2], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: isIPadSize2, height: isIPadSize2)
                .clipShape(RoundedRectangle(cornerRadius: 23))
                .padding()
            
            if text != nil {
                Text(text ?? "")
                    .font(.system(size: symbolSize))
                    .foregroundStyle(buttonTextColor)
                    .multilineTextAlignment(.center)
            }else{
                Image(systemName: systemImage ?? "")
                    .resizable()
                    .frame(width: symbolSize, height: symbolSize)
                    .foregroundStyle(buttonTextColor)
            }
        }
    }
}
