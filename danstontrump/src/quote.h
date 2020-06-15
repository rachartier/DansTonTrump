#ifndef QUOTE_H
#define QUOTE_H

#include <QObject>

class Quote : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString message READ getMessage WRITE setMessage NOTIFY messageChanged)

public:
    explicit Quote(QString message);
    Quote() {}

    QString getMessage();
    void setMessage(QString newMessage);

signals:
    void messageChanged();

private:
    QString m_message;
};

#endif // QUOTE_H
