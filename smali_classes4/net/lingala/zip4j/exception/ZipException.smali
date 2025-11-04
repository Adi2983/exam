.class public Lnet/lingala/zip4j/exception/ZipException;
.super Ljava/lang/Exception;
.source "ZipException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 23
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move v2, p2

    .local v2, "code":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 38
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move v3, p3

    .local v3, "code":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 43
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    move v2, p2

    .local v2, "code":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 52
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lnet/lingala/zip4j/exception/ZipException;->code:I

    .line 53
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/exception/ZipException;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/exception/ZipException;->code:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/exception/ZipException;
    return v0
.end method
