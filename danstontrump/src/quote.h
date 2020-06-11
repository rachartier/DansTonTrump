#ifndef QUOTE_H
#define QUOTE_H

#include <QObject>

class Quote : public QObject
{
    Q_OBJECT
public:
    explicit Quote(QString message);

    static Quote createFromJson(QJsonObject &jsonObject);

    QString getMessage();

signals:

public slots:

private:
    QString m_message;
};

#endif // QUOTE_H
