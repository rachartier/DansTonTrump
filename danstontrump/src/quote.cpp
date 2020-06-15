#include "quote.h"

Quote::Quote(QString message)
{
    m_message = message;
}

QString Quote::getMessage() {
    return m_message;
}

void Quote::setMessage(QString newMessage) {
    if(m_message != newMessage) {
        m_message = newMessage;
        emit messageChanged();
    }
}
