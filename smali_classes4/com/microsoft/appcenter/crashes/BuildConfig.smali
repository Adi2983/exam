.class public final Lcom/microsoft/appcenter/crashes/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.appcenter.crashes"

.field public static final MIN_SDK_VERSION:I = 0x15

.field public static final SDK_NAME:Ljava/lang/String; = "appcenter.android"

.field public static final TARGET_SDK_VERSION:I = 0x21

.field public static final VERSION_NAME:Ljava/lang/String; = "5.0.0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/BuildConfig;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
