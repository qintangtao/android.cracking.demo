.class public abstract Lcom/market2345/ui/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/ui/BaseFragment$FragmentCallBack;
    }
.end annotation


# static fields
.field public static final TYPE_GAME:Ljava/lang/String; = "type_game"

.field public static final TYPE_RECOMMEND:Ljava/lang/String; = "type_recommend"

.field public static final TYPE_SOFT:Ljava/lang/String; = "type_soft"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public abstract getSupportTag()Ljava/lang/String;
.end method

.method public isActivityNull()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/market2345/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/market2345/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/statistic2345/log/Statistics;->onPause(Landroid/content/Context;)V

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/market2345/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/statistic2345/log/Statistics;->onResume(Landroid/content/Context;)V

    .line 41
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 43
    return-void
.end method

.method public abstract setSupportTag(Ljava/lang/String;)V
.end method

.method public abstract showSelf()V
.end method
