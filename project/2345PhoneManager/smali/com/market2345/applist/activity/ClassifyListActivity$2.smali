.class Lcom/market2345/applist/activity/ClassifyListActivity$2;
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
    .line 395
    iput-object p1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$2;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 416
    :goto_0
    :sswitch_0
    return-void

    .line 403
    :sswitch_1
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$2;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    invoke-virtual {v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->finish()V

    goto :goto_0

    .line 406
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$2;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    const-class v2, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity$2;->this$0:Lcom/market2345/applist/activity/ClassifyListActivity;

    invoke-virtual {v1, v0}, Lcom/market2345/applist/activity/ClassifyListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_1
        0x7f090130 -> :sswitch_2
        0x7f0903e6 -> :sswitch_0
    .end sparse-switch
.end method
