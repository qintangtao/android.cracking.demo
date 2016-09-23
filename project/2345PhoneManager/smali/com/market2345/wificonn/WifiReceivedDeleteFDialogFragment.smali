.class public Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "WifiReceivedDeleteFDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final RECEIVED_DEL_FILES:Ljava/lang/String; = "received_del_files"

.field public static final RECEIVED_DEL_IDS:Ljava/lang/String; = "received_del_ids"


# instance fields
.field private dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

.field private deleteFile:Landroid/widget/CheckBox;

.field private files:[Ljava/lang/String;

.field private ids:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->dismiss()V

    .line 82
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->ids:[I

    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->files:[Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->deleteFile:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->deleteFilesFromPC([I[Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x7f090205
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v5, 0x7f0300da

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    .local v3, "dialogTitle":Landroid/widget/TextView;
    const v5, 0x7f090204

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 50
    .local v2, "btn1":Landroid/widget/Button;
    const v5, 0x7f090205

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 51
    .local v1, "btn0":Landroid/widget/Button;
    const v5, 0x7f0b0003

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 52
    const v5, 0x7f0b018c

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 53
    const v5, 0x7f0b00f6

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v5, 0x7f090434

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->deleteFile:Landroid/widget/CheckBox;

    .line 58
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->dataCenter:Lcom/market2345/datacenter/DataCenterObserver;

    .line 60
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "received_del_ids"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->ids:[I

    .line 62
    const-string v5, "received_del_files"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->files:[Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->ids:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 66
    const v5, 0x7f09020e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0180

    invoke-virtual {p0, v6}, Lcom/market2345/wificonn/WifiReceivedDeleteFDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    return-object v4
.end method
