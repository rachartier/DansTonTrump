#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include <QJsonObject>

#include "quotemanager.h"
#include "restapi.h"
int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    QScopedPointer<QQuickView> view(SailfishApp::createView());

    view->setSource(SailfishApp::pathTo("qml/danstontrump.qml"));
    view->show();

    qmlRegisterType<Quote>("com.iut", 1, 0, "Quote");

    qmlRegisterSingletonType<QuoteManager>("com.iut", 1, 0, "QuoteManager", [](QQmlEngine* engine, QJSEngine* jsEngine) -> QObject* {
        Q_UNUSED(engine)
        Q_UNUSED(jsEngine)
        return new QuoteManager();
    });

    return app->exec();
}
