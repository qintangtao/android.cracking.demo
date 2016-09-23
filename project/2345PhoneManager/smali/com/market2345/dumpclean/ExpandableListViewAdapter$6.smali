.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getRAMOnClickListener(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;I)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    .line 565
    iget-object v7, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030043

    invoke-static {v7, v8}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    .line 566
    .local v0, "dialog":Landroid/app/Dialog;
    const v7, 0x7f090210

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 567
    .local v3, "dialog_title":Landroid/widget/TextView;
    const v7, 0x7f090212

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 568
    .local v6, "tv_ram_size":Landroid/widget/TextView;
    const v7, 0x7f090213

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 570
    .local v5, "tv_forced_stop":Landroid/widget/TextView;
    const v7, 0x7f090211

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 571
    .local v4, "iv_uninstall_app":Landroid/widget/ImageView;
    const v7, 0x7f090204

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 572
    .local v2, "dialog_btn1":Landroid/widget/Button;
    const v7, 0x7f090205

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 575
    .local v1, "dialog_btn0":Landroid/widget/Button;
    const v7, 0x7f0b0038

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 576
    iget-object v7, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-object v7, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v7, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v7}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v7

    iget v7, v7, Lcom/market2345/model/InstalledApp;->flag:I

    if-nez v7, :cond_0

    .line 578
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v7, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v7}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getSelect()I

    move-result v7

    if-ne v10, v7, :cond_1

    .line 581
    const v7, 0x7f0b00f7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 586
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-wide v8, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    invoke-static {v8, v9}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    new-instance v7, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;

    invoke-direct {v7, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;Landroid/app/Dialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    new-instance v7, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;

    invoke-direct {v7, p0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v7, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;

    invoke-direct {v7, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    new-instance v7, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;

    invoke-direct {v7, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;Landroid/app/Dialog;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 648
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 649
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 650
    return-void

    .line 583
    :cond_1
    const v7, 0x7f0b0024

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
