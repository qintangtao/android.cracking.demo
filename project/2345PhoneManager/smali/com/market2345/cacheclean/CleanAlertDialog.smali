.class public Lcom/market2345/cacheclean/CleanAlertDialog;
.super Landroid/app/Dialog;
.source "CleanAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnOk:Landroid/widget/Button;

.field private mListenerCancel:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

.field private mListenerOK:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTxtContent:Landroid/widget/TextView;

.field private mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    new-instance v0, Lcom/market2345/cacheclean/CleanAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanAlertDialog$1;-><init>(Lcom/market2345/cacheclean/CleanAlertDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    new-instance v0, Lcom/market2345/cacheclean/CleanAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanAlertDialog$1;-><init>(Lcom/market2345/cacheclean/CleanAlertDialog;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanAlertDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanAlertDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected initUI()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mTxtTitle:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mTxtContent:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnOk:Landroid/widget/Button;

    .line 53
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnCancel:Landroid/widget/Button;

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->setContentView(I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanAlertDialog;->initUI()V

    .line 46
    return-void
.end method

.method public setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    .line 79
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mTxtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    .line 71
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mBtnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanAlertDialog;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
