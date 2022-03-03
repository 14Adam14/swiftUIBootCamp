
import SwiftUI


// не забывать добавлять  .tag(0)   номер

struct TabView_PageTabView: View {
    
    
    @State var selectTab: Int = 0
    
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) {icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
                    
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .cornerRadius(15)
        .tabViewStyle(PageTabViewStyle())
        //
        //        TabView(selection: $selectTab ) {
        //
        //            HomeView(selectTab: $selectTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("home")
        //                }
        //                .tag(0)
        //            Text("browse tab")
        //                .tabItem {
        //                    Image(systemName: "globe")
        //                    Text("browse")
        //                }
        //                .tag(1)
        //            Text("people tab")
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("profile")
        //                }
        //                .tag(2)
        //        }
        //        .accentColor(.pink
        //        )
        
    }
}

struct TabView_PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PageTabView()
    }
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text("home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                Button {
                    selectTab = 2
                } label: {
                    Text("go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
            }
            
            
            
        }
        
    }
}
