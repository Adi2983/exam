.class Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private final this$0:Lorg/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lorg/apache/xerces/xpointer/XPointerHandler;

    move-object v3, v0

    const/16 v4, 0x80

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

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
        0x2t
        0x2t
        0x0t
        0x0t
        0x2t
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
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x1t
        0x1t
        0x6t
        0x7t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0x1t
        0x1t
        0xbt
        0x1t
        0x1t
        0x1t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x1t
        0x1t
        0x1t
        0x3t
        0xdt
        0x1t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$1;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static access$400(Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
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

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    :goto_0
    move v7, v4

    move v8, v3

    if-ne v7, v8, :cond_0

    :goto_1
    move v7, v4

    move v0, v7

    :goto_2
    return v0

    :cond_0
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    const/16 v8, 0x80

    if-lt v7, v8, :cond_1

    const/16 v7, 0xe

    :goto_3
    move v6, v7

    move v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    add-int/lit8 v4, v4, 0x1

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v7

    move v4, v7

    move v7, v4

    move v8, v3

    if-ne v7, v8, :cond_2

    move v7, v4

    move v0, v7

    goto :goto_2

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move v8, v5

    aget-byte v7, v7, v8

    goto :goto_3

    :cond_2
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    const/16 v8, 0x80

    if-lt v7, v8, :cond_3

    const/16 v7, 0xe

    :goto_4
    move v6, v7

    move v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    move v7, v3

    move v0, v7

    goto :goto_2

    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move v8, v5

    aget-byte v7, v7, v8

    goto :goto_4

    :cond_4
    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    move v7, v4

    move v0, v7

    goto :goto_2

    :cond_6
    move v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    move-object v7, v1

    add-int/lit8 v4, v4, 0x1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    const/16 v8, 0x80

    if-lt v7, v8, :cond_7

    const/16 v7, 0xe

    :goto_5
    move v6, v7

    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    move v7, v6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    move v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_8

    goto/16 :goto_1

    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move v8, v5

    aget-byte v7, v7, v8

    goto :goto_5

    :cond_8
    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private scanExpr(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    const/16 v19, 0x0

    move/from16 v9, v19

    const/16 v19, 0x0

    move/from16 v10, v19

    const/16 v19, 0x0

    move/from16 v13, v19

    const/16 v19, 0x0

    move-object/from16 v14, v19

    const/16 v19, 0x0

    move-object/from16 v15, v19

    const/16 v19, 0x0

    move-object/from16 v16, v19

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v19

    :goto_0
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    :goto_1
    const/16 v19, 0x1

    move/from16 v2, v19

    :goto_2
    return v2

    :cond_0
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    :goto_3
    move/from16 v19, v8

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v8

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v8

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    :goto_4
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    goto :goto_3

    :cond_3
    move/from16 v19, v8

    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v19, 0xe

    :goto_5
    move/from16 v18, v19

    move/from16 v19, v18

    packed-switch v19, :pswitch_data_0

    :goto_6
    goto :goto_0

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move-object/from16 v19, v0

    move/from16 v20, v8

    aget-byte v19, v19, v20

    goto :goto_5

    :pswitch_0
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_1
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_2
    move/from16 v19, v9

    if-nez v19, :cond_d

    move/from16 v19, v6

    move/from16 v11, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v19

    move/from16 v6, v19

    move/from16 v19, v6

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lorg/apache/xerces/xpointer/XPointerHandler;

    move-object/from16 v19, v0

    const-string/jumbo v20, "InvalidShortHandPointer"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v5

    aput-object v24, v22, v23

    invoke-static/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->access$300(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_2

    :cond_5
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    :goto_7
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v21, v11

    move/from16 v22, v6

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    sget-object v19, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v15, v19

    move/from16 v19, v8

    const/16 v20, 0x3a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_2

    :cond_6
    const/16 v19, -0x1

    move/from16 v8, v19

    goto :goto_7

    :cond_7
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    move-object/from16 v19, v14

    move-object/from16 v15, v19

    move/from16 v19, v6

    move/from16 v11, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v19

    move/from16 v6, v19

    move/from16 v19, v6

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_2

    :cond_8
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    :goto_8
    const/16 v19, 0x1

    move/from16 v13, v19

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v21, v11

    move/from16 v22, v6

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    :cond_9
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v19, v4

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$800(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v20, v14

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$800(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v13, v19

    :cond_a
    :goto_9
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_6

    :cond_b
    const/16 v19, -0x1

    move/from16 v8, v19

    goto :goto_8

    :cond_c
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v19, v4

    move-object/from16 v20, v14

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$800(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v13, v19

    goto :goto_9

    :cond_d
    move/from16 v19, v9

    if-lez v19, :cond_10

    move/from16 v19, v10

    if-nez v19, :cond_10

    move-object/from16 v19, v14

    if-eqz v19, :cond_10

    move/from16 v19, v6

    move/from16 v12, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v17

    move/from16 v22, v7

    move/from16 v23, v6

    invoke-direct/range {v19 .. v23}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v19

    move/from16 v6, v19

    move/from16 v19, v6

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lorg/apache/xerces/xpointer/XPointerHandler;

    move-object/from16 v19, v0

    const-string/jumbo v20, "InvalidSchemeDataInXPointer"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v5

    aput-object v24, v22, v23

    invoke-static/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->access$300(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_2

    :cond_e
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v8, v19

    :goto_a
    move-object/from16 v19, v3

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v19, v4

    move-object/from16 v20, v16

    invoke-static/range {v19 .. v20}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$800(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v9, v19

    move-object/from16 v19, v17

    const/16 v20, 0x0

    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v19

    goto/16 :goto_6

    :cond_f
    const/16 v19, -0x1

    move/from16 v8, v19

    goto :goto_a

    :cond_10
    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    move v6, v5

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    move v6, v5

    const/16 v7, 0xd

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

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    move v6, v5

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    move v6, v5

    const/16 v7, 0x9

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    move v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    move v6, v5

    const/16 v7, 0xd

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
.method protected addToken(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
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

    invoke-static {v3, v4}, Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;->access$900(Lorg/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    return-void
.end method
