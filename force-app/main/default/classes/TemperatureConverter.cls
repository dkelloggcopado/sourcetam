public class TemperatureConverter {
    // Method to convert Fahrenheit to Celsius
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        // Formula: (°F - 32) × 5/9 = °C
        if (fahrenheit == null) return null;
        return (fahrenheit - 32) * 5/9;
    }
    
    // Method to convert Celsius to Fahrenheit
    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        // Formula: (°C × 9/5) + 32 = °F
        if (celsius == null) return null;
        return (celsius * 9/5) + 32;
    }
}