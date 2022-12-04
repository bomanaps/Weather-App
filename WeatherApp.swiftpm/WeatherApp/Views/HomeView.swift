import SwiftUI
struct HomeView: View {
    @EnvironmentObject var weather: WeatherAPI
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            TabView {
                SettingsView()
                    .tabItem {
                        Label("Location", systemImage: "map")
                    }
                CurrentWeatherView()
                    .tabItem {
                        Label("Weather", systemImage: "sun.min.fill")
                    }
            }
            .navigationTitle(weather.currentCity)
            .accentColor(.orange)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(WeatherAPI())
    }
}
