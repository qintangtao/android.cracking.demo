.class Lcom/market2345/applist/ImagePagerAdapter$1;
.super Ljava/lang/Object;
.source "ImagePagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/ImagePagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/ImagePagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/applist/ImagePagerAdapter;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->this$0:Lcom/market2345/applist/ImagePagerAdapter;

    iput p2, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->this$0:Lcom/market2345/applist/ImagePagerAdapter;

    # getter for: Lcom/market2345/applist/ImagePagerAdapter;->topics:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/applist/ImagePagerAdapter;->access$200(Lcom/market2345/applist/ImagePagerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->this$0:Lcom/market2345/applist/ImagePagerAdapter;

    iget v3, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->val$position:I

    # invokes: Lcom/market2345/applist/ImagePagerAdapter;->getPosition(I)I
    invoke-static {v2, v3}, Lcom/market2345/applist/ImagePagerAdapter;->access$100(Lcom/market2345/applist/ImagePagerAdapter;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/TopicItem;

    .line 85
    .local v0, "topicItem":Lcom/market2345/model/TopicItem;
    iget-object v1, p0, Lcom/market2345/applist/ImagePagerAdapter$1;->this$0:Lcom/market2345/applist/ImagePagerAdapter;

    # getter for: Lcom/market2345/applist/ImagePagerAdapter;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/applist/ImagePagerAdapter;->access$300(Lcom/market2345/applist/ImagePagerAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/topic/TopicUtils;->startTopic(Lcom/market2345/model/TopicItem;Ljava/lang/String;)V

    .line 86
    return-void
.end method
