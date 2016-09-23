.class public Lcom/market2345/customview/DetailStatusView;
.super Landroid/widget/TextView;
.source "DetailStatusView.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# static fields
.field public static final FLAG_DETAIL_COMMENT_STATE_COMMENT:I = 0x3

.field public static final FLAG_DETAIL_COMMENT_STATE_GOON:I = 0x5

.field public static final FLAG_DETAIL_COMMENT_STATE_PAUSE:I = 0x4

.field public static final FLAG_DETAIL_COMMENT_STATE_RETRY:I = 0x6

.field public static final FLAG_DETAIL_SHARE_STATE_CANCEL:I = 0x2

.field public static final FLAG_DETAIL_SHARE_STATE_SHARE:I = 0x1


# instance fields
.field private mShareBtn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 48
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 50
    .local v4, "textWidth":F
    if-eqz v3, :cond_1

    .line 51
    aget-object v5, v3, v9

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getCompoundDrawablePadding()I

    move-result v1

    .line 53
    .local v1, "drawablePadding":I
    aget-object v5, v3, v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 54
    .local v2, "drawableWidth":I
    int-to-float v5, v2

    add-float/2addr v5, v4

    int-to-float v6, v1

    add-float v0, v5, v6

    .line 55
    .local v0, "bodyWidth":F
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v8

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    .end local v0    # "bodyWidth":F
    .end local v1    # "drawablePadding":I
    .end local v2    # "drawableWidth":I
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    div-float/2addr v5, v8

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    div-float/2addr v5, v8

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public setBgTag(II)V
    .locals 2
    .param p1, "resIdDrawable"    # I
    .param p2, "tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/customview/DetailStatusView;->setTag(Ljava/lang/Object;)V

    .line 163
    if-lez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/market2345/customview/DetailStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/market2345/customview/DetailStatusView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/market2345/customview/DetailStatusView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIsShareBtn(Z)V
    .locals 0
    .param p1, "isShareBtn"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    .line 68
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 157
    return-void
.end method

.method public showCurrentSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public showProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 73
    return-void
.end method

.method public showSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedStatus"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public showStatus(Lcom/market2345/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 83
    const v0, 0x7f020060

    .line 84
    .local v0, "resIdDrawable":I
    const/4 v1, 0x1

    .line 86
    .local v1, "tag":I
    if-nez p1, :cond_1

    .line 87
    iget-boolean v2, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    if-eqz v2, :cond_0

    .line 88
    const v0, 0x7f020060

    .line 89
    const/4 v1, 0x1

    .line 94
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/market2345/customview/DetailStatusView;->setBgTag(II)V

    .line 147
    :goto_1
    :sswitch_0
    return-void

    .line 91
    :cond_0
    const v0, 0x7f02005c

    .line 92
    const/4 v1, 0x3

    goto :goto_0

    .line 98
    :cond_1
    iget v2, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 146
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/market2345/customview/DetailStatusView;->setBgTag(II)V

    goto :goto_1

    .line 103
    :sswitch_1
    iget-boolean v2, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    if-eqz v2, :cond_2

    .line 104
    const v0, 0x7f02005b

    .line 105
    const/4 v1, 0x2

    goto :goto_2

    .line 107
    :cond_2
    const v0, 0x7f02005e

    .line 108
    const/4 v1, 0x4

    .line 110
    goto :goto_2

    .line 113
    :sswitch_2
    iget-boolean v2, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    if-eqz v2, :cond_3

    .line 114
    const v0, 0x7f02005b

    .line 115
    const/4 v1, 0x2

    goto :goto_2

    .line 117
    :cond_3
    const v0, 0x7f02005d

    .line 118
    const/4 v1, 0x5

    .line 120
    goto :goto_2

    .line 122
    :sswitch_3
    iget-boolean v2, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    if-eqz v2, :cond_4

    .line 123
    const v0, 0x7f02005b

    .line 124
    const/4 v1, 0x2

    goto :goto_2

    .line 126
    :cond_4
    const v0, 0x7f02005f

    .line 127
    const/4 v1, 0x6

    .line 129
    goto :goto_2

    .line 134
    :sswitch_4
    iget-boolean v2, p0, Lcom/market2345/customview/DetailStatusView;->mShareBtn:Z

    if-eqz v2, :cond_5

    .line 135
    const v0, 0x7f020060

    .line 136
    const/4 v1, 0x1

    goto :goto_2

    .line 138
    :cond_5
    const v0, 0x7f02005c

    .line 139
    const/4 v1, 0x3

    .line 141
    goto :goto_2

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_4
        0x259 -> :sswitch_4
        0x25a -> :sswitch_4
    .end sparse-switch
.end method
