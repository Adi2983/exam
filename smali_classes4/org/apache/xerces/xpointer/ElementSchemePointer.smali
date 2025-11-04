.class final Lorg/apache/xerces/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;,
        Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method protected checkMatch()Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_2

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    :goto_1
    const/4 v2, 0x1

    move v0, v2

    :goto_2
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    move v3, v1

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move v4, v1

    aget v3, v3, v4

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_7

    const/4 v2, 0x0

    move v1, v2

    :goto_3
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    move v3, v1

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    move v0, v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    move v3, v1

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_6

    const/4 v2, 0x0

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    move v0, v2

    goto :goto_2
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected init()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v1, :cond_1

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xpointer/XPointerErrorHandler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

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

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v1}, Lorg/apache/xerces/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-eqz v1, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-lt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    move v0, v1

    return v0
.end method

.method protected matchChildSequence(Lorg/apache/xerces/xni/QName;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v5, v5

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v4, v4

    new-array v4, v4, [I

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    const/4 v7, 0x0

    move-object v8, v3

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v6, v4, v5

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    :cond_2
    :goto_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move v0, v4

    return v0

    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_0

    :cond_4
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ne v4, v5, :cond_6

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    :cond_5
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto :goto_0

    :cond_6
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ge v4, v5, :cond_7

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v4, :cond_8

    :cond_7
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v4, v5, :cond_5

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v4, :cond_5

    :cond_8
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_1

    :cond_9
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v6, v4, v5

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    if-nez v4, :cond_a

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    :goto_2
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto/16 :goto_0

    :cond_a
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_2

    :cond_b
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto/16 :goto_0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->init()V

    new-instance v9, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$1;)V

    move-object v2, v9

    new-instance v9, Lorg/apache/xerces/xpointer/ElementSchemePointer$1;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v10, v11, v12}, Lorg/apache/xerces/xpointer/ElementSchemePointer$1;-><init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;)V

    move-object v3, v9

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v4, v9

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v2

    move-object v12, v1

    const/4 v13, 0x0

    move v14, v4

    invoke-static/range {v9 .. v14}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->access$300(Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v9

    move v5, v9

    move v9, v5

    if-nez v9, :cond_0

    move-object v9, v0

    const-string/jumbo v10, "InvalidElementSchemeXPointer"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v9, v2

    invoke-static {v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$400(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move-object v9, v2

    invoke-static {v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$500(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v9, v0

    move v10, v7

    new-array v10, v10, [I

    iput-object v10, v9, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    move-object v9, v0

    move v10, v7

    new-array v10, v10, [I

    iput-object v10, v9, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    const/4 v12, 0x0

    move v13, v7

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    move-object v9, v2

    invoke-static {v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$600(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    move v8, v9

    move v9, v8

    packed-switch v9, :pswitch_data_0

    move-object v9, v0

    const-string/jumbo v10, "InvalidElementSchemeXPointer"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    move-object v9, v2

    invoke-static {v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$600(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    move v8, v9

    move-object v9, v0

    move-object v10, v2

    move v11, v8

    invoke-static {v10, v11}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$200(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    move-object v9, v0

    new-instance v10, Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v11, v12}, Lorg/apache/xerces/xpointer/ShortHandPointer;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v10, v9, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v9, v6

    move v10, v7

    move-object v11, v2

    invoke-static {v11}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$600(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected reportError(Ljava/lang/String;[Ljava/lang/Object;)V
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

    iget-object v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v6, 0x0

    move v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lorg/apache/xerces/xpointer/ShortHandPointer;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xpointer/ShortHandPointer;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v6

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_0

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v6, v6

    if-lez v6, :cond_2

    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->matchChildSequence(Lorg/apache/xerces/xni/QName;I)Z

    move-result v7

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    :goto_1
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    move v0, v6

    return v0

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_1
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_2
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v6, v6

    if-gtz v6, :cond_3

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-void
.end method
