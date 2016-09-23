.class Lcom/market2345/dumpclean/main/SilverActivity$3;
.super Ljava/lang/Object;
.source "SilverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/SilverActivity;->scanState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/SilverActivity;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/SilverActivity;I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    iput p2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 252
    iget v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->val$state:I

    packed-switch v2, :pswitch_data_0

    .line 272
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$200(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanningFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$200(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanningFragment;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->val$state:I

    invoke-virtual {v2, v3}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanState(I)V

    .line 276
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # invokes: Lcom/market2345/dumpclean/main/SilverActivity;->setScanSize()V
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$300(Lcom/market2345/dumpclean/main/SilverActivity;)V

    .line 277
    return-void

    .line 254
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$400(Lcom/market2345/dumpclean/main/SilverActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 255
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$400(Lcom/market2345/dumpclean/main/SilverActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;
    invoke-static {v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$600(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/ScanHelp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/dumpclean/ScanHelp;->getDatas()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$502(Lcom/market2345/dumpclean/main/SilverActivity;Ljava/util/List;)Ljava/util/List;

    .line 257
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$500(Lcom/market2345/dumpclean/main/SilverActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$500(Lcom/market2345/dumpclean/main/SilverActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # invokes: Lcom/market2345/dumpclean/main/SilverActivity;->startCleanOverActivity()V
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$100(Lcom/market2345/dumpclean/main/SilverActivity;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    invoke-static {}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->newInstance()Lcom/market2345/dumpclean/main/ScanFinishFragment;

    move-result-object v3

    # setter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;
    invoke-static {v2, v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$702(Lcom/market2345/dumpclean/main/SilverActivity;Lcom/market2345/dumpclean/main/ScanFinishFragment;)Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .line 261
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$600(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/ScanHelp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/dumpclean/ScanHelp;->getTotalSize()J

    move-result-wide v0

    .line 262
    .local v0, "dataSize":J
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$700(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanFinishFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;
    invoke-static {v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$500(Lcom/market2345/dumpclean/main/SilverActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->setDatas(Ljava/util/List;)V

    .line 263
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$700(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanFinishFragment;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->setDataSize(J)V

    .line 264
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0900ec

    iget-object v4, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;
    invoke-static {v4}, Lcom/market2345/dumpclean/main/SilverActivity;->access$700(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanFinishFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 265
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # invokes: Lcom/market2345/dumpclean/main/SilverActivity;->updateBottomBtn()V
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$800(Lcom/market2345/dumpclean/main/SilverActivity;)V

    .line 266
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    const/4 v3, 0x1

    # setter for: Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z
    invoke-static {v2, v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$902(Lcom/market2345/dumpclean/main/SilverActivity;Z)Z

    .line 267
    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity$3;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/SilverActivity;->access$1000(Lcom/market2345/dumpclean/main/SilverActivity;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "scanFinish"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
