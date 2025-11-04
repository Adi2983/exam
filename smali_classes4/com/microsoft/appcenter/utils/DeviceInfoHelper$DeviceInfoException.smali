.class public Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
.super Ljava/lang/Exception;
.source "DeviceInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/DeviceInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfoException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    move-object v1, p1

    .local v1, "detailMessage":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 222
    return-void
.end method
