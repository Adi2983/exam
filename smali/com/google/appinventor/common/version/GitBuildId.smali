.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "February 12 2023"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "5447597444e10fec86ca6df06139d23da91fe0c3"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "1.5B.3-Fenix"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "February 12 2023"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "5447597444e10fec86ca6df06139d23da91fe0c3"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    const-string/jumbo v1, "1.5B.3-Fenix"

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    .line 31
    move-object v0, v2

    const-string/jumbo v2, ""

    if-eq v1, v2, :cond_0

    move-object v1, v0

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    const-string/jumbo v1, "none"

    move-object v0, v1

    .line 34
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method
