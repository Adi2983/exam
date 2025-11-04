.class public abstract Ljavax/xml/bind/attachment/AttachmentMarshaller;
.super Ljava/lang/Object;
.source "AttachmentMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/attachment/AttachmentMarshaller;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addMtomAttachment(Ljavax/activation/DataHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addMtomAttachment([BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addSwaRefAttachment(Ljavax/activation/DataHandler;)Ljava/lang/String;
.end method

.method public isXOPPackage()Z
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/attachment/AttachmentMarshaller;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/attachment/AttachmentMarshaller;
    return v0
.end method
