#ifndef RESTAPITRUMP_H
#define RESTAPITRUMP_H

#include "restapi.h"

class RestAPITrump : public RestAPI
{
public:
    RestAPITrump();

public slots:
    void requestFinished(QNetworkReply *reply);
};

#endif // RESTAPITRUMP_H
