.class Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_DIGIT:B = 0x5t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0x6t

.field private static final CHARTYPE_MINUS:B = 0x2t

.field private static final CHARTYPE_NONASCII:B = 0x8t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x3t

.field private static final CHARTYPE_SLASH:B = 0x4t

.field private static final CHARTYPE_UNDERSCORE:B = 0x7t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private final this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    move-object v3, v0

    const/16 v4, 0x80

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$1;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;-><init>(Lorg/apache/xerces/xpointer/ElementSchemePointer;Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static access$300(Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanExpr(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method private scanExpr(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    const/4 v12, 0x0

    move-object v9, v12

    :goto_0
    move v12, v5

    move v13, v6

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    move v1, v12

    :goto_1
    return v1

    :cond_0
    move-object v12, v4

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v7, v12

    move v12, v7

    const/16 v13, 0x80

    if-lt v12, v13, :cond_1

    const/16 v12, 0x8

    :goto_2
    move v10, v12

    move v12, v10

    packed-switch v12, :pswitch_data_0

    :goto_3
    goto :goto_0

    :cond_1
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    move v13, v7

    aget-byte v12, v12, v13

    goto :goto_2

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    move v12, v5

    move v13, v6

    if-ne v12, v13, :cond_2

    const/4 v12, 0x0

    move v1, v12

    goto :goto_1

    :cond_2
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    move-object v12, v4

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v7, v12

    const/4 v12, 0x0

    move v11, v12

    :goto_4
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_3

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_4

    :cond_3
    :goto_5
    move v12, v11

    if-nez v12, :cond_6

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v13, "InvalidChildSequenceCharacter"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Character;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/lang/Character;-><init>(C)V

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    move v1, v12

    goto :goto_1

    :cond_4
    move v12, v11

    const/16 v13, 0xa

    mul-int/lit8 v12, v12, 0xa

    move v13, v7

    const/16 v14, 0x30

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    move v11, v12

    add-int/lit8 v5, v5, 0x1

    move v12, v5

    move v13, v6

    if-ne v12, v13, :cond_5

    goto :goto_5

    :cond_5
    move-object v12, v4

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v7, v12

    goto :goto_4

    :cond_6
    move-object v12, v3

    move v13, v11

    invoke-static {v12, v13}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$700(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    goto :goto_3

    :pswitch_1
    move v12, v5

    move v8, v12

    move-object v12, v1

    move-object v13, v4

    move v14, v6

    move v15, v5

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v12

    move v5, v12

    move v12, v5

    move v13, v8

    if-ne v12, v13, :cond_7

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lorg/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v13, "InvalidNCNameInElementSchemeData"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_1

    :cond_7
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_8

    move-object v12, v4

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v7, v12

    :goto_6
    move-object v12, v2

    move-object v13, v4

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    move-object v12, v3

    move-object v13, v9

    invoke-static {v12, v13}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$800(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const/4 v12, -0x1

    move v7, v12

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    move v6, v4

    const/16 v7, 0x80

    if-lt v6, v7, :cond_0

    move v6, v4

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v3

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    move v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    move v6, v3

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    move v6, v4

    const/16 v7, 0x80

    if-lt v6, v7, :cond_2

    move v6, v4

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    move v6, v3

    move v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    move v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move v7, v2

    if-lt v6, v7, :cond_1

    goto :goto_1
.end method


# virtual methods
.method protected addToken(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$700(Lorg/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    return-void
.end method
