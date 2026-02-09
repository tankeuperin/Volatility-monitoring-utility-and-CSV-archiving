#ifndef __DATA_DATAMT5_MQH__
#define __DATA_DATAMT5_MQH__

#include "TimeSeries.mqh"
#include "AbstractData/IDataRetrieve.mqh"

class MT5Data: public IDataRetrieve
{
   public:
   //Retrieved data from temporal serie
   TimeSeries GetSeries(int bars)
   {
      TimeSeries result;
      CopyHigh(NULL, 0, 0, bars, result.high);
      CopyLow(NULL, 0, 0, bars, result.low);
      CopyHigh(NULL, PERIOD_H4, 0, bars, result.h4_high);
      CopyLow(NULL, PERIOD_H4, 0, bars, result.h4_low);

      result.count = bars;
      return result;
   }
};

#endif