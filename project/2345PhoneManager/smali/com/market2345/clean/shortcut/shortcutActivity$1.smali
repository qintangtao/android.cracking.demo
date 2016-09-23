.class Lcom/market2345/clean/shortcut/shortcutActivity$1;
.super Landroid/os/Handler;
.source "shortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/clean/shortcut/shortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clean/shortcut/shortcutActivity;


# direct methods
.method constructor <init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x64

    const/16 v6, 0x1f40

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-boolean v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isStop:Z

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    .line 124
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v5, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isPause:Z

    .line 126
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-boolean v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isDown:Z

    if-eqz v1, :cond_4

    .line 127
    iget-object v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    add-int/lit8 v1, v1, -0xa

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    add-int/lit8 v1, v1, -0xa

    :goto_1
    iput v1, v3, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    .line 128
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    iget-object v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v3, v3, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    if-gt v1, v3, :cond_0

    .line 131
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v2, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isDown:Z

    .line 151
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    if-lt v1, v6, :cond_7

    .line 152
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v3, 0x7f0200c2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v3, 0x7f0200bd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_3
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 162
    .local v0, "clip":Landroid/graphics/drawable/ClipDrawable;
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 163
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # invokes: Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevelChange()V
    invoke-static {v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$300(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    .line 165
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v2, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isPause:Z

    goto :goto_0

    .end local v0    # "clip":Landroid/graphics/drawable/ClipDrawable;
    :cond_3
    move v1, v2

    .line 127
    goto :goto_1

    .line 136
    :cond_4
    iget-object v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    add-int/lit8 v1, v1, 0xa

    iget-object v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v4, v4, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    if-gt v1, v4, :cond_5

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    add-int/lit8 v1, v1, 0xa

    :goto_4
    iput v1, v3, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    .line 137
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    iget-object v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v3, v3, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    if-ne v1, v3, :cond_2

    .line 139
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v5, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isStop:Z

    .line 140
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iput-boolean v5, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->isDown:Z

    .line 141
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # invokes: Lcom/market2345/clean/shortcut/shortcutActivity;->closeResource()V
    invoke-static {v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$000(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    .line 143
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->isStretching:Z
    invoke-static {v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$100(Lcom/market2345/clean/shortcut/shortcutActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$200(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    goto :goto_4

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    # getter for: Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->access$200(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 154
    :cond_7
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    if-ge v1, v6, :cond_8

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    const/16 v3, 0x1770

    if-le v1, v3, :cond_8

    .line 155
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v3, 0x7f0200c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v3, 0x7f0200bf

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 158
    :cond_8
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v3, 0x7f0200c4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$1;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v1, v1, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v3, 0x7f0200c1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method
