//
//  ContentView.swift
//  NewProject
//
//  Created by Indira on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var tabbarItems: [String]
     
        @State var selectedIndex = 0
    var body: some View {
        VStack {
            HStack {
                Button{} label: { Image(systemName: "star")}
                Spacer()
                VStack {
                    Text("Delivering to")
                        .frame(width: 380, alignment: .center)
                        .font(.system(size: 15, weight: .light, design: .serif))
                    Text("Manas Ave")
                        .frame(width: 380, alignment: .center)
                        .font(.system(size: 25, weight: .bold, design: .serif))
                        .italic()
                }
                Spacer()
                Button{} label: {Image(systemName: "cart")}
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<9){_ in
                        Button{} label: { Image(systemName: "moon")}
                    }
                }
            }
            Text("56 stores open")
                .frame(width: 380, alignment: .leading)
                .padding(.leading, 30)
                .padding(.top, 20)
                .font(.system(size: 15, weight: .bold, design: .serif))
                .italic()
            VStack {
                HStack {
                    Button{} label: { Image(systemName: "folder")}
                    Text("Find restaurant by name")
                    Spacer()
                    Button{} label: { Image(systemName: "list.bullet")}
                }
                HStack {
                    VStack {
                        Image("Rectangle 19")
                            .padding(-10)
                        Text("Tony Romas")
                            .frame(alignment: .center)
                            .font(.system(size: 17, weight: .heavy, design: .serif))
                            .italic()
                        Text("Reabes&Steakes")
                            .frame(alignment: .center)
                            .font(.system(size: 10, weight: .light, design: .serif))
                        Text("Delivery:Free&Minimum:$20")
                            .frame(alignment: .center)
                            .font(.system(size: 10, weight: .light, design: .serif))
                        HStack {
                            Button{} label: { Image(systemName: "star.fill")}
                            Text("4,5")
                            Button{} label: {Image(systemName: "clock")}
                            Text("35 min")
                        }
                        
                    }
                    .padding(.top, 30)
                    Spacer()
                    VStack {
                        Image("Rectangle 20")
                            .padding(-10)
                        Text("Momos")
                            .frame(alignment: .center)
                            .font(.system(size: 17, weight: .heavy, design: .serif))
                            .italic()
                        Text("Japanese")
                            .frame(alignment: .center)
                            .font(.system(size: 10, weight: .light, design: .serif))
                        Text("Delivery:Free&Minimum:$10")
                            .frame(alignment: .center)
                            .font(.system(size: 10, weight: .light, design: .serif))
                        HStack {
                            Button{} label: { Image(systemName: "star.fill")}
                            Text("4,5")
                            Button{} label: {Image(systemName: "clock")}
                            Text("35 min")
                        }
                    }
                    .padding(.top, 30)
                }
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Paul")
                                .frame(alignment: .center)
                                .font(.system(size: 17, weight: .heavy, design: .serif))
                                .italic()
                            Text("French Pasta")
                                .frame(alignment: .center)
                                .font(.system(size: 10, weight: .light, design: .serif))
                            Text("Delivery:Free&Minimum:$0")
                                .frame(alignment: .center)
                                .font(.system(size: 10, weight: .light, design: .serif))
                            
                        }
                        Image("Rectangle 22")
                    }
                    HStack {
                        Button{} label: { Image(systemName: "star.fill")}
                        Text("4,5")
                        Button{} label: {Image(systemName: "clock")}
                        Text("25 min")
                    }
                    .padding(.top, -20)
                    
                }
            }
            .padding()
            ScrollViewReader { scrollView in
            ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabbarItems.indices, id: \.self) { index in
             
                    Text(tabbarItems[index])
                        .font(.subheadline)
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                        .foregroundColor(selectedIndex == index ? .white : .black)
                        .background(Capsule().foregroundColor(selectedIndex == index ? .purple : .clear))
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                        selectedIndex = index
                                    }
                        }
                }
            }
        }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(25)
             
    }
             
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        ContentView(tabbarItems: [ "Random", "Travel", "Wallpaper", "Food", "Interior Design" ]).previewDisplayName("TabBarView")
    }
}
