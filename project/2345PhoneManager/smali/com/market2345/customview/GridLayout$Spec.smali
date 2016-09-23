.class public Lcom/market2345/customview/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Lcom/market2345/customview/GridLayout$Spec;


# instance fields
.field final alignment:Lcom/market2345/customview/GridLayout$Alignment;

.field final span:Lcom/market2345/customview/GridLayout$Interval;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2281
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/market2345/customview/GridLayout;->spec(I)Lcom/market2345/customview/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Lcom/market2345/customview/GridLayout$Spec;->UNDEFINED:Lcom/market2345/customview/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILcom/market2345/customview/GridLayout$Alignment;)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Lcom/market2345/customview/GridLayout$Alignment;

    .prologue
    .line 2294
    new-instance v0, Lcom/market2345/customview/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Lcom/market2345/customview/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Lcom/market2345/customview/GridLayout$Spec;-><init>(ZLcom/market2345/customview/GridLayout$Interval;Lcom/market2345/customview/GridLayout$Alignment;)V

    .line 2295
    return-void
.end method

.method synthetic constructor <init>(ZIILcom/market2345/customview/GridLayout$Alignment;Lcom/market2345/customview/GridLayout$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/market2345/customview/GridLayout$Alignment;
    .param p5, "x4"    # Lcom/market2345/customview/GridLayout$1;

    .prologue
    .line 2280
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/customview/GridLayout$Spec;-><init>(ZIILcom/market2345/customview/GridLayout$Alignment;)V

    return-void
.end method

.method private constructor <init>(ZLcom/market2345/customview/GridLayout$Interval;Lcom/market2345/customview/GridLayout$Alignment;)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Lcom/market2345/customview/GridLayout$Interval;
    .param p3, "alignment"    # Lcom/market2345/customview/GridLayout$Alignment;

    .prologue
    .line 2287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2288
    iput-boolean p1, p0, Lcom/market2345/customview/GridLayout$Spec;->startDefined:Z

    .line 2289
    iput-object p2, p0, Lcom/market2345/customview/GridLayout$Spec;->span:Lcom/market2345/customview/GridLayout$Interval;

    .line 2290
    iput-object p3, p0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    .line 2291
    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Lcom/market2345/customview/GridLayout$Alignment;)Lcom/market2345/customview/GridLayout$Spec;
    .locals 3
    .param p1, "alignment"    # Lcom/market2345/customview/GridLayout$Alignment;

    .prologue
    .line 2302
    new-instance v0, Lcom/market2345/customview/GridLayout$Spec;

    iget-boolean v1, p0, Lcom/market2345/customview/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Lcom/market2345/customview/GridLayout$Spec;->span:Lcom/market2345/customview/GridLayout$Interval;

    invoke-direct {v0, v1, v2, p1}, Lcom/market2345/customview/GridLayout$Spec;-><init>(ZLcom/market2345/customview/GridLayout$Interval;Lcom/market2345/customview/GridLayout$Alignment;)V

    return-object v0
.end method

.method final copyWriteSpan(Lcom/market2345/customview/GridLayout$Interval;)Lcom/market2345/customview/GridLayout$Spec;
    .locals 3
    .param p1, "span"    # Lcom/market2345/customview/GridLayout$Interval;

    .prologue
    .line 2298
    new-instance v0, Lcom/market2345/customview/GridLayout$Spec;

    iget-boolean v1, p0, Lcom/market2345/customview/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    invoke-direct {v0, v1, p1, v2}, Lcom/market2345/customview/GridLayout$Spec;-><init>(ZLcom/market2345/customview/GridLayout$Interval;Lcom/market2345/customview/GridLayout$Alignment;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2321
    if-ne p0, p1, :cond_1

    .line 2338
    :cond_0
    :goto_0
    return v1

    .line 2324
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2325
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2328
    check-cast v0, Lcom/market2345/customview/GridLayout$Spec;

    .line 2330
    .local v0, "spec":Lcom/market2345/customview/GridLayout$Spec;
    iget-object v3, p0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    iget-object v4, v0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2331
    goto :goto_0

    .line 2334
    :cond_4
    iget-object v3, p0, Lcom/market2345/customview/GridLayout$Spec;->span:Lcom/market2345/customview/GridLayout$Interval;

    iget-object v4, v0, Lcom/market2345/customview/GridLayout$Spec;->span:Lcom/market2345/customview/GridLayout$Interval;

    invoke-virtual {v3, v4}, Lcom/market2345/customview/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2335
    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    sget-object v1, Lcom/market2345/customview/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/market2345/customview/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2343
    iget-object v1, p0, Lcom/market2345/customview/GridLayout$Spec;->span:Lcom/market2345/customview/GridLayout$Interval;

    invoke-virtual {v1}, Lcom/market2345/customview/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2344
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2345
    return v0
.end method
