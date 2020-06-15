#ifndef QUOTE_H
#define QUOTE_H

#include <QObject>

class Quote : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_message READ getMessage NOTIFY messageReceived)

public:
    explicit Quote(QString message);

    static Quote createFromJson(QJsonObject &jsonObject);

    QString getMessage();

signals:
    void messageReceived();

public slots:

private:
    QString m_message;
};

#endif // QUOTE_H
