#include "restapi.h"

RestAPI::RestAPI()
{
    m_networkAccessManager = new QNetworkAccessManager();
}

RestAPI::~RestAPI()
{
}

QJsonObject RestAPI::get(QString url)
{
    QNetworkRequest request;
    request.setUrl(QUrl(url));

    QNetworkReply *reply = m_networkAccessManager->get(request);

    QEventLoop loop;
    connect(reply, SIGNAL(finished()), &loop, SLOT(quit()));
    connect(reply, SIGNAL(error(QNetworkReply::NetworkError)), &loop, SLOT(quit()));
    loop.exec();

    QByteArray bytes = reply->readAll();
    QString result(bytes);

    QJsonDocument jsonResponse = QJsonDocument::fromJson(result.toUtf8());
    QJsonObject jsonObject = jsonResponse.object();

    return jsonObject;
}
