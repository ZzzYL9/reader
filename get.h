#ifndef GET_H
#define GET_H

#include <QtCore>


class GET : public QObject
{
    Q_OBJECT
    Q_DISABLE_COPY(GET)
public:
    GET(QObject *parent = 0);
    ~GET();

    Q_INVOKABLE void up_load();
    Q_INVOKABLE void down_load();
};

#endif // GET_H
