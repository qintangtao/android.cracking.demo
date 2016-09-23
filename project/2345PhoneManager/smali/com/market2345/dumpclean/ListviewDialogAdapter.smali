.class public Lcom/market2345/dumpclean/ListviewDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListviewDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private selectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->data:[Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->selectIndex:I

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->data:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;-><init>(Lcom/market2345/dumpclean/ListviewDialogAdapter;)V

    .line 49
    .local v0, "hold":Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;
    const v1, 0x7f09009f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f09021b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->cbox:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->data:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget v1, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->selectIndex:I

    if-ne p1, v1, :cond_1

    .line 58
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->cbox:Landroid/widget/ImageView;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    :goto_1
    return-object p2

    .line 53
    .end local v0    # "hold":Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;

    .restart local v0    # "hold":Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/dumpclean/ListviewDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->tv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 66
    iget-object v1, v0, Lcom/market2345/dumpclean/ListviewDialogAdapter$ViewHold;->cbox:Landroid/widget/ImageView;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
