#ifndef __DATA_ABSTRACT_DATARETRIEVE_MQH__
#define __DATA_ABSTRACT_DATARETRIEVE_MQH__

#include "IDataRetrieve.mqh"

//+------------------------------------------------------------------+
//| Adaptateur pour récupérer les données via l'interface abstraite  |
//| DÉPENDANCES : IDataRetrieve.mqh                                  |
//+------------------------------------------------------------------+
class DataRetrieve
{
  private:
     IDataRetrieve* iretrieve_data;

  public:
     DataRetrieve(IDataRetrieve* provider): iretrieve_data(provider)
     {}

     //+------------------------------------------------------------------+
     //| Récupère les séries temporelles depuis le fournisseur de données |
     //+------------------------------------------------------------------+
     TimeSeries GetData(int bars_numbers)
     {
       return this.iretrieve_data.GetSeries(bars_numbers);
     }
};

#endif

