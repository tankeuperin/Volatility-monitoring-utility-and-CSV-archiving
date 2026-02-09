#ifndef __DATA_ABSTRACT_IDATARETRIEVE_MQH__
#define __DATA_ABSTRACT_IDATARETRIEVE_MQH__

#include "../TimeSeries.mqh"

//+------------------------------------------------------------------+
//| Interface abstraite pour la récupération de données temporelles  |
//+------------------------------------------------------------------+
interface IDataRetrieve
{
   TimeSeries GetSeries(int bars);
};

#endif