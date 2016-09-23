.class Lcom/market2345/cacheclean/CleanRamAppAdapter$1;
.super Ljava/lang/Object;
.source "CleanRamAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanRamAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanRamAppAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanRamAppAdapter;I)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    iput p2, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanRamAppAdapter;->listener:Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanRamAppAdapter;->access$000(Lcom/market2345/cacheclean/CleanRamAppAdapter;)Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanRamAppAdapter;->listener:Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanRamAppAdapter;->access$000(Lcom/market2345/cacheclean/CleanRamAppAdapter;)Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanRamAppAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;->onClick(I)V

    .line 94
    :cond_0
    return-void
.end method
