.class final Lorg/apache/xerces/dom/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1a902049927ee222L


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    move-object v0, v1

    return-object v0
.end method
