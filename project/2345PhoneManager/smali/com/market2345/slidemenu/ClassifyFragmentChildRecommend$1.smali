.class Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildRecommend.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initHttp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 128
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iget-object v0, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    iget v0, v0, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    move-object v0, p2

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->saveDatas(Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V
    invoke-static {v1, v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$000(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V

    .line 132
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->hasLocal:Z
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$100(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->isNeedChangeDataImmediately:Z
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$200(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    check-cast p2, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    # setter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$302(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 135
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initNeededBeforeFillData()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$400(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    .line 136
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->bodyLay:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$500(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Landroid/widget/LinearLayout;

    move-result-object v1

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->fillDataToViews(Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$600(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Landroid/widget/LinearLayout;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    check-cast p2, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    # setter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$302(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 140
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initNeededBeforeFillData()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$400(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    .line 141
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->bodyLay:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$500(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)Landroid/widget/LinearLayout;

    move-result-object v1

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->fillDataToViews(Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$600(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 145
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->showError()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$700(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    goto :goto_0
.end method
