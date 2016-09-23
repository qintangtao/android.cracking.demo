.class Lcom/market2345/filebrowser/FileMusicActivity$4;
.super Ljava/lang/Object;
.source "FileMusicActivity.java"

# interfaces
.implements Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileMusicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAudio(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 191
    iget-object v5, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    const v6, 0x7f03001e

    invoke-static {v5, v6}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    .line 192
    .local v1, "dialog":Landroid/app/Dialog;
    const v5, 0x7f090107

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 193
    .local v2, "dialogTitle":Landroid/widget/TextView;
    const v5, 0x7f090139

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 194
    .local v3, "ring":Landroid/widget/TextView;
    const v5, 0x7f09013a

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 195
    .local v4, "sms":Landroid/widget/TextView;
    const v5, 0x7f09013b

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, "alarm":Landroid/widget/TextView;
    const-string v5, "\u8bbe\u7f6e\u4e3a"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v5, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    new-instance v6, Lcom/market2345/filebrowser/FileMusicActivity$4$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/market2345/filebrowser/FileMusicActivity$4$1;-><init>(Lcom/market2345/filebrowser/FileMusicActivity$4;ILandroid/app/Dialog;)V

    # setter for: Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;
    invoke-static {v5, v6}, Lcom/market2345/filebrowser/FileMusicActivity;->access$702(Lcom/market2345/filebrowser/FileMusicActivity;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 218
    iget-object v5, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileMusicActivity;->access$700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v5, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileMusicActivity;->access$700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v5, p0, Lcom/market2345/filebrowser/FileMusicActivity$4;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->setRingAudio:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileMusicActivity;->access$700(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 223
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 226
    return-void
.end method
