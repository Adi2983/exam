.class public final Lorg/apache/xerces/xpointer/XPointerHandler;
.super Lorg/apache/xerces/xinclude/XIncludeHandler;

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;,
        Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;
    }
.end annotation


# instance fields
.field private final ELEMENT_SCHEME_NAME:Ljava/lang/String;

.field protected fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v1, v0

    const-string/jumbo v2, "element"

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLErrorHandler;Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v0

    const-string/jumbo v5, "element"

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method static access$300(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/XPTR"

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v3

    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    :goto_0
    return-void

    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public getPointerParts()Ljava/util/ArrayList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getXPointerPart()Lorg/apache/xerces/xpointer/XPointerPart;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected init()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xpointer/XPointerHandler;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v1, :cond_1

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xpointer/XPointerErrorHandler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/XPTR"

    new-instance v3, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2}, Lorg/apache/xerces/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result v2

    :goto_0
    move v1, v2

    move v2, v1

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v2}, Lorg/apache/xerces/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v2

    :goto_0
    move v1, v2

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v2, :cond_0

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_0
    move v2, v1

    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isXPointerResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    move v0, v1

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler;->init()V

    new-instance v19, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$1;)V

    move-object/from16 v4, v19

    new-instance v19, Lorg/apache/xerces/xpointer/XPointerHandler$1;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler$1;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V

    move-object/from16 v5, v19

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v6, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v24, v6

    invoke-static/range {v19 .. v24}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->access$400(Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v19

    move/from16 v7, v19

    move/from16 v19, v7

    if-nez v19, :cond_0

    move-object/from16 v19, v2

    const-string/jumbo v20, "InvalidXPointerExpression"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$500(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v19

    if-nez v19, :cond_1

    return-void

    :cond_1
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move/from16 v19, v8

    packed-switch v19, :pswitch_data_0

    move-object/from16 v19, v2

    const-string/jumbo v20, "InvalidXPointerExpression"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    move-object/from16 v19, v9

    if-nez v19, :cond_2

    move-object/from16 v19, v2

    const-string/jumbo v20, "InvalidXPointerExpression"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v19, Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lorg/apache/xerces/xpointer/ShortHandPointer;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    move-object/from16 v10, v19

    move-object/from16 v19, v10

    move-object/from16 v20, v9

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    const/16 v19, 0x0

    move/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v13, v19

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    move-object/from16 v19, v14

    const-string/jumbo v20, "XPTRTOKEN_OPEN_PAREN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move/from16 v19, v8

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v19, v2

    const-string/jumbo v20, "MultipleShortHandPointers"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/16 v19, 0x0

    move-object/from16 v15, v19

    :goto_2
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$500(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v19

    if-nez v19, :cond_7

    :goto_3
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    move-object/from16 v19, v16

    const-string/jumbo v20, "XPTRTOKEN_CLOSE_PAREN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v19, v2

    const-string/jumbo v20, "SchemeDataNotFollowedByCloseParenthesis"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v13, v13, 0x1

    :goto_4
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$500(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)Z

    move-result v19

    if-nez v19, :cond_9

    :goto_5
    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v19, v2

    const-string/jumbo v20, "UnbalancedParenthesisInXPointerExpression"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    move/from16 v26, v12

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(I)V

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    move/from16 v26, v13

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(I)V

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v19, v11

    const-string/jumbo v20, "element"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    new-instance v19, Lorg/apache/xerces/xpointer/ElementSchemePointer;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/apache/xerces/xpointer/ElementSchemePointer;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    move-object/from16 v17, v19

    move-object/from16 v19, v17

    move-object/from16 v20, v11

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    move-object/from16 v19, v17

    move-object/from16 v20, v15

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    move-object/from16 v19, v17

    move-object/from16 v20, v15

    :try_start_0
    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    goto/16 :goto_0

    :cond_6
    move-object/from16 v19, v2

    const-string/jumbo v20, "InvalidXPointerExpression"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$600(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    move-object/from16 v19, v15

    const-string/jumbo v20, "XPTRTOKEN_OPEN_PAREN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v20, v4

    invoke-static/range {v20 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$700(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "XPTRTOKEN_OPEN_PAREN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v19

    move-object/from16 v18, v19

    new-instance v19, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v18

    invoke-direct/range {v20 .. v21}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v19

    :cond_b
    move-object/from16 v19, v2

    const-string/jumbo v20, "SchemeUnsupported"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v11

    aput-object v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    const/4 v7, 0x0

    move v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    if-nez v7, :cond_4

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    :cond_0
    :goto_1
    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v7, :cond_1

    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_1
    move v7, v5

    move v0, v7

    return v0

    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xpointer/XPointerPart;

    iput-object v8, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Lorg/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    const/4 v7, 0x1

    move v5, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Lorg/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v5, v7

    goto :goto_1
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/XPointerHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    if-ne v3, v4, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_5

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    :goto_0
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-handler"

    if-ne v3, v4, :cond_1

    move-object v3, v2

    if-eqz v3, :cond_6

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    :goto_1
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude/fixup-language"

    if-ne v3, v4, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_7

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    :cond_2
    :goto_2
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne v3, v4, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_8

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    :cond_3
    :goto_3
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne v3, v4, :cond_4

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_4
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    :cond_6
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1

    :cond_7
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    :cond_8
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/XPointerHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    :goto_0
    return-void

    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
