.class Lcom/market2345/startup/StartupActivity$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/startup/StartupActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/startup/StartupActivity;


# direct methods
.method constructor <init>(Lcom/market2345/startup/StartupActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/market2345/startup/StartupActivity$1;->this$0:Lcom/market2345/startup/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/startup/StartupActivity$1;->this$0:Lcom/market2345/startup/StartupActivity;

    # invokes: Lcom/market2345/startup/StartupActivity;->changeState(I)V
    invoke-static {v0, p3}, Lcom/market2345/startup/StartupActivity;->access$000(Lcom/market2345/startup/StartupActivity;I)V

    .line 111
    return-void
.end method
