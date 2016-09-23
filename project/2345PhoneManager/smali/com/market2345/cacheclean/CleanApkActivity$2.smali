.class Lcom/market2345/cacheclean/CleanApkActivity$2;
.super Ljava/lang/Object;
.source "CleanApkActivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanApkActivity;->showDelDialog(Lcom/market2345/cacheclean/ApkInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanApkActivity;

.field final synthetic val$apk:Lcom/market2345/cacheclean/ApkInfo;

.field final synthetic val$size:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanApkActivity;Lcom/market2345/cacheclean/ApkInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    iput-object p2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->val$apk:Lcom/market2345/cacheclean/ApkInfo;

    iput-object p3, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->val$size:Ljava/lang/String;

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

    .line 300
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->val$apk:Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/CleanApkActivity;->delApkFile(Lcom/market2345/cacheclean/ApkInfo;)V

    .line 303
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->format:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$100(Lcom/market2345/cacheclean/CleanApkActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->val$size:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "toast":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    const/16 v3, 0x5dc

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 305
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$200(Lcom/market2345/cacheclean/CleanApkActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$300(Lcom/market2345/cacheclean/CleanApkActivity;)Lcom/market2345/cacheclean/CleanApkAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanApkActivity;->access$400(Lcom/market2345/cacheclean/CleanApkActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v3

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanApkActivity;->access$400(Lcom/market2345/cacheclean/CleanApkActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanApkActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$500(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$600(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$700(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$800(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$2;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->mEmptyTx:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanApkActivity;->access$900(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
