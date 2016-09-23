.class Lcom/market2345/slidemenu/ManagementFragment2$3;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 240
    packed-switch p3, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1200(Lcom/market2345/slidemenu/ManagementFragment2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->activityClass:Ljava/lang/Class;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->access$1300(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->startActivity(Landroid/content/Intent;)V

    .line 281
    :goto_1
    return-void

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Update_Uninstall"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Clean"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_File"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Boot"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_5
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Receive"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_6
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->changeConnectionStatus()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1000(Lcom/market2345/slidemenu/ManagementFragment2;)V

    .line 258
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/ConnPCGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->startActivity(Landroid/content/Intent;)V

    .line 265
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Connect"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 261
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conn_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 263
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conn_mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 268
    :pswitch_7
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$3;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Manage_Setting"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
