
import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        LinearGradient(
            colors: [backGroundColor1, backGroundColor2],
            startPoint: .top,
            endPoint: .bottom)
        .ignoresSafeArea()
        
    }
}
