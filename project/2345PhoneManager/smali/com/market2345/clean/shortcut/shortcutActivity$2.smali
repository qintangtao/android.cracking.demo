.class Lcom/market2345/clean/shortcut/shortcutActivity$2;
.super Landroid/os/Handler;
.source "shortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/clean/shortcut/shortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clean/shortcut/shortcutActivity;


# direct methods
.method constructor <init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 192
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$400(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "sretching_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 197
    .local v1, "bd":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    const-string v6, "process_count"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I
    invoke-static {v5, v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$502(Lcom/market2345/clean/shortcut/shortcutActivity;I)I

    .line 198
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    const-string v6, "process_size"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processSize:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$602(Lcom/market2345/clean/shortcut/shortcutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;
    invoke-static {v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$700(Lcom/market2345/clean/shortcut/shortcutActivity;)Lcom/market2345/clean/shortcut/TaskInfoProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    iput v6, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    .line 201
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v5, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    const/16 v6, 0x1770

    if-le v5, v6, :cond_1

    .line 202
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v5, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v6, v6, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    if-lt v5, v6, :cond_0

    .line 203
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v6, v6, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    iget-object v7, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # invokes: Lcom/market2345/clean/shortcut/shortcutActivity;->getRandom()I
    invoke-static {v7}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$800(Lcom/market2345/clean/shortcut/shortcutActivity;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    .line 210
    :cond_0
    :goto_1
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v6, v6, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    invoke-virtual {v5, v6}, Lcom/market2345/MarketApplication;->setLastCleanRAMData(I)V

    .line 212
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-virtual {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->start()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v5, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v6, v6, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    if-lt v5, v6, :cond_0

    .line 207
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v6, v6, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    iput v6, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    goto :goto_1

    .line 217
    .end local v1    # "bd":Landroid/os/Bundle;
    :pswitch_1
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # invokes: Lcom/market2345/clean/shortcut/shortcutActivity;->updateWidth()V
    invoke-static {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$900(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    goto/16 :goto_0

    .line 220
    :pswitch_2
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # invokes: Lcom/market2345/clean/shortcut/shortcutActivity;->updateWidth()V
    invoke-static {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$900(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    goto/16 :goto_0

    .line 223
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 224
    .local v0, "ani":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 225
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 227
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I
    invoke-static {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$500(Lcom/market2345/clean/shortcut/shortcutActivity;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-boolean v5, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->isShowing:Z

    if-nez v5, :cond_2

    .line 228
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v8, v5, Lcom/market2345/clean/shortcut/shortcutActivity;->isShowing:Z

    .line 229
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-virtual {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I
    invoke-static {v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$500(Lcom/market2345/clean/shortcut/shortcutActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->getPowerSaving(I)I

    move-result v3

    .line 231
    .local v3, "time":I
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I
    invoke-static {v7}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$500(Lcom/market2345/clean/shortcut/shortcutActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->processSize:Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$600(Lcom/market2345/clean/shortcut/shortcutActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "toast":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 234
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "time":I
    .end local v4    # "toast":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$1000(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    new-instance v5, Lcom/market2345/clean/shortcut/shortcutActivity$2$1;

    invoke-direct {v5, p0}, Lcom/market2345/clean/shortcut/shortcutActivity$2$1;-><init>(Lcom/market2345/clean/shortcut/shortcutActivity$2;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
