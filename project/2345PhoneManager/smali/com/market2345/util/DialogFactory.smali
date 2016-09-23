.class public Lcom/market2345/util/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 23
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0c0012

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 25
    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "btn1"    # Ljava/lang/String;
    .param p5, "btn0"    # Ljava/lang/String;
    .param p6, "list1"    # Landroid/view/View$OnClickListener;
    .param p7, "list0"    # Landroid/view/View$OnClickListener;

    .prologue
    const v7, 0x7f0c0012

    .line 28
    const v6, 0x7f030044

    if-ne v6, p1, :cond_2

    .line 29
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 31
    const v6, 0x7f090107

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 32
    .local v3, "dialogTitle":Landroid/widget/TextView;
    const v6, 0x7f09020e

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, "dialogMessage":Landroid/widget/TextView;
    const v6, 0x7f090205

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 34
    .local v5, "positiveBtn":Landroid/widget/Button;
    const v6, 0x7f090204

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 35
    .local v4, "negativeBtn":Landroid/widget/Button;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v5, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v4, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    if-eqz p6, :cond_0

    .line 40
    invoke-virtual {v5, p6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_0
    if-eqz p7, :cond_1

    .line 43
    invoke-virtual {v4, p7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v1, v0

    .line 49
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "dialogMessage":Landroid/widget/TextView;
    .end local v3    # "dialogTitle":Landroid/widget/TextView;
    .end local v4    # "negativeBtn":Landroid/widget/Button;
    .end local v5    # "positiveBtn":Landroid/widget/Button;
    .local v1, "dialog":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 47
    .end local v1    # "dialog":Ljava/lang/Object;
    :cond_2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    move-object v1, v0

    .line 49
    .restart local v1    # "dialog":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static createListViewDialog(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/market2345/dumpclean/ListViewDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 59
    new-instance v0, Lcom/market2345/dumpclean/ListViewDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ListViewDialog;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public static createTrustDialog(Landroid/content/Context;)Lcom/market2345/dumpclean/main/AddTrustDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/AddTrustDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
