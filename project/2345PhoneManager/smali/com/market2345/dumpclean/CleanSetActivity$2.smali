.class Lcom/market2345/dumpclean/CleanSetActivity$2;
.super Ljava/lang/Object;
.source "CleanSetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/CleanSetActivity;->showTimeDialog()V
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
    .line 210
    iput-object p1, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 215
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # setter for: Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I
    invoke-static {v0, p3}, Lcom/market2345/dumpclean/CleanSetActivity;->access$402(Lcom/market2345/dumpclean/CleanSetActivity;I)I

    .line 216
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    const-string v1, "clean_time_set"

    iget-object v2, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->timeIndex:I
    invoke-static {v2}, Lcom/market2345/dumpclean/CleanSetActivity;->access$400(Lcom/market2345/dumpclean/CleanSetActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->tv_clean_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetActivity;->access$600(Lcom/market2345/dumpclean/CleanSetActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->arrayTimes:[Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/dumpclean/CleanSetActivity;->access$500(Lcom/market2345/dumpclean/CleanSetActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setAlertTime(Landroid/content/Context;J)V

    .line 222
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    invoke-static {v0}, Lcom/market2345/dumpclean/alert/CleanAlert;->initAlert(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanSetActivity$2;->this$0:Lcom/market2345/dumpclean/CleanSetActivity;

    # getter for: Lcom/market2345/dumpclean/CleanSetActivity;->dialogTime:Lcom/market2345/dumpclean/ListViewDialog;
    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetActivity;->access$700(Lcom/market2345/dumpclean/CleanSetActivity;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/ListViewDialog;->dismiss()V

    .line 224
    return-void
.end method
