.class public Lcom/market2345/detail/DetailActivity$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/detail/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/DetailActivity;


# direct methods
.method public constructor <init>(Lcom/market2345/detail/DetailActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    .line 597
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 598
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/detail/DetailActivity;->access$200(Lcom/market2345/detail/DetailActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->getItem(I)Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/market2345/ui/BaseFragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 614
    packed-switch p1, :pswitch_data_0

    .line 638
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 616
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    invoke-static {}, Lcom/market2345/detail/SubDetailFragment;->newInstance()Lcom/market2345/detail/SubDetailFragment;

    move-result-object v2

    # setter for: Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;
    invoke-static {v1, v2}, Lcom/market2345/detail/DetailActivity;->access$302(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/detail/SubDetailFragment;

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$400(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$500(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/SingleAppResp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 619
    const-string v1, "app"

    iget-object v2, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;
    invoke-static {v2}, Lcom/market2345/detail/DetailActivity;->access$400(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/App;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 620
    const-string v1, "appDetail"

    iget-object v2, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;
    invoke-static {v2}, Lcom/market2345/detail/DetailActivity;->access$500(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/SingleAppResp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 621
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$300(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubDetailFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/market2345/detail/SubDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$300(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubDetailFragment;

    move-result-object v1

    goto :goto_0

    .line 625
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    invoke-static {}, Lcom/market2345/detail/SubCommentsFragment;->newInstance()Lcom/market2345/detail/SubCommentsFragment;

    move-result-object v2

    # setter for: Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;
    invoke-static {v1, v2}, Lcom/market2345/detail/DetailActivity;->access$602(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/SubCommentsFragment;

    .line 626
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 627
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "sid"

    iget-object v2, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->sid:I
    invoke-static {v2}, Lcom/market2345/detail/DetailActivity;->access$700(Lcom/market2345/detail/DetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$600(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubCommentsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/market2345/detail/SubCommentsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 629
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$600(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubCommentsFragment;

    move-result-object v1

    goto :goto_0

    .line 631
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    invoke-static {}, Lcom/market2345/detail/SubGiftFragment;->newInstance()Lcom/market2345/detail/SubGiftFragment;

    move-result-object v2

    # setter for: Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;
    invoke-static {v1, v2}, Lcom/market2345/detail/DetailActivity;->access$802(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubGiftFragment;)Lcom/market2345/detail/SubGiftFragment;

    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "key.soft.id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;
    invoke-static {v3}, Lcom/market2345/detail/DetailActivity;->access$400(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/App;

    move-result-object v3

    iget v3, v3, Lcom/market2345/model/App;->sid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$800(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubGiftFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/market2345/detail/SubGiftFragment;->setArguments(Landroid/os/Bundle;)V

    .line 635
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$800(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubGiftFragment;

    move-result-object v1

    goto/16 :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/detail/DetailActivity;->access$200(Lcom/market2345/detail/DetailActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
