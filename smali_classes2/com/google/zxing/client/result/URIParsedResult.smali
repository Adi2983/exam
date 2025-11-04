.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "URIParsedResult.java"


# static fields
.field private static final USER_IN_HOST:Ljava/util/regex/Pattern;


# instance fields
.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, ":/*([^/@]+)@[^/]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URIParsedResult;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v3, v4}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 33
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/zxing/client/result/URIParsedResult;->massageURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private static isColonFollowedByPortNumber(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move v1, p1

    .local v1, "protocolEnd":I
    move-object v4, v0

    const/16 v5, 0x2f

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v2, v4

    .line 84
    .local v2, "nextSlash":I
    move v4, v2

    if-gez v4, :cond_0

    .line 85
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 87
    :cond_0
    move v4, v2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-gt v4, v5, :cond_1

    .line 88
    const/4 v4, 0x0

    move v0, v4

    .line 95
    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return v0

    .line 90
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .local v3, "x":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_4

    .line 91
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    .line 92
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private static massageURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 71
    move-object v2, v0

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 72
    .local v1, "protocolEnd":I
    move v2, v1

    if-gez v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 79
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0

    .line 75
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/URIParsedResult;->isColonFollowedByPortNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URIParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 60
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/URIParsedResult;
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URIParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/URIParsedResult;
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URIParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/URIParsedResult;
    return-object v0
.end method

.method public isPossiblyMaliciousURI()Z
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URIParsedResult;
    sget-object v1, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/URIParsedResult;
    return v0
.end method
