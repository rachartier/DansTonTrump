#ifndef RESTAPI_H
#define RESTAPI_H

#include <QObject>
#include <QJsonObject>
#include <QtNetwork>
#include <QNetworkRequest>
#include <QUrl>
#include <functional>

class RestAPI : public QObject
{
    Q_OBJECT

public:
    RestAPI();
    ~RestAPI();

    QJsonObject get(QString url);

private:
    QNetworkAccessManager *m_networkAccessManager;
};

#endif // RESTAPI_H
