.class Lcom/market2345/startup/StartupActivity$2;
.super Landroid/os/AsyncTask;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/startup/StartupActivity;->changeState(I)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/startup/StartupActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/startup/StartupActivity;I)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    iput p2, p0, Lcom/market2345/startup/StartupActivity$2;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$200(Lcom/market2345/startup/StartupActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$200(Lcom/market2345/startup/StartupActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/market2345/startup/StartupActivity$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/StartupInfo;

    .line 134
    .local v0, "info":Lcom/market2345/model/StartupInfo;
    iget-object v3, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    iget-boolean v1, v0, Lcom/market2345/model/StartupInfo;->isStartup:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, v0, Lcom/market2345/model/StartupInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/market2345/model/StartupInfo;->bootClass:Ljava/lang/String;

    invoke-static {v3, v1, v4, v5}, Lcom/market2345/startup/StartupUtils;->changeStartupState(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/startup/StartupActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    invoke-virtual {v0}, Lcom/market2345/startup/StartupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$300(Lcom/market2345/startup/StartupActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$300(Lcom/market2345/startup/StartupActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$300(Lcom/market2345/startup/StartupActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 159
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/startup/StartupActivity$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/StartupInfo;

    iget-object v1, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->mInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/startup/StartupActivity;->access$100(Lcom/market2345/startup/StartupActivity;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/market2345/startup/StartupActivity$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/StartupInfo;

    iget-boolean v1, v1, Lcom/market2345/model/StartupInfo;->isStartup:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/market2345/model/StartupInfo;->isStartup:Z

    .line 162
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # getter for: Lcom/market2345/startup/StartupActivity;->adapter:Lcom/market2345/startup/StartupAdapter;
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$400(Lcom/market2345/startup/StartupActivity;)Lcom/market2345/startup/StartupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/startup/StartupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # invokes: Lcom/market2345/startup/StartupActivity;->showDialog()V
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$500(Lcom/market2345/startup/StartupActivity;)V

    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$2;->this$0:Lcom/market2345/startup/StartupActivity;

    # invokes: Lcom/market2345/startup/StartupActivity;->showDialog()V
    invoke-static {v0}, Lcom/market2345/startup/StartupActivity;->access$500(Lcom/market2345/startup/StartupActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/startup/StartupActivity$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
