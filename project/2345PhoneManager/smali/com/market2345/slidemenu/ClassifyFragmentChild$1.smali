.class Lcom/market2345/slidemenu/ClassifyFragmentChild$1;
.super Ljava/lang/Object;
.source "ClassifyFragmentChild.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChild;->LoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

.field final synthetic val$localContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChild;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    iput-object p2, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->val$localContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 8
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 172
    move-object v0, p2

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyDatas;

    .line 173
    .local v0, "datas":Lcom/market2345/slidemenu/model/ClassifyDatas;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->val$localContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "classify"

    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyDatas;->responseEnty:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v3, "classifytime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    iget-object v4, v0, Lcom/market2345/slidemenu/model/ClassifyDatas;->jObj:Lcom/google/gson/JsonObject;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChild;->fillLocalData(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$000(Lcom/market2345/slidemenu/ClassifyFragmentChild;Ljava/lang/Object;)V

    .line 197
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$100(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoData:Landroid/view/View;
    invoke-static {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$200(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoDataRetryButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$400(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;

    invoke-direct {v4, p0}, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;-><init>(Lcom/market2345/slidemenu/ClassifyFragmentChild$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
