#ifndef QUOTEMANAGER_H
#define QUOTEMANAGER_H

#include "quote.h"
#include "restapi.h"

class QuoteManager : public QObject
{
    Q_OBJECT

public:
    QuoteManager();

    Q_INVOKABLE Quote* getRandomQuote();
    Q_INVOKABLE Quote* getPersonalizedQuote(QString name);
    Q_INVOKABLE QList<Quote*> getQuotes();

private:
    RestAPI m_api;
};

#endif // QUOTEMANAGER_H
