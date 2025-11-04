.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 22

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v12, v1

    invoke-static {v12}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 40
    .local v2, "rawText":Ljava/lang/String;
    sget-object v12, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v3, v12

    .line 41
    .local v3, "matcher":Ljava/util/regex/Matcher;
    move-object v12, v3

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_0

    .line 42
    const/4 v12, 0x0

    move-object v0, v12

    .line 70
    .end local v0    # "this":Lcom/google/zxing/client/result/GeoResultParser;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "this":Lcom/google/zxing/client/result/GeoResultParser;
    :cond_0
    move-object v12, v3

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 51
    .local v4, "query":Ljava/lang/String;
    move-object v12, v3

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v5, v12

    .line 52
    .local v5, "latitude":D
    move-wide v12, v5

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_1

    move-wide v12, v5

    const-wide v14, -0x3fa9800000000000L    # -90.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 53
    :cond_1
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 55
    :cond_2
    move-object v12, v3

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v7, v12

    .line 56
    .local v7, "longitude":D
    move-wide v12, v7

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_3

    move-wide v12, v7

    const-wide v14, -0x3f99800000000000L    # -180.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_4

    .line 57
    :cond_3
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 59
    :cond_4
    move-object v12, v3

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    if-nez v12, :cond_6

    .line 60
    const-wide/16 v12, 0x0

    move-wide v9, v12

    .line 69
    .line 70
    .local v9, "altitude":D
    :cond_5
    new-instance v12, Lcom/google/zxing/client/result/GeoParsedResult;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    move-object v0, v12

    goto :goto_0

    .line 62
    .end local v9    # "altitude":D
    :cond_6
    move-object v12, v3

    const/4 v13, 0x3

    :try_start_1
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    move-wide v9, v12

    .line 63
    .restart local v9    # "altitude":D
    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    .line 64
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 67
    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .end local v9    # "altitude":D
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 68
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/GeoResultParser;
    return-object v0
.end method
