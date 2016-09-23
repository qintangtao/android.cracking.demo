.class public Lcom/market2345/home/BaseTitleActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "BaseTitleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/market2345/home/BaseTitleActivity;->finish()V

    .line 47
    return-void
.end method

.method protected setActivityTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 33
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/market2345/home/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    :cond_0
    return-void
.end method

.method protected setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/market2345/home/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_0
    return-void
.end method
