#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

// Function to toggle the LED 'times' times
void toggle_light_n_times(int times)
{   
    for(int i = 0; i < times; i++)
    {
        // Turn the LED on
        PORTB |= (1 << PORTB5);
        _delay_ms(200);

        // Turn the LED off
        PORTB &= ~(1 << PORTB5);
        _delay_ms(200);
    }

    _delay_ms(2000);
}

int main(void)
{
    // Set pin 13 (PORTB5) as output
    DDRB |= (1 << DDB5);

    int num1 = 1;
    int num2 = 1;

    toggle_light_n_times(num1);
    toggle_light_n_times(num2);

    int n;
    do 
    {
        n = num1 + num2;

        num1 = num2;
        num2 = n;

        toggle_light_n_times(n);

    } while (n < 100);
    
    PORTB &= ~(1 << PORTB5);

    return 0;
}
