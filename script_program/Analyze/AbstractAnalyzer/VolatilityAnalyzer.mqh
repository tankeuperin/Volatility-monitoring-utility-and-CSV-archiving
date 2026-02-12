#ifndef __ANALYZE_VOLATILITYANALYZER_MQH__
#define __ANALYZE_VOLATILITYANALYZER_MQH__

#include "IVolatilityAnalyzer.mqh"
#include "IVolatilityFactory.mqh"
#include "../StructAverage.mqh"
#include "../../Data/TimeSeries.mqh"

//+------------------------------------------------------------------+
//| Façade pour coordonner l'analyse de volatilité                 |
//| Utilise une implémentation injectée via factory                 |
//+------------------------------------------------------------------+
class VolatilityAnalyzer
{
    private:
        IVolatilityAnalyzer* analyzer;
    
    public:
        VolatilityAnalyzer(IVolatilityFactory* factory): analyzer(NULL)
        {
            if(factory != NULL)
            {
                analyzer = factory.Create();
            }
        }
        
        ~VolatilityAnalyzer()
        {
            if(analyzer != NULL) delete analyzer;
        }

        StructAverage GetAverage(const TimeSeries &time_series)
        {
            if(analyzer == NULL) 
                return {0.0, 0.0};
            
            return analyzer.CalculateVolatility(time_series);
        }
};

#endif