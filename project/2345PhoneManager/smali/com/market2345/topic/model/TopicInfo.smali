.class public Lcom/market2345/topic/model/TopicInfo;
.super Ljava/lang/Object;
.source "TopicInfo.java"


# static fields
.field public static final TEMPLATE_1_GRID:I = 0x1

.field public static final TEMPLATE_2_LIST:I = 0x2

.field public static final TOPIC_ACTION_TYPE_DETAIL:Ljava/lang/String; = "detail"

.field public static final TOPIC_ACTION_TYPE_SPECIFIC:Ljava/lang/String; = "tpl"

.field public static final TOPIC_ACTION_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final TOPIC_ID:Ljava/lang/String; = "topicId"

.field public static final TOPIC_TEMPLATE:Ljava/lang/String; = "topicTemplate"


# instance fields
.field public chapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/topic/model/TopicChapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public disable_link:I

.field public id:Ljava/lang/String;

.field public img_url:Ljava/lang/String;

.field public softId:I

.field public template:Ljava/lang/String;

.field public third_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
