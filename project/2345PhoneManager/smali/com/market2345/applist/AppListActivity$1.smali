.class Lcom/market2345/applist/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListActivity;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/market2345/applist/AppListActivity$1;->this$0:Lcom/market2345/applist/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 90
    :goto_0
    :sswitch_0
    return-void

    .line 76
    :sswitch_1
    iget-object v1, p0, Lcom/market2345/applist/AppListActivity$1;->this$0:Lcom/market2345/applist/AppListActivity;

    invoke-virtual {v1}, Lcom/market2345/applist/AppListActivity;->finish()V

    goto :goto_0

    .line 79
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/applist/AppListActivity$1;->this$0:Lcom/market2345/applist/AppListActivity;

    const-class v2, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/market2345/applist/AppListActivity$1;->this$0:Lcom/market2345/applist/AppListActivity;

    invoke-virtual {v1, v0}, Lcom/market2345/applist/AppListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_1
        0x7f090130 -> :sswitch_2
        0x7f0903e6 -> :sswitch_0
    .end sparse-switch
.end method
