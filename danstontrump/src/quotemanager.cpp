#include "quotemanager.h"
#include "quotebuilder.h"

QuoteManager::QuoteManager()
{

}

Quote* QuoteManager::getRandomQuote() {
    QJsonObject result = m_api.get("https://api.whatdoestrumpthink.com/api/v1/quotes/random");

    return QuoteBuilder::createQuoteFromJson(result);
}

Quote* QuoteManager::getPersonalizedQuote(QString name) {
    QJsonObject result = m_api.get("https://api.whatdoestrumpthink.com/api/v1/quotes/personalized?q=" + name);

    return QuoteBuilder::createQuoteFromJson(result);
}

QVariantList QuoteManager::getQuotes() {
    QJsonObject result = m_api.get("https://api.whatdoestrumpthink.com/api/v1/quotes");

    return QuoteBuilder::createQuotesListFromJson(result);
}
