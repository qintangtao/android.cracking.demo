.class Lcom/market2345/manager/InstallManagerActivity$1;
.super Ljava/lang/Object;
.source "InstallManagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/manager/InstallManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/InstallManagerActivity;


# direct methods
.method constructor <init>(Lcom/market2345/manager/InstallManagerActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/market2345/manager/InstallManagerActivity$1;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$1;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mUserInstalled:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/market2345/manager/InstallManagerActivity;->access$000(Lcom/market2345/manager/InstallManagerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$1;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mSysInstalled:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/market2345/manager/InstallManagerActivity;->access$100(Lcom/market2345/manager/InstallManagerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
