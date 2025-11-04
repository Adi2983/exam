.class public final Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SREntry"
.end annotation


# instance fields
.field public bucket:I

.field public next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field public prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->initialize(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CIILorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    new-instance v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;[CII)V

    move-object v10, v7

    invoke-direct {v8, v9, v10}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v8, v0

    move-object v9, v5

    move v10, v6

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->initialize(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    return-void
.end method
