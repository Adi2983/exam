.class final Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/bind/DatatypeConverterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cal":Ljava/util/Calendar;
    const/4 v6, 0x0

    move v2, v6

    .line 752
    .local v2, "fidx":I
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    .line 753
    .local v3, "flen":I
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 755
    .local v4, "buf":Ljava/lang/StringBuilder;
    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 756
    move-object v6, v0

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 758
    .local v5, "fch":C
    move v6, v5

    const/16 v7, 0x25

    if-eq v6, v7, :cond_0

    .line 759
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    goto :goto_0

    .line 764
    :cond_0
    move-object v6, v0

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 795
    new-instance v6, Ljava/lang/InternalError;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v6

    .line 766
    :sswitch_0
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 767
    .line 797
    :goto_1
    goto :goto_0

    .line 770
    :sswitch_1
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 771
    goto :goto_1

    .line 774
    :sswitch_2
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatDays(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 775
    goto :goto_1

    .line 778
    :sswitch_3
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 779
    goto :goto_1

    .line 782
    :sswitch_4
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 783
    goto :goto_1

    .line 786
    :sswitch_5
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 787
    goto :goto_1

    .line 790
    :sswitch_6
    move-object v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    .line 791
    goto :goto_1

    .line 799
    .end local v5    # "fch":C
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "format":Ljava/lang/String;
    return-object v0

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method

.method private static formatDays(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 826
    return-void
.end method

.method private static formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 830
    return-void
.end method

.method private static formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 834
    return-void
.end method

.method private static formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 822
    return-void
.end method

.method private static formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 7

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v4, v0

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 838
    move-object v4, v0

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    move-object v4, v0

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v2, v4

    .line 840
    .local v2, "n":I
    move v4, v2

    if-eqz v4, :cond_1

    .line 841
    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 842
    .local v3, "ms":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 845
    :cond_0
    move-object v4, v1

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 846
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 849
    .end local v2    # "n":I
    .end local v3    # "ms":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static formatTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    move-object v2, v4

    .line 855
    .local v2, "tz":Ljava/util/TimeZone;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 882
    :goto_0
    return-void

    .line 859
    :cond_0
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 860
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x36ee80

    :goto_1
    add-int/2addr v4, v5

    move v3, v4

    .line 865
    .local v3, "offset":I
    :goto_2
    move v4, v3

    if-nez v4, :cond_3

    .line 866
    move-object v4, v1

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 867
    goto :goto_0

    .line 860
    .end local v3    # "offset":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 862
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    move v3, v4

    .restart local v3    # "offset":I
    goto :goto_2

    .line 870
    :cond_3
    move v4, v3

    if-ltz v4, :cond_4

    .line 871
    move-object v4, v1

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    :goto_3
    move v4, v3

    const v5, 0xea60

    div-int/2addr v4, v5

    move v3, v4

    .line 879
    move v4, v3

    const/16 v5, 0x3c

    div-int/lit8 v4, v4, 0x3c

    move-object v5, v1

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 880
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 881
    move v4, v3

    const/16 v5, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    move-object v5, v1

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 882
    goto :goto_0

    .line 873
    :cond_4
    move-object v4, v1

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 874
    move v4, v3

    const/4 v5, -0x1

    mul-int/lit8 v4, v4, -0x1

    move v3, v4

    goto :goto_3
.end method

.method private static formatTwoDigits(ILjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 887
    move v0, p0

    .local v0, "n":I
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, v0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    move-object v2, v1

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    :cond_0
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 889
    return-void
.end method

.method private static formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 7

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "cal":Ljava/util/Calendar;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v2, v4

    .line 807
    .local v2, "year":I
    move v4, v2

    if-gtz v4, :cond_0

    .line 808
    const/4 v4, 0x1

    move v5, v2

    rsub-int/lit8 v4, v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 812
    .local v3, "s":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 810
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 814
    :cond_1
    move v4, v2

    if-gtz v4, :cond_2

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 817
    :cond_2
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 818
    return-void
.end method
