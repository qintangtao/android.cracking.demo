.class public Lcom/market2345/common/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const v0, 0x7f0c0012

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-direct {p0}, Lcom/market2345/common/dialog/LoadingDialog;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-direct {p0}, Lcom/market2345/common/dialog/LoadingDialog;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    invoke-direct {p0}, Lcom/market2345/common/dialog/LoadingDialog;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/common/dialog/LoadingDialog;->mMessage:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, v0}, Lcom/market2345/common/dialog/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/common/dialog/LoadingDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/common/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/common/dialog/LoadingDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
