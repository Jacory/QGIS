/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsmessagebaritem.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsMessageBarItem : QWidget
{

%TypeHeaderCode
#include "qgsmessagebaritem.h"
%End
  public:
    QgsMessageBarItem( const QString &text, QgsMessageBar::MessageLevel level = QgsMessageBar::INFO, int duration = 0, QWidget *parent /TransferThis/ = 0 );
%Docstring
make out a widget containing a message to be displayed on the bar
%End

    QgsMessageBarItem( const QString &title, const QString &text, QgsMessageBar::MessageLevel level = QgsMessageBar::INFO, int duration = 0, QWidget *parent /TransferThis/ = 0 );
%Docstring
make out a widget containing title and message to be displayed on the bar
%End

    QgsMessageBarItem( const QString &title, const QString &text, QWidget *widget, QgsMessageBar::MessageLevel level = QgsMessageBar::INFO, int duration = 0, QWidget *parent /TransferThis/ = 0 );
%Docstring
make out a widget containing title, message and widget to be displayed on the bar
%End

    QgsMessageBarItem( QWidget *widget, QgsMessageBar::MessageLevel level = QgsMessageBar::INFO, int duration = 0, QWidget *parent /TransferThis/ = 0 );
%Docstring
make out a widget containing a widget to be displayed on the bar
%End

    QgsMessageBarItem *setText( const QString &text );

    QString text() const;
%Docstring
Returns the text for the message.
%End

    QgsMessageBarItem *setTitle( const QString &title );

    QString title() const;
%Docstring
Returns the title for the message.
%End

    QgsMessageBarItem *setLevel( QgsMessageBar::MessageLevel level );

    QgsMessageBar::MessageLevel level() const;
%Docstring
Returns the message level for the message.
%End

    QgsMessageBarItem *setWidget( QWidget *widget );

    QWidget *widget() const;
%Docstring
Returns the widget for the message.
%End

    QgsMessageBarItem *setIcon( const QIcon &icon );

    QIcon icon() const;
%Docstring
Returns the icon for the message.
%End

    QgsMessageBarItem *setDuration( int duration );

    int duration() const;
%Docstring
returns the duration in second of the message
%End

    QString getStyleSheet();
%Docstring
returns the styleSheet
%End

  signals:
    void styleChanged( const QString &styleSheet );
%Docstring
emitted when the message level has changed
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsmessagebaritem.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
