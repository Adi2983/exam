.class public final Lcom/google/zxing/client/result/ExpandedProductParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ExpandedProductParsedResult.java"


# static fields
.field public static final KILOGRAM:Ljava/lang/String; = "KG"

.field public static final POUND:Ljava/lang/String; = "LB"


# instance fields
.field private final bestBeforeDate:Ljava/lang/String;

.field private final expirationDate:Ljava/lang/String;

.field private final lotNumber:Ljava/lang/String;

.field private final packagingDate:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceCurrency:Ljava/lang/String;

.field private final priceIncrement:Ljava/lang/String;

.field private final productID:Ljava/lang/String;

.field private final productionDate:Ljava/lang/String;

.field private final sscc:Ljava/lang/String;

.field private final uncommonAIs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weight:Ljava/lang/String;

.field private final weightIncrement:Ljava/lang/String;

.field private final weightType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object/from16 v3, p1

    .local v3, "productID":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "sscc":Ljava/lang/String;
    move-object/from16 v5, p3

    .local v5, "lotNumber":Ljava/lang/String;
    move-object/from16 v6, p4

    .local v6, "productionDate":Ljava/lang/String;
    move-object/from16 v7, p5

    .local v7, "packagingDate":Ljava/lang/String;
    move-object/from16 v8, p6

    .local v8, "bestBeforeDate":Ljava/lang/String;
    move-object/from16 v9, p7

    .local v9, "expirationDate":Ljava/lang/String;
    move-object/from16 v10, p8

    .local v10, "weight":Ljava/lang/String;
    move-object/from16 v11, p9

    .local v11, "weightType":Ljava/lang/String;
    move-object/from16 v12, p10

    .local v12, "weightIncrement":Ljava/lang/String;
    move-object/from16 v13, p11

    .local v13, "price":Ljava/lang/String;
    move-object/from16 v14, p12

    .local v14, "priceIncrement":Ljava/lang/String;
    move-object/from16 v15, p13

    .local v15, "priceCurrency":Ljava/lang/String;
    move-object/from16 v16, p14

    .local v16, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v17, v2

    sget-object v18, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 71
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    .line 72
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    .line 73
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    .line 74
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    .line 75
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->packagingDate:Ljava/lang/String;

    .line 76
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    .line 77
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    .line 78
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    .line 79
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    .line 80
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    .line 81
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    .line 82
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    .line 83
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    .line 84
    move-object/from16 v17, v2

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private static equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "o1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "o2":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "o1":Ljava/lang/Object;
    return v0

    .restart local v0    # "o1":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static hashNotNull(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "o":Ljava/lang/Object;
    return v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-nez v3, :cond_0

    .line 90
    const/4 v3, 0x0

    move v0, v3

    .line 95
    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    :goto_0
    return v0

    .line 93
    .restart local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v2, v3

    .line 95
    .local v2, "other":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getBestBeforeDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getLotNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getPackagingDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->packagingDate:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getPriceIncrement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getProductionDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getSscc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getUncommonAIs()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getWeightIncrement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public getWeightType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    const/4 v2, 0x0

    move v1, v2

    .line 117
    .local v1, "hash":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 118
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 119
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 120
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 121
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 122
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 123
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 124
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 125
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 126
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 127
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 128
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 129
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->hashNotNull(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    .line 130
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    return v0
.end method
