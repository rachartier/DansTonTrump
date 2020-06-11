#ifndef QUOTEBUILDER_H
#define QUOTEBUILDER_H

#include <QObject>
#include <QJsonObject>
#include <QList>

#include "quote.h"

class QuoteBuilder : public QObject
{
    Q_OBJECT

public:
    QuoteBuilder();

    static Quote* createQuoteFromJson(QJsonObject& jsonObject);
    static QList<Quote*> createQuotesListFromJson(QJsonObject& jsonObject);
};

#endif // QUOTEBUILDER_H
