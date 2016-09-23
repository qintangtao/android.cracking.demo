.class Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public all:Landroid/widget/RelativeLayout;

.field public imageTitle:Landroid/widget/ImageView;

.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;

.field public text3:Landroid/widget/TextView;

.field public text4:Landroid/widget/TextView;

.field public text5:Landroid/widget/TextView;

.field public text6:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;->this$0:Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .param p2, "x1"    # Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem$ItemHolder;-><init>(Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;)V

    return-void
.end method
