.class final Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/AbstractDOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Abort"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

.field private static final serialVersionUID:J = 0x176c71b7e417be2aL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method
