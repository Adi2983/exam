.class public abstract Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
.super Ljava/lang/Object;
.source "AttachmentUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttachmentAsByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getAttachmentAsDataHandler(Ljava/lang/String;)Ljavax/activation/DataHandler;
.end method

.method public isXOPPackage()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
    return v0
.end method
