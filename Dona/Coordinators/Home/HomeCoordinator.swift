//
//  HomeCoordinator.swift
//  Dona
//
//  Created by Damir Rizoev on 15/04/26.
//

import FlowStacks
import SwiftUI

enum HomeRouter: Hashable {
    case home
    case notifications
    case activity
}

struct HomeCoordinator: View {
    @State private var routes: Routes<HomeRouter> = []

    var body: some View {
        FlowStack($routes, withNavigation: true) {
            HomeScreen()
                .flowDestination(for: HomeRouter.self) { screen in
                    switch screen {
                    case .home:
                        HomeScreen()
                    case .notifications:
                        NotificationsScreen()
                    case .activity:
                        ActivityScreen()
                    }
                }
        }
    }
}
