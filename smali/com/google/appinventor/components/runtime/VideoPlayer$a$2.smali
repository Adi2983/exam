.class final Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private synthetic BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

.field private synthetic IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

.field private synthetic joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 7

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    .line 772
    return-void
.end method
