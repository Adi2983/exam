.class public final Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method static isBasicallyValidEmailAddress(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "email":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "email":Ljava/lang/String;
    return v0

    .restart local v0    # "email":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 15

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 37
    .local v2, "rawText":Ljava/lang/String;
    move-object v7, v2

    const-string/jumbo v8, "MATMSG:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 38
    const/4 v7, 0x0

    move-object v0, v7

    .line 50
    .end local v0    # "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    :goto_0
    return-object v0

    .line 40
    .restart local v0    # "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    :cond_0
    const-string/jumbo v7, "TO:"

    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 41
    .local v3, "rawTo":[Ljava/lang/String;
    move-object v7, v3

    if-nez v7, :cond_1

    .line 42
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 44
    :cond_1
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v4, v7

    .line 45
    .local v4, "to":Ljava/lang/String;
    move-object v7, v4

    invoke-static {v7}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 46
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v7, "SUB:"

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 49
    .local v5, "subject":Ljava/lang/String;
    const-string/jumbo v7, "BODY:"

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 50
    .local v6, "body":Ljava/lang/String;
    new-instance v7, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mailto:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
    return-object v0
.end method
