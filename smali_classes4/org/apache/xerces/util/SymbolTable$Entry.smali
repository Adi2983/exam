.class public final Lorg/apache/xerces/util/SymbolTable$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public final characters:[C

.field public next:Lorg/apache/xerces/util/SymbolTable$Entry;

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable$Entry;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v4, v4, [C

    iput-object v4, v3, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v5, v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method

.method public constructor <init>([CIILorg/apache/xerces/util/SymbolTable$Entry;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move v6, v3

    new-array v6, v6, [C

    iput-object v6, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method
