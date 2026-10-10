import SwiftUI

/// A branded starting point while the camera coaching flow is being built.
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    HStack(spacing: 10) {
                        Image("PlumbMark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 34, height: 34)
                            .accessibilityHidden(true)
                        Text("PLUMB")
                            .font(.headline)
                            .tracking(2)
                    }
                    .foregroundStyle(.primary)
                    .padding(.top, 36)

                    VStack(alignment: .leading, spacing: 14) {
                        Text("Find your line.")
                            .font(.largeTitle.weight(.semibold))
                        Text("Move with more awareness, one set at a time.")
                            .font(.title3)
                            .foregroundStyle(.secondary)
                    }

                    VStack(alignment: .leading, spacing: 20) {
                        principle("See your set", detail: "Use your iPhone camera to observe a supported movement.")
                        principle("Understand one cue", detail: "Review a specific, evidence-linked observation.")
                        principle("Try again", detail: "Compare the next set with the last one.")
                    }
                    .padding(24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 22))

                    Text("Camera coaching is in development. This screen introduces the Plumb concept; analysis is not available yet.")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 48)
            }
            .background(Color(.systemGroupedBackground))
            .toolbar(.hidden, for: .navigationBar)
        }
        .tint(Color.accentColor)
    }

    private func principle(_ title: String, detail: String) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.headline)
            Text(detail)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}
