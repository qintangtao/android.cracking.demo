.class public Lcom/market2345/cacheclean/CleanCacheItmeDialog;
.super Landroid/app/Dialog;
.source "CleanCacheItmeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private box:Landroid/widget/CheckBox;

.field private mBtnOk:Landroid/widget/Button;

.field private mListenerOK:Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;-><init>(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;-><init>(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->box:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected initUI()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mTxtTitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->box:Landroid/widget/CheckBox;

    .line 47
    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mBtnOk:Landroid/widget/Button;

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->setContentView(I)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->initUI()V

    .line 41
    return-void
.end method

.method public setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

    .line 60
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mBtnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
