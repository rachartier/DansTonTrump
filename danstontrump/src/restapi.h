#ifndef RESTAPI_H
#define RESTAPI_H

#include <QObject>
#include <QJsonObject>
#include <QtNetwork>
#include <QNetworkRequest>
#include <QUrl>

class RestAPI : public QObject
{
    Q_OBJECT

public:
    RestAPI();
    ~RestAPI();

    void get(QString url);

public slots:
    virtual void requestFinished(QNetworkReply *reply) = 0;

private:
    QNetworkAccessManager *m_networkAccessManager;
};

#endif // RESTAPI_H
