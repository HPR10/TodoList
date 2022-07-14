import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Esse é o primeiro título.",
        "Esse é o segundo.",
        "Terceiro."
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📚 ")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("add",destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

