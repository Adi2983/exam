.class Lorg/apache/xerces/dom/ParentNode$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private final this$0:Lorg/apache/xerces/dom/ParentNode;


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/ParentNode;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/ParentNode$1;->this$0:Lorg/apache/xerces/dom/ParentNode;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode$1;->this$0:Lorg/apache/xerces/dom/ParentNode;

    invoke-static {v1}, Lorg/apache/xerces/dom/ParentNode;->access$000(Lorg/apache/xerces/dom/ParentNode;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ParentNode$1;->this$0:Lorg/apache/xerces/dom/ParentNode;

    move v3, v1

    invoke-static {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->access$100(Lorg/apache/xerces/dom/ParentNode;I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
