.class Lcom/market2345/dumpclean/CleanSetActivity$1;
.super Ljava/lang/Object;
.source "CleanSetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/CleanSetActivity;->showSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/CleanSetActivity;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/CleanSetActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # setter for: Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I
    invoke-static {v0, p3}, Lcom/market2345/dumpclean/CleanSetActivity;->access$002(Lcom/market2345/dumpclean/CleanSetActivity;I)I

    .line 192
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    const-string v1, "clean_size_set"

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I
    invoke-static {v2}, Lcom/market2345/dumpclean/CleanSetActivity;->access$000(Lcom/market2345/dumpclean/CleanSetActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_size:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetActivity;->access$200(Lcom/market2345/dumpclean/CleanSetActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->arraySize:[Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/dumpclean/CleanSetActivity;->access$100(Lcom/market2345/dumpclean/CleanSetActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->sizeIndex:I
    invoke-static {v2}, Lcom/market2345/dumpclean/CleanSetActivity;->access$000(Lcom/market2345/dumpclean/CleanSetActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$1;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;
    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetActivity;->access$300(Lcom/market2345/dumpclean/CleanSetActivity;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/ListViewDialog;->dismiss()V

    .line 198
    return-void
.end method
