.class public Lcom/market2345/download/view/SignatureErrorDialogActivity;
.super Landroid/app/Activity;
.source "SignatureErrorDialogActivity.java"


# static fields
.field public static final KEY_APP_NAME:Ljava/lang/String; = "key.app.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f030045

    invoke-virtual {p0, v3}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 27
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 28
    const-string v3, "key.app.name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    const v3, 0x7f090107

    invoke-virtual {p0, v3}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v3, 0x7f09020e

    invoke-virtual {p0, v3}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0025

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v3, 0x7f090205

    invoke-virtual {p0, v3}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, "button":Landroid/widget/Button;
    const-string v3, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v3, Lcom/market2345/download/view/SignatureErrorDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/market2345/download/view/SignatureErrorDialogActivity$1;-><init>(Lcom/market2345/download/view/SignatureErrorDialogActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method
