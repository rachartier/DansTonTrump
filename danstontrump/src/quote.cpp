#include "quote.h"

Quote::Quote(QString message)
{
    m_message = message;
}

QString Quote::getMessage() {
    return m_message;
}
