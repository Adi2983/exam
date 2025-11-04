.class final Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field public bucket:I

.field public desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

.field public grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

.field public hash:I

.field public next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field public prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;


# direct methods
.method protected constructor <init>(IILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move v8, v1

    iput v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    move-object v8, v0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_0
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v4

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_0
    return-void
.end method
