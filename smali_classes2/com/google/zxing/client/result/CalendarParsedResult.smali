.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final DATE_TIME:Ljava/util/regex/Pattern;

.field private static final DATE_TIME_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private final attendees:[Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:Ljava/util/Date;

.field private final endAllDay:Z

.field private final latitude:D

.field private final location:Ljava/lang/String;

.field private final longitude:D

.field private final organizer:Ljava/lang/String;

.field private final start:Ljava/util/Date;

.field private final startAllDay:Z

.field private final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    const-string/jumbo v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 41
    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 18

    .prologue
    .line 66
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object/from16 v1, p1

    .local v1, "summary":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "startString":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "endString":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "location":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "organizer":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "attendees":[Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "description":Ljava/lang/String;
    move-wide/from16 v8, p8

    .local v8, "latitude":D
    move-wide/from16 v10, p10

    .local v10, "longitude":D
    move-object v13, v0

    sget-object v14, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v13, v14}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 67
    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 69
    move-object v13, v0

    move-object v14, v2

    :try_start_0
    invoke-static {v14}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    .line 70
    move-object v13, v0

    move-object v14, v3

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    move-object v13, v0

    move-object v14, v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    .line 75
    move-object v13, v0

    move-object v14, v3

    if-eqz v14, :cond_2

    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    .line 76
    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 77
    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 78
    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 79
    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 80
    move-object v13, v0

    move-wide v14, v8

    iput-wide v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 81
    move-object v13, v0

    move-wide v14, v10

    iput-wide v14, v13, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    .line 82
    return-void

    .line 70
    :cond_0
    move-object v14, v3

    :try_start_1
    invoke-static {v14}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_0

    .line 71
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 72
    .local v12, "pe":Ljava/text/ParseException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v12

    invoke-virtual {v15}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 74
    .end local v12    # "pe":Ljava/text/ParseException;
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 75
    :cond_2
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private static format(ZLjava/util/Date;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    move v0, p0

    .local v0, "allDay":Z
    move-object v1, p1

    .local v1, "date":Ljava/util/Date;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 191
    const/4 v3, 0x0

    move-object v0, v3

    .line 196
    .end local v0    # "allDay":Z
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "allDay":Z
    :cond_0
    move v3, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 196
    .local v2, "format":Ljava/text/DateFormat;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 193
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_1
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v1, p0

    .local v1, "when":Ljava/lang/String;
    sget-object v6, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    new-instance v6, Ljava/text/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 165
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 167
    sget-object v6, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_FORMAT:Ljava/text/DateFormat;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    move-object v1, v6

    .line 185
    .end local v1    # "when":Ljava/lang/String;
    .local v2, "date":Ljava/util/Date;
    :goto_0
    return-object v1

    .line 171
    .end local v2    # "date":Ljava/util/Date;
    .restart local v1    # "when":Ljava/lang/String;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    move-object v6, v1

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_2

    .line 172
    sget-object v6, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    move-object v7, v1

    const/4 v8, 0x0

    const/16 v9, 0xf

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    move-object v2, v6

    .line 173
    .restart local v2    # "date":Ljava/util/Date;
    new-instance v6, Ljava/util/GregorianCalendar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v3, v6

    .line 174
    .local v3, "calendar":Ljava/util/Calendar;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v4, v6

    .line 176
    .local v4, "milliseconds":J
    move-wide v6, v4

    move-object v8, v3

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 179
    move-object v6, v3

    new-instance v7, Ljava/util/Date;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-wide v9, v4

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    move-wide v6, v4

    move-object v8, v3

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 181
    new-instance v6, Ljava/util/Date;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-wide v8, v4

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v2, v6

    .line 185
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v4    # "milliseconds":J
    :goto_1
    move-object v6, v2

    move-object v1, v6

    goto :goto_0

    .line 183
    .end local v2    # "date":Ljava/util/Date;
    :cond_2
    sget-object v6, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    move-object v2, v6

    .restart local v2    # "date":Ljava/util/Date;
    goto :goto_1
.end method


# virtual methods
.method public getAttendees()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 144
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 145
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 146
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 151
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getLatitude()D
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getLongitude()D
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-wide v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return-object v0
.end method

.method public isEndAllDay()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return v0
.end method

.method public isStartAllDay()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/CalendarParsedResult;
    return v0
.end method
