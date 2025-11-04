.class public Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static isLayoutDirectionRTL()Z
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static setSupportAutoMirrored(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 223
    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 227
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 67
    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 72
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 73
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/FrameLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 103
    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 108
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 109
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 121
    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    .line 126
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMarginEnd(I)V

    .line 127
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/LinearLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 85
    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 90
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 91
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 139
    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 144
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 145
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/TableLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 157
    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout$LayoutParams;->setMarginStart(I)V

    .line 162
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout$LayoutParams;->setMarginEnd(I)V

    .line 163
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/TableRow$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 175
    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 179
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TableRow$LayoutParams;->setMarginStart(I)V

    .line 180
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TableRow$LayoutParams;->setMarginEnd(I)V

    .line 181
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/Toolbar$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 193
    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Toolbar$LayoutParams;->setMargins(IIII)V

    .line 197
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar$LayoutParams;->setMarginStart(I)V

    .line 198
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar$LayoutParams;->setMarginEnd(I)V

    .line 199
    goto :goto_0
.end method

.method public static setSupportPadding(Landroid/view/View;IIII)V
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 50
    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 54
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 55
    goto :goto_0
.end method

.method public static setSupportTextDirection(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 207
    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->isLayoutDirectionRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    move-object v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 213
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 215
    :cond_1
    goto :goto_0
.end method
