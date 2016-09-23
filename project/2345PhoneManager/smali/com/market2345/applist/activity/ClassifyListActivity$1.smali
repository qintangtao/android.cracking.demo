.class Lcom/market2345/applist/activity/ClassifyListActivity$1;
.super Ljava/lang/Object;
.source "ClassifyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/activity/ClassifyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/activity/ClassifyListActivity;


# direct methods
.method constructor <init>(Lcom/market2345/applist/activity/ClassifyListActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    .local v0, "id":I
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # getter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I
    invoke-static {v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$000(Lcom/market2345/applist/activity/ClassifyListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # getter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$100(Lcom/market2345/applist/activity/ClassifyListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I
    invoke-static {v1, v0}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$002(Lcom/market2345/applist/activity/ClassifyListActivity;I)I

    .line 130
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->changeTextSelectStatus()V
    invoke-static {v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$400(Lcom/market2345/applist/activity/ClassifyListActivity;)V

    .line 131
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->changeFragment()V
    invoke-static {v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$500(Lcom/market2345/applist/activity/ClassifyListActivity;)V

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    # getter for: Lcom/market2345/applist/activity/ClassifyListActivity;->categoryId:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$200(Lcom/market2345/applist/activity/ClassifyListActivity;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 105
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x0

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x1

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 111
    :pswitch_3
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x2

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 114
    :pswitch_4
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x3

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 117
    :pswitch_5
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x4

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 120
    :pswitch_6
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x5

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 123
    :pswitch_7
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const/4 v3, 0x6

    # invokes: Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f090064
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
