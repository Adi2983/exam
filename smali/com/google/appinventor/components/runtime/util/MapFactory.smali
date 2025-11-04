.class public final Lcom/google/appinventor/components/runtime/util/MapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureType;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .locals 5

    .prologue
    .line 1617
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/a;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/a;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v0, v1

    return-object v0
.end method
