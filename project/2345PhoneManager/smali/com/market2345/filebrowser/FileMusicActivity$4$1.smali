.class Lcom/market2345/filebrowser/FileMusicActivity$4$1;
.super Ljava/lang/Object;
.source "FileMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity$4;->setAudio(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/filebrowser/FileMusicActivity$4;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileMusicActivity$4;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->this$1:Lcom/market2345/filebrowser/FileMusicActivity$4;

    iput p2, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$id:I

    iput-object p3, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 215
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->this$1:Lcom/market2345/filebrowser/FileMusicActivity$4;

    iget-object v0, v0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    iget v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$id:I

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->setRing(I)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$800(Lcom/market2345/filebrowser/FileMusicActivity;I)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->this$1:Lcom/market2345/filebrowser/FileMusicActivity$4;

    iget-object v0, v0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    iget v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$id:I

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->setSMSAudio(I)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$900(Lcom/market2345/filebrowser/FileMusicActivity;I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->this$1:Lcom/market2345/filebrowser/FileMusicActivity$4;

    iget-object v0, v0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    iget v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$4$1;->val$id:I

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->setAlarmAudio(I)V
    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1000(Lcom/market2345/filebrowser/FileMusicActivity;I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x7f090139
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
