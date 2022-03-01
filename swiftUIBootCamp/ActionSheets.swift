
import SwiftUI



struct ActionSheets: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    
    var body: some View {
//        Button("click me") {
//            showActionSheet.toggle()
//        }
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        
        let shareButton: ActionSheet.Button = .default(Text("share")) {
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("what woud you like to do")
        
        
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        
        //return ActionSheet(title: Text("title"))
        
        
//        let button1: ActionSheet.Button = .default(Text("default"))
//        let button2: ActionSheet.Button = .destructive(Text("detruct"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("title"),
//            message: Text("message message"),
//            buttons: [button1, button1, button1, button1, button2, button3])
    }
}






struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
