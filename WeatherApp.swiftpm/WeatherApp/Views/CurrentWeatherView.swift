
import SwiftUI

struct CurrentWeatherView: View {
    @EnvironmentObject var weather: WeatherAPI
    
    var body: some View {
        List {
            ForEach(weather.weatherData.sorted(by: <), id: \.key) { ts, temp in
                TempView(timeStamp: ts, temperature: temp)
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView()
            .environmentObject(WeatherAPI())
    }
}
