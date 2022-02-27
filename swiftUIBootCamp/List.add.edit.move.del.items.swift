
import SwiftUI

struct List_add_edit_move_del_items: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "peso", "zea"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carre"
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                
                Section(
                    header:
                        Text("Vegies")
                        .foregroundColor(.green)
                ) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("greco list")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
            .accentColor(.red)
        }
        
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    
    func add() {
        fruits.append("Coconut")
    }
    
}

struct List_add_edit_move_del_items_Previews: PreviewProvider {
    static var previews: some View {
        List_add_edit_move_del_items()
    }
}
