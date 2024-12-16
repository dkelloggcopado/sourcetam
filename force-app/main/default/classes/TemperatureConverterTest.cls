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
    
    @IsTest static void testKelvinToFahrenheit() {
        // Test valid conversions
        Decimal fahrenheit = TemperatureConverter.kelvinToFahrenheit(273.15);
        System.assertEquals(32, fahrenheit, 'Incorrect freezing point conversion');
        
        fahrenheit = TemperatureConverter.kelvinToFahrenheit(373.15);
        System.assertEquals(212, fahrenheit, 'Incorrect boiling point conversion');
        
        // Test invalid inputs
        System.assertEquals(null, TemperatureConverter.kelvinToFahrenheit(-1), 'Negative Kelvin should return null');
        System.assertEquals(null, TemperatureConverter.kelvinToFahrenheit(null), 'Null input should return null');
    }
    
    @IsTest static void testFahrenheitToKelvin() {
        Decimal kelvin = TemperatureConverter.fahrenheitToKelvin(32);
        System.assertEquals(273.15, kelvin, 'Incorrect freezing point conversion');
        
        kelvin = TemperatureConverter.fahrenheitToKelvin(212);
        System.assertEquals(373.15, kelvin, 'Incorrect boiling point conversion');
        
        System.assertEquals(null, TemperatureConverter.fahrenheitToKelvin(null), 'Null input should return null');
    }
        @IsTest static void testNewtonConversions() {
        // Test Celsius to Newton
        Decimal newton = TemperatureConverter.celsiusToNewton(100);
        System.assertEquals(33, newton.setScale(2), 'Boiling point conversion failed');
        
        // Test Newton to Celsius
        Decimal celsius = TemperatureConverter.newtonToCelsius(33);
        System.assertEquals(100, celsius.setScale(2), 'Reverse conversion failed');
        
        // Test Newton to Fahrenheit
        Decimal fahrenheit = TemperatureConverter.newtonToFahrenheit(33);
        System.assertEquals(212, fahrenheit.setScale(2), 'Newton to Fahrenheit conversion failed');
        
        // Test Fahrenheit to Newton
        newton = TemperatureConverter.fahrenheitToNewton(212);
        System.assertEquals(33, newton.setScale(2), 'Fahrenheit to Newton conversion failed');
        
        // Test null inputs
        System.assertEquals(null, TemperatureConverter.celsiusToNewton(null));
        System.assertEquals(null, TemperatureConverter.newtonToCelsius(null));
        System.assertEquals(null, TemperatureConverter.newtonToFahrenheit(null));
        System.assertEquals(null, TemperatureConverter.fahrenheitToNewton(null));
    }
}