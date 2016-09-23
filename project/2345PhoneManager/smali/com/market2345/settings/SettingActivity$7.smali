.class Lcom/market2345/settings/SettingActivity$7;
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


# direct methods
.method constructor <init>(Lcom/market2345/settings/SettingActivity;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$7;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$7;->this$0:Lcom/market2345/settings/SettingActivity;

    # getter for: Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$800(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 536
    return-void
.end method
