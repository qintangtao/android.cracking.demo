.class Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PicDirAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/adapter/PicDirAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field ivImage:Landroid/widget/ImageView;

.field rlPic:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

.field tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/adapter/PicDirAdapter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->this$0:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/adapter/PicDirAdapter;Lcom/market2345/filebrowser/adapter/PicDirAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/adapter/PicDirAdapter;
    .param p2, "x1"    # Lcom/market2345/filebrowser/adapter/PicDirAdapter$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/PicDirAdapter;)V

    return-void
.end method
