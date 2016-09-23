.class Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;
.super Ljava/lang/Object;
.source "ManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment;


# direct methods
.method private constructor <init>(Lcom/market2345/slidemenu/ManagementFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/slidemenu/ManagementFragment;Lcom/market2345/slidemenu/ManagementFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/slidemenu/ManagementFragment;
    .param p2, "x1"    # Lcom/market2345/slidemenu/ManagementFragment$1;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;-><init>(Lcom/market2345/slidemenu/ManagementFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 199
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 202
    :sswitch_0
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_Update"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_Uninstall"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :sswitch_2
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_File"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/filebrowser/FileCategoryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    :sswitch_3
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_Boot"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/startup/StartupActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :sswitch_4
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_Clean"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/dumpclean/StartCleanActUtil;->startCleanActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 226
    :sswitch_5
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manager_Receive"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment$LocalClickListener;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/ManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090305 -> :sswitch_0
        0x7f09030b -> :sswitch_1
        0x7f090310 -> :sswitch_2
        0x7f090313 -> :sswitch_3
        0x7f090316 -> :sswitch_4
        0x7f09031a -> :sswitch_5
    .end sparse-switch
.end method
