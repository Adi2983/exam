.class public Lcom/oseamiya/deviceinformation/LocationInformation;
.super Ljava/lang/Object;
.source "LocationInformation.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getStringAddress(DDI)Ljava/lang/String;
    .locals 19

    .prologue
    .line 88
    move-object/from16 v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-wide/from16 v2, p1

    .local v2, "latitude":D
    move-wide/from16 v4, p3

    .local v4, "longitude":D
    move/from16 v6, p5

    .local v6, "val":I
    const-string/jumbo v11, ""

    move-object v7, v11

    .line 89
    .local v7, "address":Ljava/lang/String;
    new-instance v11, Landroid/location/Geocoder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    iget-object v13, v13, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    move-object v8, v11

    .line 91
    .local v8, "geocoder":Landroid/location/Geocoder;
    move-object v11, v8

    move-wide v12, v2

    move-wide v14, v4

    const/16 v16, 0x1

    :try_start_0
    invoke-virtual/range {v11 .. v16}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    .line 92
    .local v9, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v11, v9

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    move-object v10, v11

    .line 93
    .local v10, "add":Landroid/location/Address;
    move v11, v6

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 94
    move-object v11, v10

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 104
    .line 105
    .end local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "add":Landroid/location/Address;
    :cond_0
    :goto_0
    move-object v11, v7

    move-object v1, v11

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v1

    .line 95
    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    .restart local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v10    # "add":Landroid/location/Address;
    :cond_1
    move v11, v6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 96
    move-object v11, v10

    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    goto :goto_0

    .line 97
    :cond_2
    move v11, v6

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 98
    move-object v11, v10

    invoke-virtual {v11}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    goto :goto_0

    .line 99
    :cond_3
    move v11, v6

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 100
    move-object v11, v10

    invoke-virtual {v11}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v7, v11

    goto :goto_0

    .line 102
    .end local v9    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "add":Landroid/location/Address;
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 103
    .local v9, "e":Ljava/io/IOException;
    move-object v11, v9

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsLocationServicesEnabled()Z
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object v1, v2

    .line 63
    .local v1, "locationManager":Landroid/location/LocationManager;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    move v0, v2

    .line 66
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    :goto_0
    return v0

    .line 65
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 66
    .local v1, "mode":I
    move v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCity(DD)Ljava/lang/String;
    .locals 11

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-wide v1, p1

    .local v1, "latitude":D
    move-wide v3, p3

    .local v3, "longitude":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/oseamiya/deviceinformation/LocationInformation;->getStringAddress(DDI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v0
.end method

.method public getCountryName(DD)Ljava/lang/String;
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-wide v1, p1

    .local v1, "latitude":D
    move-wide v3, p3

    .local v3, "longitude":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/oseamiya/deviceinformation/LocationInformation;->getStringAddress(DDI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v0
.end method

.method public getCurrentLatitude()D
    .locals 4

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/LocationInformation;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    const-wide/16 v2, 0x0

    move-wide v1, v2

    .line 49
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/LocationInformation;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public getCurrentLongitude()D
    .locals 4

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/LocationInformation;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_0

    .line 55
    const-wide/16 v2, 0x0

    move-wide v1, v2

    .line 57
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/LocationInformation;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 9

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    move-object v1, v3

    .line 33
    .local v1, "locationManager":Landroid/location/LocationManager;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/LocationInformation;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 36
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object v2, v3

    .line 37
    .local v2, "location":Landroid/location/Location;
    move-object v3, v2

    if-nez v3, :cond_2

    .line 38
    move-object v3, v1

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object v2, v3

    .line 42
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v0

    .line 39
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_1

    .line 40
    move-object v3, v1

    const-string/jumbo v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getPostalCode(DD)Ljava/lang/String;
    .locals 11

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-wide v1, p1

    .local v1, "latitude":D
    move-wide v3, p3

    .local v3, "longitude":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const/4 v10, 0x4

    invoke-direct/range {v5 .. v10}, Lcom/oseamiya/deviceinformation/LocationInformation;->getStringAddress(DDI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v0
.end method

.method public getStreetAddress(DD)Ljava/lang/String;
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    move-wide v1, p1

    .local v1, "latitude":D
    move-wide v3, p3

    .local v3, "longitude":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/oseamiya/deviceinformation/LocationInformation;->getStringAddress(DDI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/LocationInformation;
    return-object v0
.end method
