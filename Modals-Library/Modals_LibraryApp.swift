//
//  Modals_LibraryApp.swift
//  Modals-Library
//
//  Created by kazunori.aoki on 2023/08/21.
//

import SwiftUI
import Modals
// https://github.com/fieldday-ai/Modals

@main
struct Modals_LibraryApp: App {
    var body: some Scene {
        WindowGroup {
            ModalStackView {
                ContentView()
            }
        }
    }
}

struct ContentView: View {

    @State private var isPresented: Bool = false

    /**
     options:
        .prefersDragHandle：デフォルトの閉じるボタンを中央揃えのドラッグハンドルに置き換えます。
        .disableContentDragging：コンテンツをドラッグしてモーダルを解除する機能を無効にします (ScrollView がモーダルに埋め込まれている場合に便利です)。
     */
    var body: some View {
        Button {
            isPresented = true
        } label: {
            Text("Open")
        }
//        .modal(isPresented: $isPresented) {
//            Text("Modal!!")
//        }
        .modal(
            isPresented: $isPresented,
            size: .medium,
            cornerRadius: 18,
            options: [.prefersDragHandle]) {
            Text("Modal!!")
        }
    }
}
