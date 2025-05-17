//
//  MainTabView.swift
//  FitnessAI
//
//  Created by Jonathan Airhart on 5/17/25.
//


import SwiftUI

/// Entry point after launch.  A simple TabView gives you a "Home" dashboard
/// and an "Equipment" page that we'll flesh out next.
struct MainTabView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            EquipmentSelectionView()
                .tabItem {
                    Label("Equipment", systemImage: "dumbbell")
                }
        }
    }
}

/// Placeholder for the Home / Dashboard screen.
struct DashboardView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "figure.run.circle")
                    .font(.system(size: 64))
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.tint)
                Text("Welcome to FitnessAI")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Start by adding today’s workout or exploring your equipment list.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Spacer()
            }
            .padding()
            .navigationTitle("Dashboard")
        }
    }
}

/// Very first stub for the Equipment page.
struct EquipmentSelectionView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Gym Profiles") {
                    Text("Home Gym")
                    Text("Hotel Gym")
                }
                Section("Quick Actions") {
                    Label("Full Gym", systemImage: "checkmark.circle")
                    Label("Limited Gym", systemImage: "minus.circle")
                    Label("Outdoors", systemImage: "leaf")
                }
            }
            .navigationTitle("Equipment")
        }
    }
}

#Preview {
    MainTabView()
}
