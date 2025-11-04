.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

.field private final twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtensionSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/UPCEANExtension2Support;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/oned/UPCEANExtension2Support;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    .line 29
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/UPCEANExtension5Support;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/oned/UPCEANExtension5Support;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtensionSupport;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move v3, p3

    .local v3, "rowOffset":I
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    invoke-static {v6, v7, v8, v9}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v6

    move-object v4, v6

    .line 34
    .local v4, "extensionStartRange":[I
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    move v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 36
    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANExtensionSupport;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "this":Lcom/google/zxing/oned/UPCEANExtensionSupport;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 36
    .local v5, "re":Lcom/google/zxing/ReaderException;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    move v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method
