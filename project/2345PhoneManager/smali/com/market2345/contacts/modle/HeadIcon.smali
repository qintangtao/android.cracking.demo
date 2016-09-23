.class public Lcom/market2345/contacts/modle/HeadIcon;
.super Ljava/lang/Object;
.source "HeadIcon.java"


# instance fields
.field public headIconStream:Ljava/io/InputStream;

.field public headIconStreamSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/market2345/contacts/modle/HeadIcon;->headIconStreamSize:J

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/contacts/modle/HeadIcon;->headIconStream:Ljava/io/InputStream;

    return-void
.end method
