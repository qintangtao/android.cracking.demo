.class Lcom/market2345/dumpclean/FileDetailsActivity$1;
.super Ljava/lang/Object;
.source "FileDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/FileDetailsActivity;->showOpenFileDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/FileDetailsActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/market2345/dumpclean/FileDetailsActivity$1;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    iput-object p2, p0, Lcom/market2345/dumpclean/FileDetailsActivity$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity$1;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity$1;->val$file:Ljava/io/File;

    # invokes: Lcom/market2345/dumpclean/FileDetailsActivity;->chooseOver(ILjava/io/File;)V
    invoke-static {v0, p3, v1}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$000(Lcom/market2345/dumpclean/FileDetailsActivity;ILjava/io/File;)V

    .line 169
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity$1;->this$0:Lcom/market2345/dumpclean/FileDetailsActivity;

    # getter for: Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;
    invoke-static {v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->access$100(Lcom/market2345/dumpclean/FileDetailsActivity;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/ListViewDialog;->dismiss()V

    .line 170
    return-void
.end method
