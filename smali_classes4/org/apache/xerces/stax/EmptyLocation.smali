.class public final Lorg/apache/xerces/stax/EmptyLocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/Location;


# static fields
.field private static final EMPTY_LOCATION_INSTANCE:Lorg/apache/xerces/stax/EmptyLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/stax/EmptyLocation;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/stax/EmptyLocation;-><init>()V

    sput-object v0, Lorg/apache/xerces/stax/EmptyLocation;->EMPTY_LOCATION_INSTANCE:Lorg/apache/xerces/stax/EmptyLocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/xerces/stax/EmptyLocation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/stax/EmptyLocation;->EMPTY_LOCATION_INSTANCE:Lorg/apache/xerces/stax/EmptyLocation;

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method
