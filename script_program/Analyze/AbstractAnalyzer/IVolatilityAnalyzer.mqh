#ifndef __ANALYZE_ABSTRACT_IVOLATILITYANALYZER_MQH__
#define __ANALYZE_ABSTRACT_IVOLATILITYANALYZER_MQH__

#include "../StructAverage.mqh"
#include "../../Data/TimeSeries.mqh"

//+------------------------------------------------------------------+
//| Interface abstraite pour les analyseurs de volatilité            |
//+------------------------------------------------------------------+
interface IVolatilityAnalyzer
{
    StructAverage CalculateVolatility(const TimeSeries &time_series);
};

#endif