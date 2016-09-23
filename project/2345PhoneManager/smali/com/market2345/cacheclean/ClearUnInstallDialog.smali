.class public Lcom/market2345/cacheclean/ClearUnInstallDialog;
.super Landroid/app/Activity;
.source "ClearUnInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancleBt:Landroid/widget/Button;

.field private clearBt:Landroid/widget/Button;

.field private msgTv:Landroid/widget/TextView;

.field paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:J

.field private strSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initUI(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "appname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f0901e7

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->msgTv:Landroid/widget/TextView;

    .line 42
    const v4, 0x7f090204

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->cancleBt:Landroid/widget/Button;

    .line 43
    const v4, 0x7f090205

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->clearBt:Landroid/widget/Button;

    .line 44
    iget-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->cancleBt:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->clearBt:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "path":Ljava/lang/String;
    iget-wide v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->size:J

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/market2345/cacheclean/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->size:J

    goto :goto_0

    .line 50
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    iget-wide v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->finish()V

    .line 58
    :goto_1
    return-void

    .line 54
    :cond_1
    iget-wide v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->size:J

    invoke-static {v4, v5}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->strSize:Ljava/lang/String;

    .line 55
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->strSize:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/lm/util/StringUtils;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "todbc":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->msgTv:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->finish()V

    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v1, Lcom/market2345/cacheclean/ClearUnInstallDialog$1;

    invoke-direct {v1, p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog$1;-><init>(Lcom/market2345/cacheclean/ClearUnInstallDialog;)V

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ClearUnInstallDialog$1;->start()V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->strSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "successTip":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->finish()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f090204
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f030036

    invoke-virtual {p0, v2}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "appname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "appname":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->paths:Ljava/util/ArrayList;

    .line 37
    iget-object v2, p0, Lcom/market2345/cacheclean/ClearUnInstallDialog;->paths:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/market2345/cacheclean/ClearUnInstallDialog;->initUI(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    return-void
.end method
