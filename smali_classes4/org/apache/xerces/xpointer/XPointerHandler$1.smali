.class Lorg/apache/xerces/xpointer/XPointerHandler$1;
.super Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;


# instance fields
.field private final this$0:Lorg/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method constructor <init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$1;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lorg/apache/xerces/xpointer/XPointerHandler;

    return-void
.end method


# virtual methods
.method protected addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lorg/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v4, "InvalidXPointerToken"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v1

    move v9, v2

    invoke-static {v8, v9}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$200(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/xpointer/XPointerHandler;->access$300(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
