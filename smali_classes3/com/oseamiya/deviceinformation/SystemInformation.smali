.class public Lcom/oseamiya/deviceinformation/SystemInformation;
.super Ljava/lang/Object;
.source "SystemInformation.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/SystemInformation;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getAndroidSdkReleaseDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v3

    .line 90
    .local v1, "sdk":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v2, v3

    .line 91
    .local v2, "calendar":Ljava/util/Calendar;
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 92
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 93
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x17

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 94
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 95
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    .line 242
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    :cond_0
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 97
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 98
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 99
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 100
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 101
    :cond_1
    move v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 102
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 103
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x1b

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 104
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 105
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 106
    :cond_2
    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 107
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 108
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 109
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 110
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 111
    :cond_3
    move v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 112
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 113
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x1b

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 114
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 115
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 116
    :cond_4
    move v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 117
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 118
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 119
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 120
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 121
    :cond_5
    move v3, v1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    .line 122
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 123
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 124
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7da

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 125
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 126
    :cond_6
    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 127
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 128
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 129
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7da

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 130
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 131
    :cond_7
    move v3, v1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_8

    .line 132
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 133
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 134
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7da

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 135
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 136
    :cond_8
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    .line 137
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 138
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 139
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 140
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 141
    :cond_9
    move v3, v1

    const/16 v4, 0xb

    if-ne v3, v4, :cond_a

    .line 142
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 143
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x16

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 144
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 145
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 146
    :cond_a
    move v3, v1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_b

    .line 147
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 148
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 149
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 150
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 151
    :cond_b
    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_c

    .line 152
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 153
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 154
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 155
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 156
    :cond_c
    move v3, v1

    const/16 v4, 0xe

    if-ne v3, v4, :cond_d

    .line 157
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 158
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 159
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 160
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 161
    :cond_d
    move v3, v1

    const/16 v4, 0xf

    if-ne v3, v4, :cond_e

    .line 162
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 163
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 164
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7db

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 165
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 166
    :cond_e
    move v3, v1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_f

    .line 167
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 168
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 169
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7dc

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 170
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 171
    :cond_f
    move v3, v1

    const/16 v4, 0x11

    if-ne v3, v4, :cond_10

    .line 172
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 173
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 174
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7dc

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 175
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 176
    :cond_10
    move v3, v1

    const/16 v4, 0x12

    if-ne v3, v4, :cond_11

    .line 177
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 178
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 179
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7dd

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 180
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 181
    :cond_11
    move v3, v1

    const/16 v4, 0x13

    if-ne v3, v4, :cond_12

    .line 182
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 183
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x1f

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 184
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7dd

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 185
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 186
    :cond_12
    move v3, v1

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    .line 187
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 188
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 189
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7de

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 190
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 191
    :cond_13
    move v3, v1

    const/16 v4, 0x15

    if-ne v3, v4, :cond_14

    .line 192
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 193
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 194
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7de

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 195
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 196
    :cond_14
    move v3, v1

    const/16 v4, 0x16

    if-ne v3, v4, :cond_15

    .line 197
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 198
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 199
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7df

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 200
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 201
    :cond_15
    move v3, v1

    const/16 v4, 0x17

    if-ne v3, v4, :cond_16

    .line 202
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 203
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 204
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7df

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 205
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 206
    :cond_16
    move v3, v1

    const/16 v4, 0x18

    if-ne v3, v4, :cond_17

    .line 207
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 208
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x16

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 209
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 210
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 211
    :cond_17
    move v3, v1

    const/16 v4, 0x19

    if-ne v3, v4, :cond_18

    .line 212
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 213
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 214
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 215
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 216
    :cond_18
    move v3, v1

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_19

    .line 217
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 218
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 219
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 220
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 221
    :cond_19
    move v3, v1

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_1a

    .line 222
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 223
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 224
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 225
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 226
    :cond_1a
    move v3, v1

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_1b

    .line 227
    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 228
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 229
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 230
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 231
    :cond_1b
    move v3, v1

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_1c

    .line 232
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 233
    move-object v3, v2

    const/4 v4, 0x5

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 234
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e3

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 235
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 236
    :cond_1c
    move v3, v1

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_1d

    .line 237
    move-object v3, v2

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 238
    move-object v3, v2

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 239
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x7e4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 240
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 242
    :cond_1d
    const/4 v3, 0x0

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getApiLevel()I
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return v0
.end method

.method public getBootloader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getDisplayCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getDisplayLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getIso3Country()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getIso3Language()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getKernalVersion()Ljava/lang/String;
    .locals 11

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    const/4 v5, 0x0

    move-object v1, v5

    .line 257
    .local v1, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "uname -a"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v5

    .line 260
    .line 261
    :goto_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 263
    .local v2, "is":Ljava/io/InputStream;
    move-object v5, v1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_0

    .line 264
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 268
    :goto_1
    new-instance v5, Ljava/io/BufferedReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 269
    .local v3, "br":Ljava/io/BufferedReader;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 270
    .local v4, "line":Ljava/lang/String;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 271
    move-object v5, v4

    move-object v0, v5

    .line 277
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 258
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 259
    .local v2, "e":Ljava/io/IOException;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 266
    .local v2, "is":Ljava/io/InputStream;
    :cond_0
    move-object v5, v1

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 272
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 273
    .local v3, "e":Ljava/lang/InterruptedException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 274
    const-string/jumbo v5, "Error"

    move-object v0, v5

    goto :goto_2

    .line 275
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 276
    .local v3, "e":Ljava/io/IOException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 277
    const-string/jumbo v5, "Error"

    move-object v0, v5

    goto :goto_2
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method

.method public getSecurityPathDate()Ljava/lang/String;
    .locals 13

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_0

    .line 48
    sget-object v7, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    move-object v0, v7

    .line 80
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    :goto_0
    return-object v0

    .line 51
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "/system/bin/getprop"

    aput-object v11, v9, v10

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    const/4 v8, 0x1

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    move-object v1, v7

    .line 55
    .local v1, "process":Ljava/lang/Process;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 56
    .local v2, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/io/InputStreamReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 58
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v7

    .line 60
    .local v5, "str":Ljava/lang/StringBuilder;
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    .local v4, "line":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 61
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "security_patch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    move-object v7, v4

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 64
    .local v6, "split":[Ljava/lang/String;
    move-object v7, v6

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 65
    move-object v7, v6

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v0, v7

    goto :goto_0

    .line 72
    .end local v6    # "split":[Ljava/lang/String;
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 73
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 80
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :goto_1
    const-string/jumbo v7, ""

    move-object v0, v7

    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 75
    .local v1, "e":Ljava/io/IOException;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    const-class v3, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 30
    .local v1, "fields":[Ljava/lang/reflect/Field;
    move-object v3, v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 32
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "O"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Oreo"

    move-object v2, v3

    .line 33
    :cond_0
    move-object v3, v2

    const-string/jumbo v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Nougat"

    move-object v2, v3

    .line 34
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Marshmallow"

    move-object v2, v3

    .line 35
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "O_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Oreo++"

    move-object v2, v3

    .line 36
    :cond_3
    move-object v3, v2

    const-string/jumbo v4, "N_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Nougat++"

    move-object v2, v3

    .line 38
    :cond_4
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SystemInformation;
    return-object v0
.end method
