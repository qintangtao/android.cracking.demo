.class public Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;
.super Landroid/widget/BaseAdapter;
.source "CleaningFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/main/CleaningFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CleanAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market2345/dumpclean/main/CleaningFragment;


# direct methods
.method public constructor <init>(Lcom/market2345/dumpclean/main/CleaningFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iput-object p1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    .line 296
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 313
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 320
    if-nez p2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/main/CleaningFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030082

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 323
    new-instance v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;-><init>(Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;)V

    .line 324
    .local v0, "hold":Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;
    const v2, 0x7f0902bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    .line 326
    const v2, 0x7f0902c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->tv_tip:Landroid/widget/TextView;

    .line 328
    const v2, 0x7f0902be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    .line 330
    const v2, 0x7f0902c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->junk_child_check:Landroid/widget/ImageView;

    .line 332
    const v2, 0x7f0902bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv:Landroid/widget/ImageView;

    .line 333
    const v2, 0x7f0902bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv_small:Landroid/widget/ImageView;

    .line 335
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 340
    .local v1, "item":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->junk_child_check:Landroid/widget/ImageView;

    const v3, 0x7f0201a1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/market2345/dumpclean/mode/JunkChild;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    iget-wide v4, v1, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    invoke-static {v4, v5}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    instance-of v2, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v2, :cond_1

    .line 345
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installedApp://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .end local v1    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-object v4, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 356
    :goto_1
    return-object p2

    .line 337
    .end local v0    # "hold":Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;

    .restart local v0    # "hold":Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;
    goto :goto_0

    .line 346
    .restart local v1    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_1
    instance-of v2, v1, Lcom/market2345/dumpclean/mode/JunkChildApk;

    if-eqz v2, :cond_2

    .line 347
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unInstalledApp://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChildApk;

    .end local v1    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-object v4, v1, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 348
    .restart local v1    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_2
    instance-of v2, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v2, :cond_3

    .line 349
    iget-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv:Landroid/widget/ImageView;

    const v3, 0x7f02017b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 352
    :cond_3
    iget-object v2, v0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter$ViewHold;->iv:Landroid/widget/ImageView;

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public getmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->mList:Ljava/util/List;

    return-object v0
.end method
