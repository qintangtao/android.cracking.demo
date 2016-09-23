.class Lcom/market2345/dumpclean/FileDetailsActivity$2;
.super Ljava/lang/Object;
.source "FileDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/FileDetailsActivity;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/FileDetailsActivity;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/FileDetailsActivity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/market2345/dumpclean/FileDetailsActivity$2;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "tagPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity$2;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    # getter for: Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$200(Lcom/market2345/dumpclean/FileDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 237
    .local v0, "indexOfChild":I
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity$2;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    # getter for: Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$200(Lcom/market2345/dumpclean/FileDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/FileDetailsActivity$2;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    # getter for: Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$200(Lcom/market2345/dumpclean/FileDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 238
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity$2;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/market2345/dumpclean/FileDetailsActivity;->updateUi(Ljava/io/File;)V
    invoke-static {v2, v3}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$300(Lcom/market2345/dumpclean/FileDetailsActivity;Ljava/io/File;)V

    .line 240
    return-void
.end method
