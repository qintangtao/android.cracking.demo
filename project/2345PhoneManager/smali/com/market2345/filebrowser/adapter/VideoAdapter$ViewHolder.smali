.class Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/adapter/VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbChecked:Landroid/widget/CheckBox;

.field ivPic:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/VideoAdapter;

.field tvDuration:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvSize:Landroid/widget/TextView;

.field videoPlay:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/adapter/VideoAdapter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->this$0:Lcom/market2345/filebrowser/adapter/VideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/adapter/VideoAdapter;Lcom/market2345/filebrowser/adapter/VideoAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/adapter/VideoAdapter;
    .param p2, "x1"    # Lcom/market2345/filebrowser/adapter/VideoAdapter$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/VideoAdapter;)V

    return-void
.end method
