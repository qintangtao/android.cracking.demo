.class Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 52
    .local v1, "id":I
    const/4 v3, 0x0

    .line 53
    .local v3, "str":Ljava/lang/String;
    const/4 v0, -0x1

    .line 54
    .local v0, "currentIndex":I
    sparse-switch v1, :sswitch_data_0

    .line 101
    :goto_0
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$100(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "categoryid"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v5, v5, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v4, "categoryname"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v5, v5, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v4, "classtype"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$200(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v4, "categorytag"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v5, "tags"

    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "currentindex"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$100(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 57
    :sswitch_0
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x0

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 58
    const/4 v0, 0x0

    .line 59
    goto :goto_0

    .line 61
    :sswitch_1
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x1

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 65
    :sswitch_2
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x2

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 66
    const/4 v0, 0x2

    .line 67
    goto :goto_0

    .line 69
    :sswitch_3
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x3

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 70
    const/4 v0, 0x3

    .line 71
    goto/16 :goto_0

    .line 73
    :sswitch_4
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x4

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 74
    const/4 v0, 0x4

    .line 75
    goto/16 :goto_0

    .line 77
    :sswitch_5
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x5

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 78
    const/4 v0, 0x5

    .line 79
    goto/16 :goto_0

    .line 81
    :sswitch_6
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x6

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 82
    const/4 v0, 0x6

    .line 83
    goto/16 :goto_0

    .line 85
    :sswitch_7
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    const/4 v5, 0x7

    # invokes: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->getChildString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$000(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;I)Ljava/lang/String;

    move-result-object v3

    .line 86
    const/4 v0, 0x7

    .line 87
    goto/16 :goto_0

    .line 89
    :sswitch_8
    const/4 v3, 0x0

    .line 90
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$100(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "categoryid"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v5, v5, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v4, "categoryname"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v5, v5, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v4, "classtype"

    iget-object v5, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->classType:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$200(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v5, "tags"

    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v4, v4, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v6, v6, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    # getter for: Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->access$100(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f090064 -> :sswitch_0
        0x7f090065 -> :sswitch_1
        0x7f090066 -> :sswitch_2
        0x7f090067 -> :sswitch_3
        0x7f090068 -> :sswitch_4
        0x7f090069 -> :sswitch_5
        0x7f09006a -> :sswitch_6
        0x7f09006b -> :sswitch_7
        0x7f09017b -> :sswitch_8
    .end sparse-switch
.end method
