.class public Lcom/market2345/detail/ReportDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ReportDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/detail/ReportDialogFragment$OnReportListener;
    }
.end annotation


# instance fields
.field private cbHasVirus:Landroid/widget/CheckBox;

.field private cbLeak:Landroid/widget/CheckBox;

.field private cbNotDownload:Landroid/widget/CheckBox;

.field private cbNotInstall:Landroid/widget/CheckBox;

.field private cbNotUse:Landroid/widget/CheckBox;

.field private cbOldVersion:Landroid/widget/CheckBox;

.field private cbPay:Landroid/widget/CheckBox;

.field private cbViolence:Landroid/widget/CheckBox;

.field private etContacts:Landroid/widget/EditText;

.field private etReportContent:Landroid/widget/EditText;

.field private listener:Lcom/market2345/detail/ReportDialogFragment$OnReportListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 130
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 61
    const v0, 0x7f0900fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotDownload:Landroid/widget/CheckBox;

    .line 62
    const v0, 0x7f0900fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotInstall:Landroid/widget/CheckBox;

    .line 63
    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotUse:Landroid/widget/CheckBox;

    .line 64
    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbOldVersion:Landroid/widget/CheckBox;

    .line 65
    const v0, 0x7f0900ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbPay:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f090100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbHasVirus:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f090101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbLeak:Landroid/widget/CheckBox;

    .line 68
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->cbViolence:Landroid/widget/CheckBox;

    .line 69
    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->etReportContent:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f090104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/detail/ReportDialogFragment;->etContacts:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f090106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 80
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotDownload:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotInstall:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbNotUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbOldVersion:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    const-string v1, "4,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbPay:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    const-string v1, "5,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbHasVirus:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    const-string v1, "6,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbLeak:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    const-string v1, "7,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->cbViolence:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    const-string v1, "8,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->etReportContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u9009\u62e9\u4e3e\u62a5\u539f\u56e0\u6216\u8005\u586b\u5199\u53cd\u9988\u5efa\u8bae"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 114
    :cond_9
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->listener:Lcom/market2345/detail/ReportDialogFragment$OnReportListener;

    if-eqz v1, :cond_a

    .line 115
    iget-object v1, p0, Lcom/market2345/detail/ReportDialogFragment;->listener:Lcom/market2345/detail/ReportDialogFragment$OnReportListener;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/detail/ReportDialogFragment;->etReportContent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/detail/ReportDialogFragment;->etContacts:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/market2345/detail/ReportDialogFragment$OnReportListener;->onReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x7f090105
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/market2345/detail/ReportDialogFragment;->initView(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 55
    .local v0, "w":I
    add-int/lit8 v0, v0, -0x1e

    .line 57
    invoke-virtual {p0}, Lcom/market2345/detail/ReportDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public setOnReportListener(Lcom/market2345/detail/ReportDialogFragment$OnReportListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/detail/ReportDialogFragment$OnReportListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/market2345/detail/ReportDialogFragment;->listener:Lcom/market2345/detail/ReportDialogFragment$OnReportListener;

    .line 128
    return-void
.end method
