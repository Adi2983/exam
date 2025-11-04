.class final Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
.super Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmallContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    }
.end annotation


# static fields
.field static final SIZE_LIMIT:I = 0xa


# instance fields
.field final fAugmentations:[Ljava/lang/Object;

.field fNumEntries:I


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>()V

    move-object v1, v0

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move v2, v1

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    move v1, v2

    goto :goto_0
.end method

.method public expand()Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 9

    move-object v0, p0

    new-instance v3, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;-><init>()V

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0
.end method

.method public isFull()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;-><init>(Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;)V

    move-object v0, v1

    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    :cond_1
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v3, v5

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    move v5, v2

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    if-lt v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v8, v4

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    move v5, v4

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_2

    :cond_2
    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v2, v5

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    move-object v3, v1

    const-string/jumbo v4, "SmallContainer - fNumEntries == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "\nfAugmentations["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    const-string/jumbo v4, "] == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    const-string/jumbo v4, "; fAugmentations["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    const-string/jumbo v4, "] == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0
.end method
