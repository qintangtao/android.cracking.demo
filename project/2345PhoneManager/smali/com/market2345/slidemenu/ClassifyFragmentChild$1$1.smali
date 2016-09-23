.class Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;
.super Ljava/lang/Object;
.source "ClassifyFragmentChild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->callback(ILcom/market2345/httpnew/ResponseCluster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/slidemenu/ClassifyFragmentChild$1;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChild$1;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;->this$1:Lcom/market2345/slidemenu/ClassifyFragmentChild$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;->this$1:Lcom/market2345/slidemenu/ClassifyFragmentChild$1;

    iget-object v0, v0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChild;->LoadData()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$300(Lcom/market2345/slidemenu/ClassifyFragmentChild;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;->this$1:Lcom/market2345/slidemenu/ClassifyFragmentChild$1;

    iget-object v0, v0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChild;->mNoData:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$200(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1$1;->this$1:Lcom/market2345/slidemenu/ClassifyFragmentChild$1;

    iget-object v0, v0, Lcom/market2345/slidemenu/ClassifyFragmentChild$1;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChild;

    # getter for: Lcom/market2345/slidemenu/ClassifyFragmentChild;->progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->access$100(Lcom/market2345/slidemenu/ClassifyFragmentChild;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    return-void
.end method
