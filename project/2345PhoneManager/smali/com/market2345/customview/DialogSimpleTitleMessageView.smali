.class public Lcom/market2345/customview/DialogSimpleTitleMessageView;
.super Landroid/widget/RelativeLayout;
.source "DialogSimpleTitleMessageView.java"


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private final context:Landroid/content/Context;

.field private dialog_btn0:Landroid/widget/Button;

.field private dialog_btn1:Landroid/widget/Button;

.field private dialog_message:Landroid/widget/TextView;

.field private dialog_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->context:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->initView()V

    .line 43
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030044

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v1, 0x7f090107

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_title:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f09020e

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_message:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f090205

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    .line 64
    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    .line 65
    const v1, 0x7f09020f

    invoke-virtual {p0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    .line 67
    return-void
.end method


# virtual methods
.method public displayCheck(ZLjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public displayCheck(ZZLjava/lang/String;I)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "defChecked"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "textColor"    # I

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    invoke-direct {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->initView()V

    .line 50
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 3
    .param p1, "iconId"    # I

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageStrId"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_message:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "textColor"    # I
    .param p4, "bgRes"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "textColor"    # I
    .param p4, "bgRes"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_btn0:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/market2345/customview/DialogSimpleTitleMessageView;->dialog_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
