.class public final Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SREntryData"
.end annotation


# instance fields
.field public final characters:[C

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v4, v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    move-object v5, v0

    move v6, v4

    new-array v6, v6, [C

    iput-object v6, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 v8, 0x0

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
