.class public final Lcom/google/zxing/client/android/Contents$Type;
.super Ljava/lang/Object;
.source "Contents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Contents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final CONTACT:Ljava/lang/String; = "CONTACT_TYPE"

.field public static final EMAIL:Ljava/lang/String; = "EMAIL_TYPE"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION_TYPE"

.field public static final PHONE:Ljava/lang/String; = "PHONE_TYPE"

.field public static final SMS:Ljava/lang/String; = "SMS_TYPE"

.field public static final TEXT:Ljava/lang/String; = "TEXT_TYPE"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Contents$Type;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method
