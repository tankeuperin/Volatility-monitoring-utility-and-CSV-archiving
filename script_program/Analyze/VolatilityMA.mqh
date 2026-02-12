#ifndef __ANALYZE_VOLATILITYMA_MQH__
#define __ANALYZE_VOLATILITYMA_MQH__

#include "AbstractAnalyzer/IVolatilityAnalyzer.mqh"
#include "StructAverage.mqh"
#include "../Data/TimeSeries.mqh"

//+------------------------------------------------------------------+
//| Implémentation par Moyenne Arithmétique                          |
//| Calcule séparément pour timeframe courant et H4                 |
//+------------------------------------------------------------------+
class VolatilityMA: public IVolatilityAnalyzer
{
    public:
        StructAverage CalculateVolatility(const TimeSeries &time_series)
        {
            StructAverage result = {0.0, 0.0};
            
            if(time_series.count == 0) 
                return result;
            
            // Calcul pour le timeframe courant
            double sum_current = 0.0;
            for(int i = 0; i < time_series.count; ++i)
            {
                sum_current += (time_series.high[i] - time_series.low[i]);
            }
            result.volatility_current = sum_current / time_series.count;
            
            // Calcul pour H4
            double sum_h4 = 0.0;
            for(int i = 0; i < time_series.count; ++i)
            {
                sum_h4 += (time_series.h4_high[i] - time_series.h4_low[i]);
            }
            result.volatility_h4 = sum_h4 / time_series.count;
            
            return result;
        }
};

#endif