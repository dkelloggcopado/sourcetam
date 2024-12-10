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
        // Method to convert Kelvin to Fahrenheit
    public static Decimal kelvinToFahrenheit(Decimal kelvin) {
        // Formula: (K − 273.15) × 9/5 + 32 = °F
        if (kelvin == null) return null;
        if (kelvin < 0) return null; // Kelvin cannot be negative
        return ((kelvin - 273.15) * 9/5) + 32;
    }
    
    // Method to convert Fahrenheit to Kelvin
    public static Decimal fahrenheitToKelvin(Decimal fahrenheit) {
        // Formula: (°F − 32) × 5/9 + 273.15 = K
        if (fahrenheit == null) return null;
        return ((fahrenheit - 32) * 5/9) + 273.15;
    }
}