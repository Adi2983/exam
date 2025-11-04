.class public Lorg/apache/xerces/xs/XSException;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final INDEX_SIZE_ERR:S = 0x2s

.field public static final NOT_SUPPORTED_ERR:S = 0x1s

.field static final serialVersionUID:J = 0x2b2faa45e338cc2eL


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

    iput-short v4, v3, Lorg/apache/xerces/xs/XSException;->code:S

    return-void
.end method
