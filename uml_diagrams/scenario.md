# Scenario

## Name of use case: Run script
## Actor: Trader
## Preconditions: MetaTrader 5 is open, the script is attached to a chart of the desired symbol, and historical data is available.
## Postconditions: The CSV file contains the analysis time, average M15 volatility, average H4 volatility, and current spread; the report is displayed on the chart with the spread alert.

## Main scenario:
1. Trader: Run script
2. System: Display MessageBox asking if weekend data should be included.
3. Trader: Choose "Yes" or "No".
4. System: Retrieve the High and Low prices of the last 50 bars for the current period and the H4 period (excluding weekends if "No" was chosen).
5. System: Calculate the average volatility (High - Low in points) over the last 50 bars for both periods.
6. System: Create a .csv file named after the symbol in an Analyses_Expert folder within the shared terminals folder.
7. System: Write to the CSV file: analysis time, average M15 volatility, average H4 volatility, current spread.
8. System: Display the report on the chart via Comment(): "Status: Analysis completed", "Generated file: MQL5\Files\Analyses_Expert\[symbol].csv", "Spread Alert: [YES/NO]" (if spread > average volatility / 10).

## Alternative scenario:
- If the trader chooses not to include weekend data:
  4. System: Retrieve the High and Low prices of the last 50 bars for the current period and the H4 period, excluding bars from weekends (Saturday and Sunday).

## Exception:
1. If the shared folder is not accessible:
   - System: Display the message: "Check the common terminals directory for displaying the report".
2. If insufficient historical data is available (less than 50 bars):
   - System: Display an error message and abort the analysis.
    