.class final Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_ELEM_CHILD:I = 0x1

.field private static final XPTRTOKEN_ELEM_NCNAME:I


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field private final this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "XPTRTOKEN_ELEM_NCNAME"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "XPTRTOKEN_ELEM_CHILD"

    aput-object v7, v5, v6

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fgTokenNames:[Ljava/lang/String;

    move-object v3, v0

    const/16 v4, 0x100

    new-array v4, v4, [I

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v5, "XPTRTOKEN_ELEM_NCNAME"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v5, "XPTRTOKEN_ELEM_CHILD"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$1;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static access$200(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static access$400(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static access$500(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static access$600(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static access$700(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method static access$800(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method private addToken(I)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    move v6, v1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v3, v4

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    move v6, v1

    aput v6, v4, v5

    goto :goto_0
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method private getToken(I)Ljava/lang/Integer;
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    return-object v0
.end method

.method private getTokenCount()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    move v0, v1

    return v0
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method private hasMore()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nextToken()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v2, "XPointerElementSchemeProcessingError"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v3, "XPointerElementSchemeProcessingError"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private peekToken()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v2, "XPointerElementSchemeProcessingError"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method private rewind()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
