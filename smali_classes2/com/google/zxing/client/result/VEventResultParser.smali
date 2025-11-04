.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/VEventResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "trim":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 91
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "prefix":Ljava/lang/CharSequence;
    return-object v0

    .restart local v0    # "prefix":Ljava/lang/CharSequence;
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "trim":Z
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 96
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 104
    .end local v0    # "prefix":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "prefix":Ljava/lang/CharSequence;
    :cond_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 100
    .local v4, "size":I
    move v7, v4

    new-array v7, v7, [Ljava/lang/String;

    move-object v5, v7

    .line 101
    .local v5, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 102
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 104
    :cond_2
    move-object v7, v5

    move-object v0, v7

    goto :goto_0
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_1

    move-object v1, v0

    const-string/jumbo v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    move-object v1, v0

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 111
    :cond_1
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 34

    .prologue
    .line 33
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/result/VEventResultParser;
    move-object/from16 v3, p1

    .local v3, "result":Lcom/google/zxing/Result;
    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    .line 34
    .local v4, "rawText":Ljava/lang/String;
    move-object/from16 v20, v4

    const-string/jumbo v21, "BEGIN:VEVENT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v5, v20

    .line 35
    .local v5, "vEventStart":I
    move/from16 v20, v5

    if-gez v20, :cond_0

    .line 36
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .line 83
    .end local v2    # "this":Lcom/google/zxing/client/result/VEventResultParser;
    :goto_0
    return-object v2

    .line 39
    .restart local v2    # "this":Lcom/google/zxing/client/result/VEventResultParser;
    :cond_0
    const-string/jumbo v20, "SUMMARY"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 40
    .local v6, "summary":Ljava/lang/String;
    const-string/jumbo v20, "DTSTART"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 41
    .local v7, "start":Ljava/lang/String;
    move-object/from16 v20, v7

    if-nez v20, :cond_1

    .line 42
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto :goto_0

    .line 44
    :cond_1
    const-string/jumbo v20, "DTEND"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v8, v20

    .line 45
    .local v8, "end":Ljava/lang/String;
    const-string/jumbo v20, "LOCATION"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 46
    .local v9, "location":Ljava/lang/String;
    const-string/jumbo v20, "ORGANIZER"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    .line 48
    .local v10, "organizer":Ljava/lang/String;
    const-string/jumbo v20, "ATTENDEE"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 49
    .local v11, "attendees":[Ljava/lang/String;
    move-object/from16 v20, v11

    if-eqz v20, :cond_2

    .line 50
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_1
    move/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 51
    move-object/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v11

    move/from16 v23, v12

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 50
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 54
    .end local v12    # "i":I
    :cond_2
    const-string/jumbo v20, "DESCRIPTION"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 56
    .local v12, "description":Ljava/lang/String;
    const-string/jumbo v20, "GEO"

    move-object/from16 v21, v4

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 59
    .local v13, "geoString":Ljava/lang/String;
    move-object/from16 v20, v13

    if-nez v20, :cond_3

    .line 60
    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v14, v20

    .line 61
    .local v14, "latitude":D
    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v16, v20

    .line 73
    .local v16, "longitude":D
    :goto_2
    :try_start_0
    new-instance v20, Lcom/google/zxing/client/result/CalendarParsedResult;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-wide/from16 v29, v14

    move-wide/from16 v31, v16

    invoke-direct/range {v21 .. v32}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 63
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    :cond_3
    move-object/from16 v20, v13

    const/16 v21, 0x3b

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    move/from16 v18, v20

    .line 65
    .local v18, "semicolon":I
    move-object/from16 v20, v13

    const/16 v21, 0x0

    move/from16 v22, v18

    :try_start_1
    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 66
    .restart local v14    # "latitude":D
    move-object/from16 v20, v13

    move/from16 v21, v18

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 69
    .restart local v16    # "longitude":D
    goto :goto_2

    .line 67
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    :catch_0
    move-exception v20

    move-object/from16 v19, v20

    .line 68
    .local v19, "nfe":Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 82
    .end local v18    # "semicolon":I
    .end local v19    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v14    # "latitude":D
    .restart local v16    # "longitude":D
    :catch_1
    move-exception v20

    move-object/from16 v18, v20

    .line 83
    .local v18, "iae":Ljava/lang/IllegalArgumentException;
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/VEventResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/VEventResultParser;
    return-object v0
.end method
