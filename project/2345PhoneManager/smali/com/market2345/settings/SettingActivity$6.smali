.class Lcom/market2345/settings/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/SettingActivity;->confirmDelIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/settings/SettingActivity;

.field final synthetic val$isBallIcon:Z


# direct methods
.method constructor <init>(Lcom/market2345/settings/SettingActivity;Z)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    iput-boolean p2, p0, Lcom/market2345/settings/SettingActivity$6;->val$isBallIcon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 510
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$800(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 512
    iget-boolean v0, p0, Lcom/market2345/settings/SettingActivity$6;->val$isBallIcon:Z

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-static {v0, v1}, Lcom/market2345/common/util/Utils;->deleteShortCut(Landroid/content/Context;Z)V

    .line 516
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-virtual {v0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconBall:Z
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$900(Lcom/market2345/settings/SettingActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 517
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    iget-object v3, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconBall:Z
    invoke-static {v3}, Lcom/market2345/settings/SettingActivity;->access$900(Lcom/market2345/settings/SettingActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    # setter for: Lcom/market2345/settings/SettingActivity;->mIconBall:Z
    invoke-static {v0, v2}, Lcom/market2345/settings/SettingActivity;->access$902(Lcom/market2345/settings/SettingActivity;Z)Z

    .line 518
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconBall:Z
    invoke-static {v2}, Lcom/market2345/settings/SettingActivity;->access$900(Lcom/market2345/settings/SettingActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/settings/SettingActivity;->access$1000(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V
    invoke-static {v0, v2, v3}, Lcom/market2345/settings/SettingActivity;->access$300(Lcom/market2345/settings/SettingActivity;ZLandroid/widget/ImageView;)V

    .line 520
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-virtual {v0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u52a0\u901f\u7403\u5feb\u6377\u65b9\u5f0f\u5df2\u5220\u9664"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 531
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 516
    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-static {v0, v2}, Lcom/market2345/common/util/Utils;->deleteShortCut(Landroid/content/Context;Z)V

    .line 525
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-virtual {v0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconSearch:Z
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$1100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 526
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    iget-object v3, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconSearch:Z
    invoke-static {v3}, Lcom/market2345/settings/SettingActivity;->access$1100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    # setter for: Lcom/market2345/settings/SettingActivity;->mIconSearch:Z
    invoke-static {v0, v2}, Lcom/market2345/settings/SettingActivity;->access$1102(Lcom/market2345/settings/SettingActivity;Z)Z

    .line 527
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconSearch:Z
    invoke-static {v2}, Lcom/market2345/settings/SettingActivity;->access$1100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/settings/SettingActivity;->access$1200(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V
    invoke-static {v0, v2, v3}, Lcom/market2345/settings/SettingActivity;->access$300(Lcom/market2345/settings/SettingActivity;ZLandroid/widget/ImageView;)V

    .line 529
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$6;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-virtual {v0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5e94\u7528\u641c\u7d22\u5feb\u6377\u65b9\u5f0f\u5df2\u5220\u9664"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 525
    goto :goto_2
.end method
