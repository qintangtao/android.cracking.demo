.class Lcom/market2345/dumpclean/main/CleaningFragment$1;
.super Ljava/lang/Object;
.source "CleaningFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/CleaningFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/CleaningFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$1;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
