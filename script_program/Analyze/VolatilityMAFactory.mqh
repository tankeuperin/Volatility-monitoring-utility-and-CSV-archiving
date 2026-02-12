#ifndef __ANALYZE_VOLATILITYMAFACTORY_MQH__
#define __ANALYZE_VOLATILITYMAFACTORY_MQH__

#include "AbstractAnalyzer/IVolatilityFactory.mqh"
#include "VolatilityMA.mqh"

//+------------------------------------------------------------------+
//| Factory pour créer des instances de VolatilityMA               |
//+------------------------------------------------------------------+
class VolatilityMAFactory: public IVolatilityFactory
{
    public:
        IVolatilityAnalyzer* Create()
        {
            return new VolatilityMA();
        }
};

#endif