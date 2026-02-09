//+------------------------------------------------------------------+
//|                                                        Data.mqh    |
//|          MASTER HEADER - Gère toutes les inclusions du module     |
//|                     Volatility Monitoring Utility                 |
//+------------------------------------------------------------------+
//| RÔLE : Point d'entrée centralisé pour le module Data             |
//|        Évite les inclusions en cascades et les dépendances        |
//|        circulaires en imposant un ordre strict.                   |
//|                                                                    |
//| HIÉRARCHIE D'INCLUSIONS (INVIOLABLE) :                            |
//|  1. TimeSeries.mqh (aucune dépendance)                            |
//|  2. AbstractData/IDataRetrieve.mqh (inclut TimeSeries)            |
//|  3. DataMT5.mqh (implémentation de IDataRetrieve)                 |
//|  4. AbstractData/DataRetrieve.mqh (adaptateur)                    |
//|                                                                    |
//| UTILISATION :                                                     |
//|  // Au lieu de :                                                  |
//|  #include "Data/TimeSeries.mqh"                                   |
//|  #include "Data/AbstractData/IDataRetrieve.mqh"                   |
//|  #include "Data/DataMT5.mqh"                                      |
//|                                                                    |
//|  // Faire simplement :                                            |
//|  #include "Data/Data.mqh"                                         |
//+------------------------------------------------------------------+

#ifndef __DATA_MQH__
#define __DATA_MQH__

// Étape 1 : Types de base
#include "TimeSeries.mqh"

// Étape 2 : Interfaces abstraites
#include "AbstractData/IDataRetrieve.mqh"

// Étape 3 : Implémentations concrètes
#include "DataMT5.mqh"

// Étape 4 : Adaptateurs et façades
#include "AbstractData/DataRetrieve.mqh"

#endif
