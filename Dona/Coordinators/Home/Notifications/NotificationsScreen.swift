//
//  NotificationsScreen.swift
//  Dona
//
//  Created by Damir Rizoev on 15/04/26.
//

import SwiftUI

struct NotificationsScreen: View {
    @Environment(\.theme) private var theme
    @State var isSheetPresented: Bool = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 8) {
                makeThisMonthView()
                makeFebruaryView()
            }
            .padding(.horizontal, 12)
        }
        .background(theme.background.surface)
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isSheetPresented) {
            CustomSheet(height: .fitContent) {
                VStack(spacing: 24) {
                    Image(.notificationMock)
                        .resizable()
                        .frame(width: 190, height: 190)
                    VStack(spacing: 6) {
                        Text("Header")
                            .font(AppFont.heading2)
                            .foregroundStyle(theme.text.onSurface)
                        Text("Description text")
                            .font(AppFont.largeRegular)
                            .foregroundStyle(theme.text.onTertiary)
                    }
                    AppButton(title: "Close", state: .default) {
                        isSheetPresented = false
                    }
                }
                .padding(.horizontal, 12)
                .padding(.top, 24)
            }
        }
    }
    
    @ViewBuilder func makeThisMonthView() -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("This Month")
                .font(AppFont.largeSemibold)
                .foregroundStyle(theme.text.onSurface)
            HStack(spacing: 8) {
                Image(.notificationMock)
                    .resizable()
                    .frame(width: 52, height: 52)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                VStack(alignment: .leading, spacing: 4) {
                    Text("Header")
                        .font(AppFont.mediumMedium)
                        .foregroundStyle(theme.text.onSurface)
                    Text("Description text")
                        .font(AppFont.smallRegular)
                        .foregroundStyle(theme.text.onTertiary)
                }
                Spacer()
                Text("New")
                    .font(AppFont.smallRegular)
                    .foregroundStyle(theme.text.onErrorContainer)
                    .padding(.vertical, 4).padding(.horizontal, 8)
                    .background(theme.background.errorContainer)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
            ForEach(0 ..< 2) { _ in
                Button {
                    isSheetPresented = true
                } label: {
                    HStack(spacing: 8) {
                        Image(.notificationMock)
                            .resizable()
                            .frame(width: 52, height: 52)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .opacity(0.7)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Header")
                                .font(AppFont.mediumMedium)
                                .foregroundStyle(theme.text.onSurface)
                            Text("Description text")
                                .font(AppFont.smallRegular)
                                .foregroundStyle(theme.text.onTertiary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(theme.background.background)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    @ViewBuilder func makeFebruaryView() -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("February")
                .font(AppFont.largeSemibold)
                .foregroundStyle(theme.text.onSurface)
            ForEach(0 ..< 6) { _ in
                Button {
                    isSheetPresented = true
                } label: {
                    HStack(spacing: 8) {
                        Image(.notificationMock)
                            .resizable()
                            .frame(width: 52, height: 52)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .opacity(0.7)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Header")
                                .font(AppFont.mediumMedium)
                                .foregroundStyle(theme.text.onSurface)
                            Text("Description text")
                                .font(AppFont.smallRegular)
                                .foregroundStyle(theme.text.onTertiary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(theme.background.background)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    NotificationsScreen()
}
