.class Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManagementFragment2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ManagementFragment2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;>;"
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->context:Landroid/content/Context;

    .line 579
    iput-object p3, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->data:Ljava/util/List;

    .line 580
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 581
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 595
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 601
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030074

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 602
    const v3, 0x7f0900ef

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 603
    .local v0, "iv_icon":Landroid/widget/ImageView;
    const v3, 0x7f09009f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 604
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    .line 605
    .local v1, "mode":Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
    # getter for: Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->title:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->access$2400(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    # getter for: Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->iconId:I
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->access$2500(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    return-object p2
.end method
