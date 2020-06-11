#include "restapitrump.h"

RestAPITrump::RestAPITrump()
{

}

void RestAPITrump::requestFinished(QNetworkReply *reply) {
    if (reply->error()) {
        qDebug() << reply->errorString();
        return;
    }

    QString answer = reply->readAll();

    qDebug() << answer;
}
