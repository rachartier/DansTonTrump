#include "restapi.h"

RestAPI::RestAPI()
{
    m_networkAccessManager = new QNetworkAccessManager();
    QObject::connect(m_networkAccessManager, SIGNAL(finished(QNetworkReply *)),
                     this, SLOT(requestFinished(QNetworkReply *)));
}

RestAPI::~RestAPI()
{
    QObject::disconnect(m_networkAccessManager, SIGNAL(finished(QNetworkReply *)),
                        this, SLOT(requestFinished(QNetworkReply *)));
}

void RestAPI::get(QString url)
{
    QNetworkRequest request;
    request.setUrl(QUrl(url));

    m_networkAccessManager->get(request);
}
