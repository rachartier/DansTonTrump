#include "quote.h"

Quote::Quote(QString message)
{
    m_message = message;
    emit messageReceived();
}

QString Quote::getMessage() {
    return m_message;
}
