.class Lcom/market2345/dumpclean/FileAdapter$ViewHold;
.super Ljava/lang/Object;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHold"
.end annotation


# instance fields
.field public im_type:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/dumpclean/FileAdapter;

.field tv_name:Landroid/widget/TextView;

.field tv_size:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/FileAdapter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->this$0:Lcom/market2345/dumpclean/FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
