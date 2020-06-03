#ifndef RESTAPI_H
#define RESTAPI_H

#include <QObject>
#include <QJsonObject>

class RestAPI : public QObject
{
    Q_OBJECT
public:
    static QJsonObject GET(QString url);
};

#endif // RESTAPI_H
