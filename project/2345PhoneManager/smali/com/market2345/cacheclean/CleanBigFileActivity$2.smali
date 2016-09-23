.class Lcom/market2345/cacheclean/CleanBigFileActivity$2;
.super Ljava/lang/Object;
.source "CleanBigFileActivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanBigFileActivity;->showDialog(Lcom/market2345/cacheclean/BigFileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

.field final synthetic val$file:Lcom/market2345/cacheclean/BigFileInfo;

.field final synthetic val$size:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanBigFileActivity;Lcom/market2345/cacheclean/BigFileInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    iput-object p2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->val$file:Lcom/market2345/cacheclean/BigFileInfo;

    iput-object p3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->val$size:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 404
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 405
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$000(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$000(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->val$file:Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/CleanBigFileActivity;->delBigFile(Lcom/market2345/cacheclean/BigFileInfo;)V

    .line 408
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->format:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$100(Lcom/market2345/cacheclean/CleanBigFileActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->val$size:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "toast":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    const/16 v3, 0x5dc

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 410
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$000(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$000(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$200(Lcom/market2345/cacheclean/CleanBigFileActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$300(Lcom/market2345/cacheclean/CleanBigFileActivity;)Lcom/market2345/cacheclean/CleanBigFileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->notifyDataSetChanged()V

    .line 415
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$400(Lcom/market2345/cacheclean/CleanBigFileActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$400(Lcom/market2345/cacheclean/CleanBigFileActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanBigFileActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$500(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$600(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$700(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$800(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$2;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanBigFileActivity;->access$900(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
