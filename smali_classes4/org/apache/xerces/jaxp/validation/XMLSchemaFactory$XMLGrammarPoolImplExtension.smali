.class Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
.super Lorg/apache/xerces/util/XMLGrammarPoolImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XMLGrammarPoolImplExtension"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method getGrammarCount()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->fGrammarCount:I

    move v0, v1

    return v0
.end method
