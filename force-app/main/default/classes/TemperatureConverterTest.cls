@IsTest
private class TemperatureConverterTest {
    
    @IsTest static void testFahrenheitToCelsius() {
        // Test case 1: Water freezing point
        Decimal celsius = TemperatureConverter.fahrenheitToCelsius(32);
        System.assertEquals(0, celsius.setScale(2), 'Freezing point conversion failed');
        
        // Test case 2: Water boiling point
        celsius = TemperatureConverter.fahrenheitToCelsius(212);
        System.assertEquals(100, celsius.setScale(2), 'Boiling point conversion failed');
        
        // Test case 3: Null input
        celsius = TemperatureConverter.fahrenheitToCelsius(null);
        System.assertEquals(null, celsius, 'Null input should return null');
    }
    
    @IsTest static void testCelsiusToFahrenheit() {
        // Test case 1: Water freezing point
        Decimal fahrenheit = TemperatureConverter.celsiusToFahrenheit(0);
        System.assertEquals(32, fahrenheit.setScale(2), 'Freezing point conversion failed');
        
        // Test case 2: Water boiling point
        fahrenheit = TemperatureConverter.celsiusToFahrenheit(100);
        System.assertEquals(212, fahrenheit.setScale(2), 'Boiling point conversion failed');
        
        // Test case 3: Null input
        fahrenheit = TemperatureConverter.celsiusToFahrenheit(null);
        System.assertEquals(null, fahrenheit, 'Null input should return null');
    }
}