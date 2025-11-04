.class Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/XMLAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Attribute"
.end annotation


# instance fields
.field public augs:Lorg/apache/xerces/xni/Augmentations;

.field public final name:Lorg/apache/xerces/xni/QName;

.field public next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public specified:Z

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method
