.class public abstract Lcom/market2345/slidemenu/LoadingFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "LoadingFragment.java"


# instance fields
.field protected loadingBar:Landroid/widget/ProgressBar;

.field protected retry:Landroid/widget/TextView;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/slidemenu/LoadingFragment;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/LoadingFragment;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/market2345/slidemenu/LoadingFragment;->tag:Ljava/lang/String;

    .line 24
    return-void
.end method
