.class public final Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/XMLGrammarPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

.field public grammar:Lorg/apache/xerces/xni/grammars/Grammar;

.field public hash:I

.field public next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;


# direct methods
.method protected constructor <init>(ILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    :cond_0
    return-void
.end method
