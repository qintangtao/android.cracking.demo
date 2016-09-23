.class Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFragmentChild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalAdapter"
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChild;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;>;"
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->data:Ljava/util/ArrayList;

    .line 213
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    iget-object v1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$LocalAdapter;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->fillView(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
