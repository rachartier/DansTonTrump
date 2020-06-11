#ifndef QUOTEBUILDER_H
#define QUOTEBUILDER_H

#include <QObject>
#include <QJsonObject>

#include "quote.h"

class QuoteBuilder : public QObject
{
    Q_OBJECT

public:
    QuoteBuilder();

    static Quote* createQuoteFromJson(QJsonObject& jsonObject);
    static std::list<Quote*> createQuotesListFromJson(QJsonObject& jsonObject);
};

#endif // QUOTEBUILDER_H
