.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildOfChildOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 464
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030042

    invoke-static {v8, v9}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    .line 466
    .local v0, "dialog":Landroid/app/Dialog;
    const v8, 0x7f09020d

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 467
    const v8, 0x7f090207

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 469
    const v8, 0x7f090107

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 470
    .local v6, "dialog_title":Landroid/widget/TextView;
    const v8, 0x7f09020e

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 471
    .local v4, "dialog_message":Landroid/widget/TextView;
    const v8, 0x7f0901b5

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 472
    .local v5, "dialog_size":Landroid/widget/TextView;
    const v8, 0x7f09020f

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 473
    .local v1, "dialogCheckbox":Landroid/widget/TextView;
    new-instance v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;

    invoke-direct {v8, p0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v8, 0x7f090204

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 485
    .local v3, "dialog_btn1":Landroid/widget/Button;
    const v8, 0x7f090205

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 486
    .local v2, "dialog_btn0":Landroid/widget/Button;
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v8, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v7, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->fileTip:Ljava/lang/String;

    .line 488
    .local v7, "tip":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 489
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :goto_0
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b014e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v12, v12, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    invoke-static {v12, v13}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b004e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v12, v12, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    invoke-static {v12}, Lcom/market2345/dumpclean/main/Util;->getFileListCount(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    new-instance v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;

    invoke-direct {v8, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;Landroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$3;

    invoke-direct {v8, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$3;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;Landroid/app/Dialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 520
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 521
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 522
    return-void

    .line 491
    :cond_0
    iget-object v8, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0036

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
