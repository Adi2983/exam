.class Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/XMLGrammarPreparser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XMLGrammarLoaderContainer"
.end annotation


# instance fields
.field public final loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

.field public modCount:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    return-void
.end method
