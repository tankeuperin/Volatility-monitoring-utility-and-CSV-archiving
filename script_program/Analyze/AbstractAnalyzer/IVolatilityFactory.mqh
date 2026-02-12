#ifndef __ANALYZE_ABSTRACT_IVOLATILITYFACTORY_MQH__
#define __ANALYZE_ABSTRACT_IVOLATILITYFACTORY_MQH__

#include "IVolatilityAnalyzer.mqh"

//+------------------------------------------------------------------+
//| Interface Factory pour créer les analyseurs de volatilité       |
//+------------------------------------------------------------------+
interface IVolatilityFactory
{
    IVolatilityAnalyzer* Create();
};

#endif