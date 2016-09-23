.class public Lcom/market2345/cacheclean/CleanBigFileDialog;
.super Landroid/app/Dialog;
.source "CleanBigFileDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnOk:Landroid/widget/Button;

.field private mListenerCancel:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

.field private mListenerOK:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTxName:Landroid/widget/TextView;

.field private mTxSize:Landroid/widget/TextView;

.field private mTxposition:Landroid/widget/TextView;

.field private mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance v0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanBigFileDialog$1;-><init>(Lcom/market2345/cacheclean/CleanBigFileDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance v0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanBigFileDialog$1;-><init>(Lcom/market2345/cacheclean/CleanBigFileDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected initUI()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxtTitle:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0901b2

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxName:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxSize:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxposition:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnOk:Landroid/widget/Button;

    .line 60
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnCancel:Landroid/widget/Button;

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setContentView(I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->initUI()V

    .line 50
    return-void
.end method

.method public setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    .line 96
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    .line 88
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mBtnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxposition:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileDialog;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method
