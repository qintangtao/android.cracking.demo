.class Lcom/market2345/settings/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/SettingActivity;->showConfirm(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/settings/SettingActivity;


# direct methods
.method constructor <init>(Lcom/market2345/settings/SettingActivity;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$500(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 459
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    const v3, 0x7f0c0012

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/market2345/settings/SettingActivity;->access$002(Lcom/market2345/settings/SettingActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 461
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progress:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$600(Lcom/market2345/settings/SettingActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    iget-object v1, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/market2345/settings/SettingActivity;->progress:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/market2345/settings/SettingActivity;->access$602(Lcom/market2345/settings/SettingActivity;Landroid/view/View;)Landroid/view/View;

    .line 463
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progress:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/settings/SettingActivity;->access$600(Lcom/market2345/settings/SettingActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 466
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # invokes: Lcom/market2345/settings/SettingActivity;->delImagecaches()V
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$700(Lcom/market2345/settings/SettingActivity;)V

    .line 469
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$4;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 470
    return-void
.end method
