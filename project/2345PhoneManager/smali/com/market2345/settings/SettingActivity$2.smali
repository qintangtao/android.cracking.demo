.class Lcom/market2345/settings/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/SettingActivity;->onClick(Landroid/view/View;)V
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
    .line 322
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$2;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$2;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-static {}, Lcom/market2345/util/ShellUtils;->checkRootPermission()Z

    move-result v1

    # setter for: Lcom/market2345/settings/SettingActivity;->mRoot:Z
    invoke-static {v0, v1}, Lcom/market2345/settings/SettingActivity;->access$102(Lcom/market2345/settings/SettingActivity;Z)Z

    .line 326
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$2;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$400(Lcom/market2345/settings/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    return-void
.end method
