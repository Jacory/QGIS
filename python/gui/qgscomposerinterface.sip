/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgscomposerinterface.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsComposerInterface: QObject
{
%Docstring
A common interface for composer dialogs.

Provides a common interface and stable API for composer editor dialogs.
This interface can be used by plugins and scripts to interact with
open composer dialogs.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgscomposerinterface.h"
%End
  public:

    QgsComposerInterface( QObject *parent /TransferThis/ = 0 );
%Docstring
Constructor for QgsComposerInterface.
%End

    virtual QgsComposerView *view() = 0;
%Docstring
Returns the composer's QgsComposerView editor widget.
%End

    virtual QgsComposition *composition() = 0;
%Docstring
Returns the composition displated in the composer.
%End

    virtual void close() = 0;
%Docstring
Closes the composer window.
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgscomposerinterface.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
