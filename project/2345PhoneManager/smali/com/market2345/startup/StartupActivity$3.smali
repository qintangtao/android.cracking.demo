.class Lcom/market2345/startup/StartupActivity$3;
.super Landroid/os/AsyncTask;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/startup/StartupActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/startup/StartupActivity;


# direct methods
.method constructor <init>(Lcom/market2345/startup/StartupActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/startup/StartupActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    invoke-static {v1}, Lcom/market2345/startup/StartupUtils;->getStartupLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/market2345/startup/StartupActivity;->access$102(Lcom/market2345/startup/StartupActivity;Ljava/util/List;)Ljava/util/List;

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/startup/StartupActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->rlLoading:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$700(Lcom/market2345/startup/StartupActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->rlStartupCount:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$800(Lcom/market2345/startup/StartupActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$900(Lcom/market2345/startup/StartupActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->tvStartupCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$1000(Lcom/market2345/startup/StartupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    new-instance v1, Lcom/market2345/startup/StartupAdapter;

    iget-object v2, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    iget-object v3, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v3}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/market2345/startup/StartupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v0, v1}, Lcom/market2345/startup/StartupActivity;->access$402(Lcom/market2345/startup/StartupActivity;Lcom/market2345/startup/StartupAdapter;)Lcom/market2345/startup/StartupAdapter;

    .line 217
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->lvSoftware:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$900(Lcom/market2345/startup/StartupActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/startup/StartupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    # invokes: Lcom/market2345/startup/StartupActivity;->hasNoData(Z)V
    invoke-static {v0, v2}, Lcom/market2345/startup/StartupActivity;->access$600(Lcom/market2345/startup/StartupActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$3;->this$0:Lcom/market2345/startup/StartupActivity;

    const/4 v1, 0x1

    # invokes: Lcom/market2345/startup/StartupActivity;->hasNoData(Z)V
    invoke-static {v0, v1}, Lcom/market2345/startup/StartupActivity;->access$600(Lcom/market2345/startup/StartupActivity;Z)V

    .line 194
    return-void
.end method
