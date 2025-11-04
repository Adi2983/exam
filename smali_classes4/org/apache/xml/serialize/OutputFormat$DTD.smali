.class public Lorg/apache/xml/serialize/OutputFormat$DTD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/OutputFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DTD"
.end annotation


# static fields
.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
