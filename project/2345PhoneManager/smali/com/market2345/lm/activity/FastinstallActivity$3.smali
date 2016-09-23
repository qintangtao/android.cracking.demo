.class Lcom/market2345/lm/activity/FastinstallActivity$3;
.super Ljava/lang/Object;
.source "FastinstallActivity.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastinstallActivity;->getUnionApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/FastinstallActivity;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 14
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 162
    move-object/from16 v0, p2

    check-cast v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;

    .line 163
    .local v0, "apps":Lcom/market2345/lm/bean/UnionDownloadAppsInfo;
    iget-object v11, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->url:Ljava/lang/String;

    sget-object v12, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSoftlist()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 167
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$300(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$400(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 169
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSoftlist()Ljava/util/ArrayList;

    move-result-object v4

    .line 170
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 172
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->showError()V
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$500(Lcom/market2345/lm/activity/FastinstallActivity;)V

    .line 243
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v6, "packNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 179
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getGroups()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getGroups()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 182
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getGroups()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/lm/bean/UnionGroups;

    invoke-virtual {v11}, Lcom/market2345/lm/bean/UnionGroups;->getPackages()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "packages":Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "packagesArr":[Ljava/lang/String;
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;
    invoke-static {v11, v12}, Lcom/market2345/lm/activity/FastinstallActivity;->access$602(Lcom/market2345/lm/activity/FastinstallActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v11, v8

    if-ge v1, v11, :cond_2

    .line 190
    aget-object v5, v8, v1

    .line 191
    .local v5, "itemStr":Ljava/lang/String;
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$600(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "i":I
    .end local v5    # "itemStr":Ljava/lang/String;
    .end local v7    # "packages":Ljava/lang/String;
    .end local v8    # "packagesArr":[Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 197
    .local v3, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.market2345"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 199
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "softid":Ljava/lang/String;
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$600(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$600(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 203
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/market2345/lm/bean/UnionAppInfo;->setChecked(Z)V

    .line 204
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    const/4 v12, 0x1

    # setter for: Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z
    invoke-static {v11, v12}, Lcom/market2345/lm/activity/FastinstallActivity;->access$702(Lcom/market2345/lm/activity/FastinstallActivity;Z)Z

    .line 206
    :cond_4
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$800(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    .end local v3    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    .end local v9    # "softid":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/market2345/datacenter/DataCenterObserver;->setmLianMengApk(Ljava/util/ArrayList;)V

    .line 212
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    iget-object v12, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;
    invoke-static {v12}, Lcom/market2345/lm/activity/FastinstallActivity;->access$800(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    # setter for: Lcom/market2345/lm/activity/FastinstallActivity;->totalNum:I
    invoke-static {v11, v12}, Lcom/market2345/lm/activity/FastinstallActivity;->access$902(Lcom/market2345/lm/activity/FastinstallActivity;I)I

    .line 213
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1000(Lcom/market2345/lm/activity/FastinstallActivity;)Lcom/market2345/lm/activity/FastAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastAdapter;->initDataFromSession()V

    .line 214
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1000(Lcom/market2345/lm/activity/FastinstallActivity;)Lcom/market2345/lm/activity/FastAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastAdapter;->notifyDataSetChanged()V

    .line 215
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/market2345/lm/activity/FastinstallActivity;->updateSelectNum(Z)V

    .line 217
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSpreader_name()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "str":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 220
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->setUserName(Ljava/lang/String;)V
    invoke-static {v11, v10}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1100(Lcom/market2345/lm/activity/FastinstallActivity;Ljava/lang/String;)V

    .line 221
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/market2345/lm/util/SPUtils;->setFastUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/market2345/lm/util/SPUtils;->setFastUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    :goto_3
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$700(Lcom/market2345/lm/activity/FastinstallActivity;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 232
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1200(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/widget/ImageView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    const v12, 0x7f09024d

    invoke-virtual {v11, v12}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1200(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/widget/ImageView;

    move-result-object v11

    const v12, 0x7f020189

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 227
    :cond_7
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-virtual {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "\u7528\u6237id\u4e0d\u5b58\u5728"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 240
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    .end local v6    # "packNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "str":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/market2345/lm/activity/FastinstallActivity$3;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->showError()V
    invoke-static {v11}, Lcom/market2345/lm/activity/FastinstallActivity;->access$500(Lcom/market2345/lm/activity/FastinstallActivity;)V

    goto/16 :goto_0
.end method
