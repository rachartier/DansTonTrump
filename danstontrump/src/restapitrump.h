#ifndef RESTAPITRUMP_H
#define RESTAPITRUMP_H

#include "restapi.h"
#include "quote.h"

class RestAPITrump : public RestAPI
{
public:
    RestAPITrump();

public slots:
    void requestFinished(QNetworkReply *reply);

signals:
    //void dataCollected(std::list<Quote*> quotes);
};

#endif // RESTAPITRUMP_H
