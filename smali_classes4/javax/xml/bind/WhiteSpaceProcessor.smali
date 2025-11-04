.class abstract Ljavax/xml/bind/WhiteSpaceProcessor;
.super Ljava/lang/Object;
.source "WhiteSpaceProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/WhiteSpaceProcessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v8, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v1, v8

    .line 95
    .local v1, "len":I
    const/4 v8, 0x0

    move v2, v8

    .line 96
    .local v2, "s":I
    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_0

    .line 97
    move-object v8, v0

    move v9, v2

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    .line 101
    :cond_0
    move v8, v2

    move v9, v1

    if-ne v8, v9, :cond_2

    .line 103
    move-object v8, v0

    move-object v0, v8

    .line 138
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 99
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 108
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v1

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v8

    .line 110
    .local v3, "result":Ljava/lang/StringBuilder;
    move v8, v2

    if-eqz v8, :cond_4

    .line 111
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_2
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 112
    move-object v8, v3

    move-object v9, v0

    move v10, v4

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    :cond_3
    move-object v8, v3

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    .end local v4    # "i":I
    :cond_4
    const/4 v8, 0x1

    move v4, v8

    .line 117
    .local v4, "inStripMode":Z
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .local v5, "i":I
    :goto_3
    move v8, v5

    move v9, v1

    if-ge v8, v9, :cond_7

    .line 118
    move-object v8, v0

    move v9, v5

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v6, v8

    .line 119
    .local v6, "ch":C
    move v8, v6

    invoke-static {v8}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v8

    move v7, v8

    .line 120
    .local v7, "b":Z
    move v8, v4

    if-eqz v8, :cond_5

    move v8, v7

    if-eqz v8, :cond_5

    .line 121
    .line 117
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 123
    :cond_5
    move v8, v7

    move v4, v8

    .line 124
    move v8, v4

    if-eqz v8, :cond_6

    .line 125
    move-object v8, v3

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_4

    .line 127
    :cond_6
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_4

    .line 131
    .end local v6    # "ch":C
    .end local v7    # "b":Z
    :cond_7
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move v1, v8

    .line 132
    move v8, v1

    if-lez v8, :cond_8

    move-object v8, v3

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_8

    .line 133
    move-object v8, v3

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    :cond_8
    move-object v8, v3

    move-object v0, v8

    goto/16 :goto_1
.end method

.method public static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/WhiteSpaceProcessor;->collapse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method

.method public static final isWhiteSpace(C)Z
    .locals 3

    .prologue
    .line 155
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 158
    .end local v0    # "ch":C
    :goto_0
    return v0

    .restart local v0    # "ch":C
    :cond_0
    move v1, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final isWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 146
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const/4 v2, 0x0

    move v0, v2

    .line 148
    .end local v0    # "s":Ljava/lang/CharSequence;
    :goto_1
    return v0

    .line 145
    .restart local v0    # "s":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method protected static final isWhiteSpaceExceptSpace(C)Z
    .locals 3

    .prologue
    .line 168
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 171
    .end local v0    # "ch":C
    :goto_0
    return v0

    .restart local v0    # "ch":C
    :cond_0
    move v1, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static replace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 39
    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_0

    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 42
    :cond_0
    move v3, v1

    if-gez v3, :cond_1

    .line 44
    move-object v3, v0

    move-object v0, v3

    .line 55
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 48
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 50
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v3, v2

    move v4, v1

    move v7, v4

    move v4, v7

    move v5, v7

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v1, v5

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 51
    :goto_2
    move v3, v1

    if-ltz v3, :cond_3

    .line 52
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    move-object v3, v2

    move v4, v1

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 51
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 55
    :cond_3
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v0, v3

    goto :goto_1
.end method

.method public static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/WhiteSpaceProcessor;->replace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v1, v4

    .line 64
    .local v1, "len":I
    const/4 v4, 0x0

    move v2, v4

    .line 66
    .local v2, "start":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .line 71
    .local v3, "end":I
    :goto_1
    move v4, v3

    move v5, v2

    if-le v4, v5, :cond_1

    move-object v4, v0

    move v5, v3

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 74
    :cond_1
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 75
    move-object v4, v0

    move-object v0, v4

    .line 77
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_2
    return-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_2
.end method
