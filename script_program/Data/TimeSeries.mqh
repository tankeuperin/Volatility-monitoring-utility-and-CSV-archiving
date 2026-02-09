//+------------------------------------------------------------------+
//|                                                     TimeSeries.mqh |
//|                        Volatility Monitoring Utility - Data Layer |
//+------------------------------------------------------------------+
#ifndef __TIMESERIES_MQH__
#define __TIMESERIES_MQH__

//+------------------------------------------------------------------+
//| TimeSeries struct - Container for price data across timeframes   |
//+------------------------------------------------------------------+
struct TimeSeries
{
   double high[];           // Current timeframe high prices
   double low[];            // Current timeframe low prices
   double h4_high[];        // H4 timeframe high prices
   double h4_low[];         // H4 timeframe low prices
   int count;               // Number of bars retrieved
   
   // Constructor
   TimeSeries() : count(0) {}
};

#endif
