.class public Lorg/apache/xerces/dom3/as/DOMASException;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final DUPLICATE_NAME_ERR:S = 0x1s

.field public static final NO_AS_AVAILABLE:S = 0x3s

.field public static final TYPE_ERR:S = 0x2s

.field public static final WRONG_MIME_TYPE_ERR:S = 0x4s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move v4, v1

    iput-short v4, v3, Lorg/apache/xerces/dom3/as/DOMASException;->code:S

    return-void
.end method
