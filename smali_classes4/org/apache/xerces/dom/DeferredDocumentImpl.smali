.class public Lorg/apache/xerces/dom/DeferredDocumentImpl;
.super Lorg/apache/xerces/dom/DocumentImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;,
        Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x801

    new-array v1, v1, [I

    sput-object v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    const/16 v2, 0x800

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    move v2, v0

    const/4 v3, -0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;-><init>(Z)V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method protected static binarySearch([IIII)I
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    :goto_0
    move v6, v1

    move v7, v2

    if-le v6, v7, :cond_0

    const/4 v6, -0x1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    move-object v6, v0

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    move v6, v5

    move v7, v3

    if-ne v6, v7, :cond_3

    :goto_2
    move v6, v4

    if-lez v6, :cond_1

    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    move v7, v3

    if-eq v6, v7, :cond_2

    :cond_1
    move v6, v4

    move v0, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    move v6, v5

    move v7, v3

    if-le v6, v7, :cond_4

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v2, v6

    goto :goto_0

    :cond_4
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v1, v6

    goto :goto_0
.end method

.method private final clearChunkIndex([[III)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move v6, v3

    aget v5, v5, v6

    :goto_0
    move v4, v5

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    const/16 v6, 0x800

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move v6, v3

    const/4 v7, -0x1

    aput v7, v5, v6

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    const/16 v6, 0x800

    aget v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    :cond_0
    move v5, v4

    move v0, v5

    return v0

    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    if-eqz v6, :cond_1

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/String;

    :goto_0
    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    const/16 v7, 0x800

    aget-object v6, v6, v7

    check-cast v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    move-object v5, v6

    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    move-object v6, v5

    iget v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v6, :cond_0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    :cond_0
    move-object v6, v4

    move-object v0, v6

    return-object v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private final createChunk([[II)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    const/16 v5, 0x801

    new-array v5, v5, [I

    aput-object v5, v3, v4

    sget-object v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/16 v7, 0x800

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    const/16 v5, 0x801

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v5, v3, v4

    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    const/16 v4, 0x800

    new-instance v5, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;-><init>()V

    aput-object v5, v3, v4

    return-void
.end method

.method private final getChunkIndex([[III)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget v4, v4, v5

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/String;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private static print([IIIII)V
    .locals 0

    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

.method private final setChunkIndex([[IIII)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v7

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_1

    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    move-object v5, v7

    :cond_1
    move-object v7, v5

    move v8, v4

    aget v7, v7, v8

    move v6, v7

    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move-object v7, v5

    const/16 v8, 0x800

    move-object v11, v7

    move v12, v8

    move-object v7, v11

    move v8, v12

    move-object v9, v11

    move v10, v12

    aget v9, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    :cond_2
    move-object v7, v5

    move v8, v4

    move v9, v2

    aput v9, v7, v8

    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v2

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    move v10, v3

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    move-object v5, v8

    move-object v8, v5

    if-nez v8, :cond_1

    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    move-object v5, v8

    :cond_1
    move-object v8, v5

    move v9, v4

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_2

    move-object v8, v5

    const/16 v9, 0x800

    aget-object v8, v8, v9

    check-cast v8, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    move-object v7, v8

    move-object v8, v7

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    :cond_2
    move-object v8, v5

    move v9, v4

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v8, v6

    move-object v0, v8

    goto :goto_0
.end method


# virtual methods
.method public appendChild(II)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v8, v1

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v3, v8

    move v8, v1

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v4, v8

    move v8, v2

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v5, v8

    move v8, v2

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v6, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v10, v1

    move v11, v5

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v10, v3

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v8

    move v7, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v10, v7

    move v11, v5

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v8

    return-void
.end method

.method public cloneNode(IZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v13, v1

    const/16 v14, 0xb

    shr-int/lit8 v13, v13, 0xb

    move v3, v13

    move v13, v1

    const/16 v14, 0x7ff

    and-int/lit16 v13, v13, 0x7ff

    move v4, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v14, v3

    aget-object v13, v13, v14

    move v14, v4

    aget v13, v13, v14

    move v5, v13

    move-object v13, v0

    move v14, v5

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v13

    move v6, v13

    move v13, v6

    const/16 v14, 0xb

    shr-int/lit8 v13, v13, 0xb

    move v7, v13

    move v13, v6

    const/16 v14, 0x7ff

    and-int/lit16 v13, v13, 0x7ff

    move v8, v13

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move/from16 v16, v3

    aget-object v15, v15, v16

    move/from16 v16, v4

    aget-object v15, v15, v16

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v13

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move/from16 v16, v3

    aget-object v15, v15, v16

    move/from16 v16, v4

    aget-object v15, v15, v16

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v13

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move/from16 v16, v3

    aget-object v15, v15, v16

    move/from16 v16, v4

    aget-object v15, v15, v16

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v14, v3

    aget-object v13, v13, v14

    move v14, v4

    aget v13, v13, v14

    move v9, v13

    move v13, v9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    move v13, v5

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    move v13, v5

    const/4 v14, 0x3

    if-eq v13, v14, :cond_0

    move-object v13, v0

    move v14, v9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v13

    move v9, v13

    :cond_0
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v15, v9

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v13

    :cond_1
    move v13, v2

    if-eqz v13, :cond_2

    const/4 v13, -0x1

    move v10, v13

    move-object v13, v0

    move v14, v1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v13

    move v11, v13

    :goto_0
    move v13, v11

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    :cond_2
    move v13, v6

    move v0, v13

    return v0

    :cond_3
    move-object v13, v0

    move v14, v11

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v13

    move v12, v13

    move-object v13, v0

    move v14, v6

    move v15, v12

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move-result v13

    move v13, v12

    move v10, v13

    move-object v13, v0

    move v14, v11

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v13

    move v11, v13

    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v9

    move v5, v9

    move v9, v5

    const/16 v10, 0xb

    shr-int/lit8 v9, v9, 0xb

    move v6, v9

    move v9, v5

    const/16 v10, 0x7ff

    and-int/lit16 v9, v9, 0x7ff

    move v7, v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v11, v1

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v11, v2

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v11, v3

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    move v9, v4

    if-eqz v9, :cond_0

    const/16 v9, 0x20

    :goto_0
    move v8, v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v11, v8

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v9

    move v9, v5

    move v0, v9

    return v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v5

    move v2, v5

    move v5, v2

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v2

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    move v5, v2

    move v0, v5

    return v0
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v5

    move v2, v5

    move v5, v2

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v2

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    move v5, v2

    move v0, v5

    return v0
.end method

.method public createDeferredDocument()I
    .locals 4

    move-object v0, p0

    move-object v2, v0

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    move v1, v2

    move v2, v1

    move v0, v2

    return v0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v7

    move v4, v7

    move v7, v4

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v5, v7

    move v7, v4

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v6, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v9, v1

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v9, v2

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v9, v3

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move v7, v4

    move v0, v7

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v4, v6

    move v6, v3

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v5, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v8, v1

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move v6, v3

    move v0, v6

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v7

    move v4, v7

    move v7, v4

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v5, v7

    move v7, v4

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v6, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v9, v2

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v9, v1

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v9, v3

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move v7, v4

    move v0, v7

    return v0
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v5

    move v2, v5

    move v5, v2

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v2

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    move v5, v2

    move v0, v5

    return v0
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v16, v1

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v16

    move/from16 v7, v16

    move/from16 v16, v7

    const/16 v17, 0xb

    shr-int/lit8 v16, v16, 0xb

    move/from16 v8, v16

    move/from16 v16, v7

    const/16 v17, 0x7ff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v16, v0

    move/from16 v9, v16

    move-object/from16 v16, v1

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v16

    move/from16 v10, v16

    move/from16 v16, v10

    const/16 v17, 0xb

    shr-int/lit8 v16, v16, 0xb

    move/from16 v11, v16

    move/from16 v16, v10

    const/16 v17, 0x7ff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v16, v0

    move/from16 v12, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v17, v0

    move/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v16, v1

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v16

    move/from16 v13, v16

    move/from16 v16, v13

    const/16 v17, 0xb

    shr-int/lit8 v16, v16, 0xb

    move/from16 v14, v16

    move/from16 v16, v13

    const/16 v17, 0x7ff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v16, v0

    move/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v17, v0

    move/from16 v18, v13

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move/from16 v19, v14

    move/from16 v20, v15

    invoke-direct/range {v16 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v16

    move/from16 v16, v7

    move/from16 v1, v16

    return v1
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v4, v6

    move v6, v3

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v5, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v8, v1

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move v6, v3

    move v0, v6

    return v0
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v0

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v11

    move v5, v11

    move v11, v5

    const/16 v12, 0xb

    shr-int/lit8 v11, v11, 0xb

    move v6, v11

    move v11, v5

    const/16 v12, 0x7ff

    and-int/lit16 v11, v11, 0x7ff

    move v7, v11

    move-object v11, v0

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v11

    move v8, v11

    move v11, v8

    const/16 v12, 0xb

    shr-int/lit8 v11, v11, 0xb

    move v9, v11

    move v11, v8

    const/16 v12, 0x7ff

    and-int/lit16 v11, v11, 0x7ff

    move v10, v11

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v13, v1

    move v14, v6

    move v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v13, v2

    move v14, v6

    move v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v13, v3

    move v14, v6

    move v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v13, v8

    move v14, v6

    move v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v11

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v13, v4

    move v14, v9

    move v15, v10

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v11

    move v11, v5

    move v0, v11

    return v0
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v4, v6

    move v6, v3

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v5, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v8, v1

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move v6, v3

    move v0, v6

    return v0
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v4, v6

    move v6, v3

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v5, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v8, v1

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v8, v2

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v6

    move v6, v3

    move v0, v6

    return v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected createNode(S)I
    .locals 11

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/16 v5, 0xb

    shr-int/lit8 v4, v4, 0xb

    move v2, v4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/16 v5, 0x7ff

    and-int/lit16 v4, v4, 0x7ff

    move v3, v4

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->ensureCapacity(I)V

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v4

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    move v0, v4

    return v0
.end method

.method protected ensureCapacity(I)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    if-nez v5, :cond_1

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[Ljava/lang/Object;

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[Ljava/lang/Object;

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[Ljava/lang/Object;

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [[I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    :cond_0
    :goto_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    :goto_1
    return-void

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    array-length v5, v5

    move v6, v1

    if-gt v5, v6, :cond_2

    move v5, v1

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v2, v5

    move v5, v2

    new-array v5, v5, [[I

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v5, v2

    new-array v5, v5, [[Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v5, v2

    new-array v5, v5, [[Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v5, v2

    new-array v5, v5, [[I

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v5, v2

    new-array v5, v5, [[I

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v5, v2

    new-array v5, v5, [[I

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v5, v2

    new-array v5, v5, [[Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move v5, v2

    new-array v5, v5, [[I

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto/16 :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v6, v1

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    goto/16 :goto_1
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move-object v8, v2

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    move v8, v1

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v3, v8

    move v8, v1

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v4, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v10, v3

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v8

    move v5, v8

    :goto_1
    move v8, v5

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_2
    move v8, v5

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v6, v8

    move v8, v5

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v7, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v10, v6

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    if-ne v8, v9, :cond_3

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v10, v6

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v10, v6

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v8

    move v5, v8

    goto :goto_1
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v3

    move v2, v3

    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v3

    move v2, v3

    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 2

    move-object v0, p0

    invoke-static {}, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLastChild(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLastChild(IZ)I
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    goto :goto_1
.end method

.method getNamespacesEnabled()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    move v0, v1

    return v0
.end method

.method public getNodeExtra(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getNodeExtra(IZ)I
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    goto :goto_1
.end method

.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;
    .locals 13

    move-object v0, p0

    move v1, p1

    move v8, v1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    move v8, v1

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v2, v8

    move v8, v1

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v3, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v8

    move v4, v8

    move v8, v4

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    move v8, v4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v8

    :cond_1
    const/4 v8, 0x0

    move-object v5, v8

    move v8, v4

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v8, :cond_3

    new-instance v8, Lorg/apache/xerces/dom/DeferredAttrNSImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    :cond_2
    :goto_1
    move-object v8, v5

    if-eqz v8, :cond_8

    move-object v8, v5

    move-object v0, v8

    goto :goto_0

    :cond_3
    new-instance v8, Lorg/apache/xerces/dom/DeferredAttrImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredAttrImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto :goto_1

    :pswitch_2
    new-instance v8, Lorg/apache/xerces/dom/DeferredCDATASectionImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredCDATASectionImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto :goto_1

    :pswitch_3
    new-instance v8, Lorg/apache/xerces/dom/DeferredCommentImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredCommentImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto :goto_1

    :pswitch_4
    move-object v8, v0

    move-object v5, v8

    goto :goto_1

    :pswitch_5
    new-instance v8, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    move-object v8, v0

    move-object v9, v5

    check-cast v9, Lorg/apache/xerces/dom/DocumentTypeImpl;

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_1

    :pswitch_6
    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v8, :cond_4

    new-instance v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredElementNSImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v11, v1

    invoke-static {v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->binarySearch([IIII)I

    move-result v8

    move v6, v8

    :goto_3
    move v8, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    goto :goto_1

    :cond_4
    new-instance v8, Lorg/apache/xerces/dom/DeferredElementImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredElementImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto :goto_2

    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    move-object v8, v7

    if-eqz v8, :cond_6

    move-object v8, v0

    move-object v9, v7

    move-object v10, v5

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move v9, v6

    const/4 v10, 0x0

    aput-object v10, v8, v9

    :cond_6
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v8, v9, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v9, v1

    if-ne v8, v9, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, -0x1

    move v6, v8

    goto :goto_3

    :pswitch_7
    new-instance v8, Lorg/apache/xerces/dom/DeferredEntityImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredEntityImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :pswitch_8
    new-instance v8, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :pswitch_9
    new-instance v8, Lorg/apache/xerces/dom/DeferredNotationImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredNotationImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :pswitch_a
    new-instance v8, Lorg/apache/xerces/dom/DeferredProcessingInstructionImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredProcessingInstructionImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :pswitch_b
    new-instance v8, Lorg/apache/xerces/dom/DeferredTextImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredTextImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :pswitch_c
    new-instance v8, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move v11, v1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;-><init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v5, v8

    goto/16 :goto_1

    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNodeType(I)S
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v2

    move v0, v2

    return v0
.end method

.method public getNodeType(IZ)S
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v5

    int-to-short v5, v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    int-to-short v5, v5

    goto :goto_1
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(IZ)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(IZ)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v10, v1

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    move v10, v1

    const/16 v11, 0xb

    shr-int/lit8 v10, v10, 0xb

    move v3, v10

    move v10, v1

    const/16 v11, 0x7ff

    and-int/lit16 v10, v10, 0x7ff

    move v4, v10

    move v10, v2

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v5, v10

    move-object v10, v5

    if-nez v10, :cond_2

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    :cond_1
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v10

    move v6, v10

    move v10, v6

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(I)I

    move-result v10

    move v7, v10

    move v10, v7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    move-object v10, v0

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    :cond_3
    move v10, v7

    const/16 v11, 0xb

    shr-int/lit8 v10, v10, 0xb

    move v3, v10

    move v10, v7

    const/16 v11, 0x7ff

    and-int/lit16 v10, v10, 0x7ff

    move v4, v10

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v10

    move v7, v10

    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    :goto_2
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v8, v10

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v9, v10

    :goto_3
    move v10, v9

    if-gez v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_0

    :cond_4
    move-object v10, v0

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_6
    move v10, v6

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v7, v10

    move v10, v7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :goto_4
    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_5
    move v10, v8

    if-gez v10, :cond_8

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_0

    :cond_7
    move v10, v7

    const/16 v11, 0xb

    shr-int/lit8 v10, v10, 0xb

    move v3, v10

    move v10, v7

    const/16 v11, 0x7ff

    and-int/lit16 v10, v10, 0x7ff

    move v4, v10

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v10

    move v7, v10

    goto :goto_4

    :cond_8
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_0
.end method

.method public getParentNode(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getParentNode(IZ)I
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    goto :goto_1
.end method

.method public getPrevSibling(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPrevSibling(IZ)I
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, -0x1

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v6, v1

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v3, v6

    move v6, v1

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v4, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    move v1, v6

    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    :goto_1
    move v6, v1

    move v0, v6

    goto :goto_0

    :cond_2
    move v6, v1

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v3, v6

    move v6, v1

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v4, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    move v1, v6

    goto :goto_1
.end method

.method public getRealPrevSibling(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRealPrevSibling(IZ)I
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    goto :goto_1
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .locals 10

    move-object v0, p0

    move v1, p1

    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move v6, v1

    const/16 v7, 0xb

    shr-int/lit8 v6, v6, 0xb

    move v2, v6

    move v6, v1

    const/16 v7, 0x7ff

    and-int/lit16 v6, v6, 0x7ff

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    move v7, v3

    aget-object v6, v6, v7

    :goto_1
    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    const/16 v7, 0x800

    aget-object v6, v6, v7

    check-cast v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    move-object v5, v6

    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    move-object v6, v5

    iget v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v7, v2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    :cond_1
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public insertBefore(III)I
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v9, v3

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    move v9, v2

    move v0, v9

    :goto_0
    return v0

    :cond_0
    move v9, v2

    const/16 v10, 0xb

    shr-int/lit8 v9, v9, 0xb

    move v4, v9

    move v9, v2

    const/16 v10, 0x7ff

    and-int/lit16 v9, v9, 0x7ff

    move v5, v9

    move v9, v3

    const/16 v10, 0xb

    shr-int/lit8 v9, v9, 0xb

    move v6, v9

    move v9, v3

    const/16 v10, 0x7ff

    and-int/lit16 v9, v9, 0x7ff

    move v7, v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v11, v6

    move v12, v7

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v9

    move v8, v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v11, v2

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v9

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v11, v8

    move v12, v4

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v9

    move v9, v2

    move v0, v9

    goto :goto_0
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, -0x1

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    move v5, v7

    :goto_0
    move v7, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    :goto_1
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const/4 v7, -0x1

    move v0, v7

    :goto_2
    return v0

    :cond_0
    move v7, v5

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v3, v7

    move v7, v5

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    move v7, v5

    move v2, v7

    goto :goto_1

    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    move v5, v7

    goto :goto_0

    :cond_2
    move v7, v2

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v3, v7

    move v7, v2

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    move v6, v7

    :goto_3
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    :cond_3
    const/4 v7, -0x1

    move v0, v7

    goto :goto_2

    :cond_4
    move v7, v6

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v3, v7

    move v7, v6

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    const/16 v8, 0x15

    if-ne v7, v8, :cond_5

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    if-ne v7, v8, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_2

    :cond_5
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    move v6, v7

    goto :goto_3
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v5, v0

    const/16 v6, 0x40

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move-object v5, v0

    const/16 v6, 0x40

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_0
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move-object v5, v3

    array-length v5, v5

    new-array v5, v5, [I

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    move v7, v2

    aput v7, v5, v6

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    return-void
.end method

.method public setAsLastChild(II)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v5

    return-void
.end method

.method public setAttributeNode(II)I
    .locals 23

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v3

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    move/from16 v5, v18

    move/from16 v18, v3

    const/16 v19, 0x7ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v18, v0

    move/from16 v6, v18

    move/from16 v18, v4

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    move/from16 v7, v18

    move/from16 v18, v4

    const/16 v19, 0x7ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v18, v0

    move/from16 v8, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v19, v0

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v18

    move/from16 v10, v18

    const/16 v18, -0x1

    move/from16 v11, v18

    const/16 v18, -0x1

    move/from16 v12, v18

    const/16 v18, -0x1

    move/from16 v13, v18

    :goto_0
    move/from16 v18, v10

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :goto_1
    move/from16 v18, v10

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v18

    move/from16 v14, v18

    move/from16 v18, v11

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v18

    :goto_2
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move/from16 v15, v18

    move/from16 v18, v15

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    move/from16 v16, v18

    move/from16 v18, v15

    const/16 v19, 0x7ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v18, v0

    move/from16 v17, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v18

    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v19, v0

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v18

    move/from16 v14, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v18

    move/from16 v18, v10

    move/from16 v2, v18

    return v2

    :cond_1
    move/from16 v18, v10

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    move/from16 v12, v18

    move/from16 v18, v10

    const/16 v19, 0x7ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v18, v0

    move/from16 v13, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    goto/16 :goto_1

    :cond_2
    move/from16 v18, v10

    move/from16 v11, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v18 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_0

    :cond_3
    move/from16 v18, v11

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    move/from16 v15, v18

    move/from16 v18, v11

    const/16 v19, 0x7ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v18, v0

    move/from16 v16, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v18

    goto/16 :goto_2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    move v6, v12

    move v12, v6

    const/16 v13, 0xb

    shr-int/lit8 v12, v12, 0xb

    move v7, v12

    move v12, v6

    const/16 v13, 0x7ff

    and-int/lit16 v12, v12, 0x7ff

    move v8, v12

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v14, v1

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v12

    move v12, v1

    const/16 v13, 0xb

    shr-int/lit8 v12, v12, 0xb

    move v9, v12

    move v12, v1

    const/16 v13, 0x7ff

    and-int/lit16 v12, v12, 0x7ff

    move v10, v12

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v14, v9

    move v15, v10

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v12

    move v11, v12

    move v12, v11

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move v14, v11

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v12

    :cond_0
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v14, v6

    move v15, v9

    move/from16 v16, v10

    invoke-direct/range {v12 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v12

    move v12, v6

    move v0, v12

    return v0
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v19

    move/from16 v9, v19

    move/from16 v19, v9

    const/16 v20, 0xb

    shr-int/lit8 v19, v19, 0xb

    move/from16 v10, v19

    move/from16 v19, v9

    const/16 v20, 0x7ff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v19, v0

    move/from16 v11, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v19

    move/from16 v19, v2

    const/16 v20, 0xb

    shr-int/lit8 v19, v19, 0xb

    move/from16 v12, v19

    move/from16 v19, v2

    const/16 v20, 0x7ff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v19, v0

    move/from16 v13, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v20, v0

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-direct/range {v19 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v19

    move/from16 v14, v19

    move/from16 v19, v14

    if-eqz v19, :cond_0

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v20, v0

    move/from16 v21, v14

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v19

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v20, v0

    move/from16 v21, v9

    move/from16 v22, v12

    move/from16 v23, v13

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v20, v0

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-direct/range {v19 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v19

    move/from16 v15, v19

    move/from16 v19, v7

    if-eqz v19, :cond_1

    move/from16 v19, v15

    const/16 v20, 0x200

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v15, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v20, v0

    move/from16 v21, v15

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v20, v0

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-direct/range {v19 .. v22}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v16

    move/from16 v21, v2

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    :cond_1
    move-object/from16 v19, v8

    if-eqz v19, :cond_2

    move-object/from16 v19, v1

    const/16 v20, 0x14

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v19

    move/from16 v16, v19

    move/from16 v19, v16

    const/16 v20, 0xb

    shr-int/lit8 v19, v19, 0xb

    move/from16 v17, v19

    move/from16 v19, v16

    const/16 v20, 0x7ff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v19, v0

    move/from16 v18, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v20, v0

    move/from16 v21, v16

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v19

    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v19

    :cond_2
    move/from16 v19, v9

    move/from16 v1, v19

    return v1
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v7

    move v4, v7

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v5, v7

    move v7, v4

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v6, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v9, v2

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    move-object v9, v3

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    :cond_0
    return-void
.end method

.method public setIdAttribute(I)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v2, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v3, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    move v4, v5

    move v5, v4

    const/16 v6, 0x200

    or-int/lit16 v5, v5, 0x200

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v7, v4

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v5

    return-void
.end method

.method public setIdAttributeNode(II)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, v2

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v3, v7

    move v7, v2

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v7

    move v5, v7

    move v7, v5

    const/16 v8, 0x200

    or-int/lit16 v7, v7, 0x200

    move v5, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v9, v5

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v6

    move v9, v1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v7

    move v3, v7

    move-object v7, v0

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v7

    move v4, v7

    move v7, v4

    const/16 v8, 0xb

    shr-int/lit8 v7, v7, 0xb

    move v5, v7

    move v7, v4

    const/16 v8, 0x7ff

    and-int/lit16 v7, v7, 0x7ff

    move v6, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v9, v2

    move v10, v5

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v8, v1

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v3, v8

    move v8, v1

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v4, v8

    move-object v8, v0

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v8

    move v5, v8

    move v8, v5

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    move v6, v8

    move v8, v5

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v7, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move v10, v5

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-result v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v10, v2

    move v11, v6

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    return-void
.end method

.method setNamespacesEnabled(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method public setTypeInfo(ILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    const/16 v6, 0xb

    shr-int/lit8 v5, v5, 0xb

    move v3, v5

    move v5, v1

    const/16 v6, 0x7ff

    and-int/lit16 v5, v5, 0x7ff

    move v4, v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    return-void
.end method

.method protected synchronizeChildren()V
    .locals 9

    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeData()V

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move v1, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    move-result v7

    const/4 v7, 0x0

    move-object v2, v7

    const/4 v7, 0x0

    move-object v3, v7

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v7

    move v4, v7

    :goto_1
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->lastChild(Lorg/apache/xerces/dom/ChildNode;)V

    :cond_1
    move-object v7, v0

    move v8, v1

    iput-boolean v8, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    goto :goto_0

    :cond_2
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/ChildNode;

    move-object v5, v7

    move-object v7, v3

    if-nez v7, :cond_4

    move-object v7, v5

    move-object v3, v7

    :goto_2
    move-object v7, v5

    move-object v8, v0

    iput-object v8, v7, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v7, v5

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v5

    move-object v2, v7

    move-object v7, v5

    invoke-virtual {v7}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v7

    move v6, v7

    move v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move-object v7, v0

    move-object v8, v5

    check-cast v8, Lorg/apache/xerces/dom/ElementImpl;

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    :cond_3
    :goto_3
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v7

    move v4, v7

    goto :goto_1

    :cond_4
    move-object v7, v2

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_2

    :cond_5
    move v7, v6

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    move-object v7, v0

    move-object v8, v5

    check-cast v8, Lorg/apache/xerces/dom/DocumentTypeImpl;

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lorg/apache/xerces/dom/AttrImpl;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v10

    move v3, v10

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v10

    move v4, v10

    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v10

    move v5, v10

    move v10, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    move-object v10, v1

    move-object v11, v0

    move v12, v2

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    :goto_0
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_0
    const/4 v10, 0x0

    move-object v6, v10

    const/4 v10, 0x0

    move-object v7, v10

    move v10, v4

    move v8, v10

    :goto_1
    move v10, v8

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    move-object v10, v7

    if-eqz v10, :cond_1

    move-object v10, v1

    move-object v11, v6

    iput-object v11, v10, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v10, v6

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v10, v1

    move-object v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->lastChild(Lorg/apache/xerces/dom/ChildNode;)V

    :cond_1
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_0

    :cond_2
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v10

    move-object v10, v7

    if-nez v10, :cond_3

    move-object v10, v9

    move-object v7, v10

    :goto_2
    move-object v10, v9

    move-object v11, v1

    iput-object v11, v10, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v10, v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v10, v9

    move-object v11, v6

    iput-object v11, v10, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v9

    move-object v6, v10

    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v10

    move v8, v10

    goto :goto_1

    :cond_3
    move-object v10, v6

    move-object v11, v9

    iput-object v11, v10, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_2
.end method

.method protected final synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v8

    move v3, v8

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    const/4 v8, 0x0

    move-object v4, v8

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v8

    move v6, v8

    :goto_0
    move v8, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v4

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ParentNode;->lastChild(Lorg/apache/xerces/dom/ChildNode;)V

    :cond_0
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_1
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v8

    move-object v8, v5

    if-nez v8, :cond_2

    move-object v8, v7

    move-object v5, v8

    :goto_1
    move-object v8, v7

    move-object v9, v1

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v8, v7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v8, v7

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v7

    move-object v4, v8

    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v8

    move v6, v8

    goto :goto_0

    :cond_2
    move-object v8, v4

    move-object v9, v7

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method protected synchronizeData()V
    .locals 15

    move-object v0, p0

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v10, :cond_0

    new-instance v10, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;-><init>()V

    move-object v1, v10

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-lt v10, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    move v11, v2

    aget v10, v10, v11

    move v3, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move v11, v2

    aget-object v10, v10, v11

    move-object v4, v10

    move-object v10, v4

    if-nez v10, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v10, v1

    invoke-virtual {v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    move v10, v3

    move v5, v10

    :cond_4
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    move v10, v5

    const/16 v11, 0xb

    shr-int/lit8 v10, v10, 0xb

    move v6, v10

    move v10, v5

    const/16 v11, 0x7ff

    and-int/lit16 v10, v10, 0x7ff

    move v7, v10

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move v12, v6

    move v13, v7

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v10

    move v5, v10

    move v10, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    move-object v10, v0

    move-object v6, v10

    move-object v10, v1

    invoke-virtual {v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    move v7, v10

    :goto_1
    move v10, v7

    if-gez v10, :cond_5

    move-object v10, v6

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v8, v10

    move-object v10, v0

    move-object v11, v4

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    move v11, v2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    :goto_2
    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v10, v11, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-ne v10, v11, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v11, v2

    aget-object v10, v10, v11

    move-object v4, v10

    move-object v10, v4

    if-nez v10, :cond_8

    goto :goto_2

    :cond_5
    move-object v10, v1

    move v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v10

    move v5, v10

    move-object v10, v6

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v8, v10

    :goto_3
    move-object v10, v8

    if-nez v10, :cond_6

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_6
    move-object v10, v8

    instance-of v10, v10, Lorg/apache/xerces/dom/DeferredNode;

    if-eqz v10, :cond_7

    move-object v10, v8

    check-cast v10, Lorg/apache/xerces/dom/DeferredNode;

    invoke-interface {v10}, Lorg/apache/xerces/dom/DeferredNode;->getNodeIndex()I

    move-result v10

    move v9, v10

    move v10, v9

    move v11, v5

    if-ne v10, v11, :cond_7

    move-object v10, v8

    move-object v6, v10

    goto :goto_4

    :cond_7
    move-object v10, v8

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v8, v10

    goto :goto_3

    :cond_8
    move-object v10, v0

    move-object v11, v4

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_2
.end method
