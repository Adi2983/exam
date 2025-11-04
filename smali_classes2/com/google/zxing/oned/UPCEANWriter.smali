.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "UPCEANWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANWriter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMargin()I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANWriter;
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANWriter;
    return v0
.end method
