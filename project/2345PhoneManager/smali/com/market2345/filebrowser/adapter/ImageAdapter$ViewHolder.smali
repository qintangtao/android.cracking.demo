.class Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbChecked:Landroid/widget/CheckBox;

.field ivImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/ImageAdapter;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/adapter/ImageAdapter;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->this$0:Lcom/market2345/filebrowser/adapter/ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/adapter/ImageAdapter;Lcom/market2345/filebrowser/adapter/ImageAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/adapter/ImageAdapter;
    .param p2, "x1"    # Lcom/market2345/filebrowser/adapter/ImageAdapter$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/ImageAdapter;)V

    return-void
.end method
