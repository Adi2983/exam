.class Lcom/wooplr/spotlight/utils/SpotlightSequence$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wooplr/spotlight/utils/SpotlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/utils/SpotlightSequence;->addSpotlight(Landroid/view/View;IILjava/lang/String;)Lcom/wooplr/spotlight/utils/SpotlightSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooplr/spotlight/utils/SpotlightSequence;


# direct methods
.method constructor <init>(Lcom/wooplr/spotlight/utils/SpotlightSequence;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    iput-object v4, v3, Lcom/wooplr/spotlight/utils/SpotlightSequence$2;->this$0:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserClicked(Lcom/wooplr/spotlight/SpotlightView;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/utils/SpotlightSequence$2;->this$0:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    invoke-static {v3}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->access$000(Lcom/wooplr/spotlight/utils/SpotlightSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/utils/SpotlightSequence$2;->this$0:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    invoke-static {v3}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->access$100(Lcom/wooplr/spotlight/utils/SpotlightSequence;)V

    :cond_0
    return-void
.end method
