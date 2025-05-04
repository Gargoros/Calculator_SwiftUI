
import SwiftUI

struct MainCalculatorView: View {
    
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var colorScheme: ColorScheme { lightMode ? .light : .dark }
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            VStack{
                HStack() {
                    LightDartModeButtonView(lightMode: $lightMode)
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    ComputationView(currentComputation: currentComputation, mainResult: mainResult)
                }
                CalcButtonsView(currentComputation: $currentComputation,mainResult: $mainResult)
            }
        }
        .environment(\.colorScheme, colorScheme)
    }
}
