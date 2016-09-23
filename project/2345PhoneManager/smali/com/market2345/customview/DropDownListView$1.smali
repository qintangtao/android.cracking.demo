.class Lcom/market2345/customview/DropDownListView$1;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/customview/DropDownListView;->initDropDownStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/customview/DropDownListView;


# direct methods
.method constructor <init>(Lcom/market2345/customview/DropDownListView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/market2345/customview/DropDownListView$1;->this$0:Lcom/market2345/customview/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/market2345/customview/DropDownListView$1;->this$0:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->onDropDown()V

    .line 233
    return-void
.end method
