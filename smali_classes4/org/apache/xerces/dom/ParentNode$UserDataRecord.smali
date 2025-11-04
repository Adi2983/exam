.class Lorg/apache/xerces/dom/ParentNode$UserDataRecord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/ParentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDataRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37313931353437L


# instance fields
.field fData:Ljava/lang/Object;

.field fHandler:Lorg/w3c/dom/UserDataHandler;

.field private final this$0:Lorg/apache/xerces/dom/ParentNode;


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->this$0:Lorg/apache/xerces/dom/ParentNode;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    return-void
.end method
