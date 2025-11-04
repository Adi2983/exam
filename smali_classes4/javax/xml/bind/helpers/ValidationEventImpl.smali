.class public Ljavax/xml/bind/helpers/ValidationEventImpl;
.super Ljava/lang/Object;
.source "ValidationEventImpl.java"

# interfaces
.implements Ljavax/xml/bind/ValidationEvent;


# instance fields
.field private linkedException:Ljava/lang/Throwable;

.field private locator:Ljavax/xml/bind/ValidationEventLocator;

.field private message:Ljava/lang/String;

.field private severity:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move v1, p1

    .local v1, "_severity":I
    move-object v2, p2

    .local v2, "_message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "_locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move v1, p1

    .local v1, "_severity":I
    move-object v2, p2

    .local v2, "_message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "_locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v4, p4

    .local v4, "_linkedException":Ljava/lang/Throwable;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljavax/xml/bind/helpers/ValidationEventImpl;->setSeverity(I)V

    .line 64
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    .line 65
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavax/xml/bind/helpers/ValidationEventImpl;->locator:Ljavax/xml/bind/ValidationEventLocator;

    .line 66
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    .line 67
    return-void
.end method


# virtual methods
.method public getLinkedException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    return-object v0
.end method

.method public getLocator()Ljavax/xml/bind/ValidationEventLocator;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventImpl;->locator:Ljavax/xml/bind/ValidationEventLocator;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    return-object v0
.end method

.method public getSeverity()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, v0

    iget v1, v1, Ljavax/xml/bind/helpers/ValidationEventImpl;->severity:I

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    return v0
.end method

.method public setLinkedException(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, p1

    .local v1, "_linkedException":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    .line 120
    return-void
.end method

.method public setLocator(Ljavax/xml/bind/ValidationEventLocator;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, p1

    .local v1, "_locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventImpl;->locator:Ljavax/xml/bind/ValidationEventLocator;

    .line 132
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v1, p1

    .local v1, "_message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSeverity(I)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move v1, p1

    .local v1, "_severity":I
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "ValidationEventImpl.IllegalSeverity"

    invoke-static {v4}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventImpl;->severity:I

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/ValidationEventImpl;->getSeverity()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 146
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/ValidationEventImpl;->getSeverity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 148
    .local v1, "s":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "[severity={0},message={1},locator={2}]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/xml/bind/helpers/ValidationEventImpl;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/xml/bind/helpers/ValidationEventImpl;->getLocator()Ljavax/xml/bind/ValidationEventLocator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    return-object v0

    .line 143
    .end local v1    # "s":Ljava/lang/String;
    .restart local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventImpl;
    :pswitch_0
    const-string/jumbo v2, "WARNING"

    move-object v1, v2

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "ERROR"

    move-object v1, v2

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "FATAL_ERROR"

    move-object v1, v2

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
