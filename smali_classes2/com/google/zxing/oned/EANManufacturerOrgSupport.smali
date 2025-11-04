.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 34
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    move-object v1, p1

    .local v1, "range":[I
    move-object v2, p2

    .local v2, "id":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    move-object v6, p0

    monitor-enter v6

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 61
    .line 169
    :goto_0
    monitor-exit v6

    return-void

    .line 63
    :cond_0
    move-object v1, v0

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string/jumbo v3, "US/CA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 64
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const-string/jumbo v3, "US"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 65
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    const-string/jumbo v3, "US/CA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 66
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const-string/jumbo v3, "FR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 67
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x17c

    aput v5, v3, v4

    const-string/jumbo v3, "BG"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 68
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x17f

    aput v5, v3, v4

    const-string/jumbo v3, "SI"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 69
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x181

    aput v5, v3, v4

    const-string/jumbo v3, "HR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 70
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x183

    aput v5, v3, v4

    const-string/jumbo v3, "BA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 71
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    const-string/jumbo v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 72
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const-string/jumbo v3, "JP"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 73
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const-string/jumbo v3, "RU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 74
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1d7

    aput v5, v3, v4

    const-string/jumbo v3, "TW"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 75
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1da

    aput v5, v3, v4

    const-string/jumbo v3, "EE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 76
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1db

    aput v5, v3, v4

    const-string/jumbo v3, "LV"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 77
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1dc

    aput v5, v3, v4

    const-string/jumbo v3, "AZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 78
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1dd

    aput v5, v3, v4

    const-string/jumbo v3, "LT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 79
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1de

    aput v5, v3, v4

    const-string/jumbo v3, "UZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 80
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1df

    aput v5, v3, v4

    const-string/jumbo v3, "LK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 81
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e0

    aput v5, v3, v4

    const-string/jumbo v3, "PH"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 82
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e1

    aput v5, v3, v4

    const-string/jumbo v3, "BY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 83
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e2

    aput v5, v3, v4

    const-string/jumbo v3, "UA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 84
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e4

    aput v5, v3, v4

    const-string/jumbo v3, "MD"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 85
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e5

    aput v5, v3, v4

    const-string/jumbo v3, "AM"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 86
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e6

    aput v5, v3, v4

    const-string/jumbo v3, "GE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 87
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e7

    aput v5, v3, v4

    const-string/jumbo v3, "KZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 88
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x1e9

    aput v5, v3, v4

    const-string/jumbo v3, "HK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 89
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const-string/jumbo v3, "JP"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 90
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const-string/jumbo v3, "GB"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 91
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x208

    aput v5, v3, v4

    const-string/jumbo v3, "GR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 92
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x210

    aput v5, v3, v4

    const-string/jumbo v3, "LB"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 93
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x211

    aput v5, v3, v4

    const-string/jumbo v3, "CY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 94
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x213

    aput v5, v3, v4

    const-string/jumbo v3, "MK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 95
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x217

    aput v5, v3, v4

    const-string/jumbo v3, "MT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 96
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x21b

    aput v5, v3, v4

    const-string/jumbo v3, "IE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 97
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const-string/jumbo v3, "BE/LU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 98
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x230

    aput v5, v3, v4

    const-string/jumbo v3, "PT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 99
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x239

    aput v5, v3, v4

    const-string/jumbo v3, "IS"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 100
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const-string/jumbo v3, "DK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 101
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x24e

    aput v5, v3, v4

    const-string/jumbo v3, "PL"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 102
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x252

    aput v5, v3, v4

    const-string/jumbo v3, "RO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 103
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x257

    aput v5, v3, v4

    const-string/jumbo v3, "HU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 104
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    const-string/jumbo v3, "ZA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 105
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x25b

    aput v5, v3, v4

    const-string/jumbo v3, "GH"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 106
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x260

    aput v5, v3, v4

    const-string/jumbo v3, "BH"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 107
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x261

    aput v5, v3, v4

    const-string/jumbo v3, "MU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 108
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x263

    aput v5, v3, v4

    const-string/jumbo v3, "MA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 109
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x265

    aput v5, v3, v4

    const-string/jumbo v3, "DZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 110
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x268

    aput v5, v3, v4

    const-string/jumbo v3, "KE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 111
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x26a

    aput v5, v3, v4

    const-string/jumbo v3, "CI"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 112
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x26b

    aput v5, v3, v4

    const-string/jumbo v3, "TN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 113
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x26d

    aput v5, v3, v4

    const-string/jumbo v3, "SY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 114
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x26e

    aput v5, v3, v4

    const-string/jumbo v3, "EG"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 115
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x270

    aput v5, v3, v4

    const-string/jumbo v3, "LY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 116
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x271

    aput v5, v3, v4

    const-string/jumbo v3, "JO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 117
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x272

    aput v5, v3, v4

    const-string/jumbo v3, "IR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 118
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x273

    aput v5, v3, v4

    const-string/jumbo v3, "KW"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 119
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x274

    aput v5, v3, v4

    const-string/jumbo v3, "SA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 120
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x275

    aput v5, v3, v4

    const-string/jumbo v3, "AE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 121
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const-string/jumbo v3, "FI"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 122
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    const-string/jumbo v3, "CN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 123
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    const-string/jumbo v3, "NO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 124
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2d9

    aput v5, v3, v4

    const-string/jumbo v3, "IL"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 125
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    const-string/jumbo v3, "SE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 126
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e4

    aput v5, v3, v4

    const-string/jumbo v3, "GT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 127
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e5

    aput v5, v3, v4

    const-string/jumbo v3, "SV"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 128
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e6

    aput v5, v3, v4

    const-string/jumbo v3, "HN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 129
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e7

    aput v5, v3, v4

    const-string/jumbo v3, "NI"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 130
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e8

    aput v5, v3, v4

    const-string/jumbo v3, "CR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 131
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2e9

    aput v5, v3, v4

    const-string/jumbo v3, "PA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 132
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2ea

    aput v5, v3, v4

    const-string/jumbo v3, "DO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 133
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    aput v5, v3, v4

    const-string/jumbo v3, "MX"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 134
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    const-string/jumbo v3, "CA"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 135
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x2f7

    aput v5, v3, v4

    const-string/jumbo v3, "VE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 136
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    const-string/jumbo v3, "CH"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 137
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x302

    aput v5, v3, v4

    const-string/jumbo v3, "CO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 138
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x305

    aput v5, v3, v4

    const-string/jumbo v3, "UY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 139
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x307

    aput v5, v3, v4

    const-string/jumbo v3, "PE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 140
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x309

    aput v5, v3, v4

    const-string/jumbo v3, "BO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 141
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x30b

    aput v5, v3, v4

    const-string/jumbo v3, "AR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 142
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x30c

    aput v5, v3, v4

    const-string/jumbo v3, "CL"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 143
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x310

    aput v5, v3, v4

    const-string/jumbo v3, "PY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 144
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x311

    aput v5, v3, v4

    const-string/jumbo v3, "PE"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 145
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x312

    aput v5, v3, v4

    const-string/jumbo v3, "EC"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 146
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    const-string/jumbo v3, "BR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 147
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    const-string/jumbo v3, "IT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 148
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    const-string/jumbo v3, "ES"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 149
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x352

    aput v5, v3, v4

    const-string/jumbo v3, "CU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 150
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x35a

    aput v5, v3, v4

    const-string/jumbo v3, "SK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 151
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x35b

    aput v5, v3, v4

    const-string/jumbo v3, "CZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 152
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x35c

    aput v5, v3, v4

    const-string/jumbo v3, "YU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 153
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x361

    aput v5, v3, v4

    const-string/jumbo v3, "MN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 154
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x363

    aput v5, v3, v4

    const-string/jumbo v3, "KP"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 155
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const-string/jumbo v3, "TR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 156
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    const-string/jumbo v3, "NL"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 157
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x370

    aput v5, v3, v4

    const-string/jumbo v3, "KR"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 158
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x375

    aput v5, v3, v4

    const-string/jumbo v3, "TH"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 159
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x378

    aput v5, v3, v4

    const-string/jumbo v3, "SG"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 160
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x37a

    aput v5, v3, v4

    const-string/jumbo v3, "IN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 161
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x37d

    aput v5, v3, v4

    const-string/jumbo v3, "VN"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 162
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x380

    aput v5, v3, v4

    const-string/jumbo v3, "PK"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 163
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x383

    aput v5, v3, v4

    const-string/jumbo v3, "ID"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 164
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const-string/jumbo v3, "AT"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 165
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_18

    const-string/jumbo v3, "AU"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 166
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    const-string/jumbo v3, "AZ"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 167
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x3bb

    aput v5, v3, v4

    const-string/jumbo v3, "MY"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 168
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const/16 v5, 0x3be

    aput v5, v3, v4

    const-string/jumbo v3, "MO"

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    goto/16 :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    throw v0

    .line 63
    nop

    :array_0
    .array-data 4
        0x0
        0x13
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x1e
        0x27
    .end array-data

    .line 65
    :array_2
    .array-data 4
        0x3c
        0x8b
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x12c
        0x17b
    .end array-data

    .line 71
    :array_4
    .array-data 4
        0x190
        0x1b8
    .end array-data

    .line 72
    :array_5
    .array-data 4
        0x1c2
        0x1cb
    .end array-data

    .line 73
    :array_6
    .array-data 4
        0x1cc
        0x1d5
    .end array-data

    .line 89
    :array_7
    .array-data 4
        0x1ea
        0x1f3
    .end array-data

    .line 90
    :array_8
    .array-data 4
        0x1f4
        0x1fd
    .end array-data

    .line 97
    :array_9
    .array-data 4
        0x21c
        0x225
    .end array-data

    .line 100
    :array_a
    .array-data 4
        0x23a
        0x243
    .end array-data

    .line 104
    :array_b
    .array-data 4
        0x258
        0x259
    .end array-data

    .line 121
    :array_c
    .array-data 4
        0x280
        0x289
    .end array-data

    .line 122
    :array_d
    .array-data 4
        0x2b2
        0x2b7
    .end array-data

    .line 123
    :array_e
    .array-data 4
        0x2bc
        0x2c5
    .end array-data

    .line 125
    :array_f
    .array-data 4
        0x2da
        0x2e3
    .end array-data

    .line 134
    :array_10
    .array-data 4
        0x2f2
        0x2f3
    .end array-data

    .line 136
    :array_11
    .array-data 4
        0x2f8
        0x301
    .end array-data

    .line 146
    :array_12
    .array-data 4
        0x315
        0x316
    .end array-data

    .line 147
    :array_13
    .array-data 4
        0x320
        0x347
    .end array-data

    .line 148
    :array_14
    .array-data 4
        0x348
        0x351
    .end array-data

    .line 155
    :array_15
    .array-data 4
        0x364
        0x365
    .end array-data

    .line 156
    :array_16
    .array-data 4
        0x366
        0x36f
    .end array-data

    .line 164
    :array_17
    .array-data 4
        0x384
        0x397
    .end array-data

    .line 165
    :array_18
    .array-data 4
        0x3a2
        0x3ab
    .end array-data

    .line 166
    :array_19
    .array-data 4
        0x3ac
        0x3b5
    .end array-data
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    move-object v1, p1

    .local v1, "productCode":Ljava/lang/String;
    move-object v8, v0

    invoke-direct {v8}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    .line 38
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 39
    .local v2, "prefix":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .line 40
    .local v3, "max":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 41
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v5, v8

    .line 42
    .local v5, "range":[I
    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    move v6, v8

    .line 43
    .local v6, "start":I
    move v8, v2

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 44
    const/4 v8, 0x0

    move-object v0, v8

    .line 51
    .end local v0    # "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    .end local v5    # "range":[I
    .end local v6    # "start":I
    :goto_1
    return-object v0

    .line 46
    .restart local v0    # "this":Lcom/google/zxing/oned/EANManufacturerOrgSupport;
    .restart local v5    # "range":[I
    .restart local v6    # "start":I
    :cond_0
    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    move v8, v6

    :goto_2
    move v7, v8

    .line 47
    .local v7, "end":I
    move v8, v2

    move v9, v7

    if-gt v8, v9, :cond_2

    .line 48
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v0, v8

    goto :goto_1

    .line 46
    .end local v7    # "end":I
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    goto :goto_2

    .line 40
    .restart local v7    # "end":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v5    # "range":[I
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_3
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method
