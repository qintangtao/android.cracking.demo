.class public Lcom/market2345/dumpclean/CleanOverActivity;
.super Lcom/market2345/home/BaseActivity;
.source "CleanOverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HAS_CLEAN_CACHE:I = -0x1


# instance fields
.field private btn_manager_sdcard:Landroid/widget/Button;

.field private btn_no_manager_sdcard:Landroid/widget/Button;

.field private btn_ok:Landroid/widget/Button;

.field private deleteSize:J

.field private height:I

.field private ibtn_left:Landroid/widget/ImageView;

.field private iv_clean_setting:Landroid/widget/ImageView;

.field private iv_high_light:Landroid/widget/ImageView;

.field private iv_sun:Landroid/widget/ImageView;

.field private iv_sun_center:Landroid/widget/ImageView;

.field private ll_manager_sdcard:Landroid/widget/LinearLayout;

.field private final showThreshold:I

.field private tv_clean_success_size:Landroid/widget/TextView;

.field private tv_history_clean_size:Landroid/widget/TextView;

.field private tv_tip:Landroid/widget/TextView;

.field private vv:Lcom/market2345/dumpclean/widget/VolumnView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 43
    const/16 v0, 0x50

    iput v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->showThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/CleanOverActivity;)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/CleanOverActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->initAnimSet()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private initAnimSet()Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 10

    .prologue
    .line 147
    new-instance v7, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v7}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 148
    .local v7, "animSet":Lcom/nineoldandroids/animation/AnimatorSet;
    const v8, 0x7f040001

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    .line 150
    .local v0, "anim":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040001

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v1

    .line 152
    .local v1, "anim2":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040002

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v2

    .line 154
    .local v2, "anim3":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040002

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v3

    .line 156
    .local v3, "anim4":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040006

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v4

    .line 162
    .local v4, "anim5":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040004

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v5

    .line 164
    .local v5, "anim7":Lcom/nineoldandroids/animation/Animator;
    const v8, 0x7f040004

    invoke-static {p0, v8}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v6

    .line 166
    .local v6, "anim8":Lcom/nineoldandroids/animation/Animator;
    const-wide/16 v8, 0x320

    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;

    .line 167
    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;

    .line 168
    const-wide/16 v8, 0x320

    invoke-virtual {v3, v8, v9}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;

    .line 169
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;

    .line 171
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 172
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun_center:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 173
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 174
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_history_clean_size:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 175
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_high_light:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 177
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 178
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Lcom/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 180
    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->before(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 181
    invoke-virtual {v7, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 182
    invoke-virtual {v7, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 183
    invoke-virtual {v7, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 184
    invoke-virtual {v7, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 185
    iget-object v8, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_high_light:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    return-object v7
.end method

.method private initData()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v10, 0x8

    const/4 v12, 0x0

    .line 70
    invoke-static {}, Lcom/market2345/filebrowser/FileBrowserUtil;->getSDCardInfo()Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    move-result-object v0

    .line 71
    .local v0, "info":Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;
    if-eqz v0, :cond_1

    .line 72
    const/high16 v6, 0x3f800000    # 1.0f

    iget-wide v8, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J

    long-to-float v7, v8

    iget-wide v8, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 73
    .local v1, "progress":I
    const/16 v6, 0x50

    if-le v1, v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->vv:Lcom/market2345/dumpclean/widget/VolumnView;

    invoke-virtual {v6, v1}, Lcom/market2345/dumpclean/widget/VolumnView;->setProgress(I)V

    .line 77
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_tip:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u7528"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    iget-wide v10, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\u603b\u8ba1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .end local v1    # "progress":I
    :goto_0
    iget-wide v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 88
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    const v7, 0x7f0b00f2

    invoke-virtual {p0, v7}, Lcom/market2345/dumpclean/CleanOverActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_1
    iget-wide v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    invoke-static {p0, v6, v7}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getTodayCleanSize(Landroid/content/Context;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "str1":Ljava/lang/String;
    iget-wide v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    invoke-static {p0, v6, v7}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getTotalCleanSize(Landroid/content/Context;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "str2":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_history_clean_size:Landroid/widget/TextView;

    const v7, 0x7f0b015c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v12

    aput-object v4, v8, v13

    invoke-virtual {p0, v7, v8}, Lcom/market2345/dumpclean/CleanOverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 79
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    .restart local v1    # "progress":I
    :cond_0
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 83
    .end local v1    # "progress":I
    :cond_1
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-wide v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 90
    const v6, 0x7f0b014f

    invoke-virtual {p0, v6}, Lcom/market2345/dumpclean/CleanOverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "str0":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    .end local v2    # "str0":Ljava/lang/String;
    :cond_3
    iget-wide v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    invoke-static {p0, v6, v7}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseTimeSize(Landroid/content/Context;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2    # "str0":Ljava/lang/String;
    const v6, 0x7f0b0035

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v2, v7, v12

    invoke-virtual {p0, v6, v7}, Lcom/market2345/dumpclean/CleanOverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/market2345/dumpclean/main/Util;->getSpannableString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ibtn_left:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_clean_setting:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ibtn_left:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_clean_setting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun_center:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_high_light:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_history_clean_size:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    .line 120
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_manager_sdcard:Landroid/widget/Button;

    .line 121
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_no_manager_sdcard:Landroid/widget/Button;

    .line 122
    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_tip:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/widget/VolumnView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->vv:Lcom/market2345/dumpclean/widget/VolumnView;

    .line 125
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_manager_sdcard:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_no_manager_sdcard:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun_center:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 129
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_clean_success_size:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 130
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->tv_history_clean_size:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 132
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/market2345/dumpclean/DisplayUtil;->getDispalyHeight(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->height:I

    .line 133
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_sun:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 134
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->iv_high_light:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->btn_ok:Landroid/widget/Button;

    iget v1, p0, Lcom/market2345/dumpclean/CleanOverActivity;->height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->ll_manager_sdcard:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/market2345/dumpclean/CleanOverActivity;->height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 137
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 194
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->finish()V

    goto :goto_0

    .line 197
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/dumpclean/CleanSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    const-string v1, "Cleaner_Setting"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "it":Landroid/content/Intent;
    :sswitch_2
    const-string v1, "Cleaner_CleanFinish"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->finish()V

    goto :goto_0

    .line 208
    :sswitch_3
    const-string v1, "Cleaner_Over_File"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/market2345/filebrowser/FileCategoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/CleanOverActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->finish()V

    goto :goto_0

    .line 214
    :sswitch_4
    const-string v1, "Cleaner_Over_NextTime"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->finish()V

    goto :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006c -> :sswitch_0
        0x7f09006d -> :sswitch_1
        0x7f090075 -> :sswitch_2
        0x7f09007a -> :sswitch_4
        0x7f09007b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanOverActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deleteSize"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/dumpclean/CleanOverActivity;->deleteSize:J

    .line 51
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanOverActivity;->initData()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/market2345/dumpclean/CleanOverActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/dumpclean/CleanOverActivity$1;-><init>(Lcom/market2345/dumpclean/CleanOverActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "Cleaner_Over_Back"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 67
    return-void
.end method
