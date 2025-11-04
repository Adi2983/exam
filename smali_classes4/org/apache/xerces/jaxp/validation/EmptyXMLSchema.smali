.class final Lorg/apache/xerces/jaxp/validation/EmptyXMLSchema;
.super Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lorg/apache/xerces/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public isFullyComposed()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public lockPool()V
    .locals 0

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v0, v2

    return-object v0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
