/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgsgeometrygeneratorsymbollayer.h                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsGeometryGeneratorSymbolLayer : QgsSymbolLayer
{

%TypeHeaderCode
#include "qgsgeometrygeneratorsymbollayer.h"
%End
  public:
    ~QgsGeometryGeneratorSymbolLayer();

    static QgsSymbolLayer *create( const QgsStringMap &properties ) /Factory/;
%Docstring
 :rtype: QgsSymbolLayer
%End

    virtual QString layerType() const;


    void setSymbolType( QgsSymbol::SymbolType symbolType );
%Docstring
 Set the type of symbol which should be created.
 Should match with the return type of the expression.

 \param symbolType The symbol type which shall be used below this symbol.
%End

    QgsSymbol::SymbolType symbolType() const;
%Docstring
 Access the symbol type. This defines the type of geometry
 that is created by this generator.

 :return: Symbol type
 :rtype: QgsSymbol.SymbolType
%End

    virtual void startRender( QgsSymbolRenderContext &context );


    virtual void stopRender( QgsSymbolRenderContext &context );


    virtual QgsSymbolLayer *clone() const /Factory/;


    virtual QgsStringMap properties() const;


    virtual void drawPreviewIcon( QgsSymbolRenderContext &context, QSize size );


    void setGeometryExpression( const QString &exp );
%Docstring
 Set the expression to generate this geometry.
%End

    QString geometryExpression() const;
%Docstring
 Get the expression to generate this geometry.
 :rtype: str
%End

    virtual QgsSymbol *subSymbol();

    virtual bool setSubSymbol( QgsSymbol *symbol /Transfer/ );

    virtual QSet<QString> usedAttributes( const QgsRenderContext &context ) const;

    virtual bool isCompatibleWithSymbol( QgsSymbol *symbol ) const;

%Docstring
care about the geometry of its parents.
 :rtype: bool
%End

    virtual void render( QgsSymbolRenderContext &context );
%Docstring
 Will render this symbol layer using the context.
 In comparison to other symbols there is no geometry passed in, since
 the geometry will be created based on information from the context
 which contains a QgsRenderContext which in turn contains an expression
 context which is available to the evaluated expression.

 \param context The rendering context which will be used to render and to
                construct a geometry.
%End

    virtual void setColor( const QColor &color );


  private:
    QgsGeometryGeneratorSymbolLayer( const QgsGeometryGeneratorSymbolLayer &copy );
};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgsgeometrygeneratorsymbollayer.h                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
