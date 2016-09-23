.class public Lcom/market2345/dumpclean/main/AddTrustDialog;
.super Landroid/app/Dialog;
.source "AddTrustDialog.java"


# instance fields
.field private btn_add_trust:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private iv_icon:Landroid/widget/ImageView;

.field private tv_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setContentView(I)V

    .line 36
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->tv_name:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f090203

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->btn_add_trust:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public setBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->btn_add_trust:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->btn_add_trust:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->btn_add_trust:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->tv_name:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/market2345/dumpclean/main/AddTrustDialog;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method
