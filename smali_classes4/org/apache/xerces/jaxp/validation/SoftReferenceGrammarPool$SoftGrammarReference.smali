.class final Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftGrammarReference"
.end annotation


# instance fields
.field public entry:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    return-void
.end method
