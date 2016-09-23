.class Lcom/market2345/filebrowser/FileBigImageActivity$3;
.super Ljava/lang/Object;
.source "FileBigImageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileBigImageActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileBigImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$3;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$3;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # setter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v0, p1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$202(Lcom/market2345/filebrowser/FileBigImageActivity;I)I

    .line 123
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$3;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$3;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->currentPosition:I
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$200(Lcom/market2345/filebrowser/FileBigImageActivity;)I

    move-result v1

    # invokes: Lcom/market2345/filebrowser/FileBigImageActivity;->setNameAndPage(I)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$300(Lcom/market2345/filebrowser/FileBigImageActivity;I)V

    .line 124
    return-void
.end method
