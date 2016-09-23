.class public Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;
.super Landroid/widget/RelativeLayout;
.source "DialogSimpleTitleMessageSingleButtonView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private dialog_btn0:Landroid/widget/Button;

.field private dialog_message:Landroid/widget/TextView;

.field private dialog_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->initView()V

    .line 38
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030045

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const v1, 0x7f090107

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_title:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f09020e

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_message:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_btn0:Landroid/widget/Button;

    .line 59
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 44
    invoke-direct {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->initView()V

    .line 45
    return-void
.end method

.method public setIcon(I)V
    .locals 3
    .param p1, "iconId"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageStrId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_message:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_btn0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->dialog_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
