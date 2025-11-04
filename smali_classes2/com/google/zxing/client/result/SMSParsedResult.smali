.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, p1

    .local v1, "number":Ljava/lang/String;
    move-object v2, p2

    .local v2, "via":Ljava/lang/String;
    move-object v3, p3

    .local v3, "subject":Ljava/lang/String;
    move-object v4, p4

    .local v4, "body":Ljava/lang/String;
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v5, v6}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 34
    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 35
    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 36
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 37
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, p1

    .local v1, "numbers":[Ljava/lang/String;
    move-object v2, p2

    .local v2, "vias":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "subject":Ljava/lang/String;
    move-object v4, p4

    .local v4, "body":Ljava/lang/String;
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v5, v6}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 45
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 46
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 47
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 48
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 105
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 108
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0
.end method

.method public getSMSURI()Ljava/lang/String;
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 53
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v5, v1

    const-string/jumbo v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    const/4 v5, 0x1

    move v2, v5

    .line 55
    .local v2, "first":Z
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 56
    move v5, v2

    if-eqz v5, :cond_1

    .line 57
    const/4 v5, 0x0

    move v2, v5

    .line 61
    :goto_1
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 63
    move-object v5, v1

    const-string/jumbo v6, ";via="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    move-object v5, v1

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1

    .line 67
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    move v3, v5

    .line 68
    .local v3, "hasBody":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    move v4, v5

    .line 69
    .local v4, "hasSubject":Z
    move v5, v3

    if-nez v5, :cond_3

    move v5, v4

    if-eqz v5, :cond_6

    .line 70
    :cond_3
    move-object v5, v1

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 71
    move v5, v3

    if-eqz v5, :cond_4

    .line 72
    move-object v5, v1

    const-string/jumbo v6, "body="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    :cond_4
    move v5, v4

    if-eqz v5, :cond_6

    .line 76
    move v5, v3

    if-eqz v5, :cond_5

    .line 77
    move-object v5, v1

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "subject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    :cond_6
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0

    .line 67
    .end local v4    # "hasSubject":Z
    .restart local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    .local v3, "i":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 68
    .local v3, "hasBody":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0
.end method

.method public getVias()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSParsedResult;
    return-object v0
.end method
