#include "restapi.h"
#include <QtNetwork>
#include <QNetworkRequest>
#include <QUrl>

QJsonObject RestAPI::GET(QString url)
{
    QNetworkAccessManager networkAccessManager;
    QNetworkRequest request;

    request.setUrl(QUrl(url));

    QNetworkReply *reply = networkAccessManager.get(request);

    QTime timeout= QTime::currentTime().addSecs(5);

    while(QTime::currentTime() < timeout && !reply->isFinished()){
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    }

    qDebug() << reply->readAll();

    QJsonDocument document = QJsonDocument::fromJson(reply->readAll());
    return document.object();
}
