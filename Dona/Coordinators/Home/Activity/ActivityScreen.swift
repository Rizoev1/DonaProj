//
//  ActivityScreen.swift
//  Dona
//
//  Created by Damir Rizoev on 15/04/26.
//

import SwiftUI

struct ActivityScreen: View {
    @Environment(\.theme) private var theme
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Today")
                        .font(AppFont.heading3)
                        .foregroundStyle(theme.text.onSurface)
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(0 ..< 2, id: \.self) { index in
                            HStack(spacing: 12) {
                                Image(.amazonMock)
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Community name")
                                        .font(AppFont.mediumMedium)
                                        .foregroundStyle(theme.text.onSurface)
                                    Text("Monthly Contribution")
                                        .font(AppFont.mediumRegular)
                                        .foregroundStyle(theme.text.onTertiary)
                                }
                                Spacer()
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text("- 42.2 TJS")
                                        .font(AppFont.mediumMedium)
                                        .foregroundStyle(theme.text.onSurface)
                                    Text("12.01")
                                        .font(AppFont.mediumRegular)
                                        .foregroundStyle(theme.text.onTertiary)
                                }
                            }
                            if index < 1 {
                                Divider()
                                    .padding(.leading, 48)
                            }
                        }
                    }
                    .padding(.horizontal, 14)
                    .padding(.vertical, 26)
                    .background(theme.background.background)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("08.01.2026")
                        .font(AppFont.heading3)
                        .foregroundStyle(theme.text.onSurface)
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(0 ..< 2, id: \.self) { index in
                            HStack(spacing: 12) {
                                Image(.amazonMock)
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Community name")
                                        .font(AppFont.mediumMedium)
                                        .foregroundStyle(theme.text.onSurface)
                                    Text("Monthly Contribution")
                                        .font(AppFont.mediumRegular)
                                        .foregroundStyle(theme.text.onTertiary)
                                }
                                Spacer()
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text("- 42.2 TJS")
                                        .font(AppFont.mediumMedium)
                                        .foregroundStyle(theme.text.onSurface)
                                    Text("12.01")
                                        .font(AppFont.mediumRegular)
                                        .foregroundStyle(theme.text.onTertiary)
                                }
                            }
                            if index < 1 {
                                Divider()
                                    .padding(.leading, 48)
                            }
                        }
                    }
                    .padding(.horizontal, 14)
                    .padding(.vertical, 26)
                    .background(theme.background.background)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding(.horizontal, 12)
        }
        .background(theme.background.surface)
    }
}

#Preview {
    ActivityScreen()
}
