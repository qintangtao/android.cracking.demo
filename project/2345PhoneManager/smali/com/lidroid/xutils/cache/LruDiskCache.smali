.class public final Lcom/lidroid/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Entry;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;,
        Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:C = 'C'

.field private static final DELETE:C = 'D'

.field private static final EXPIRY_PREFIX:C = 't'

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:C = 'R'

.field private static final UPDATE:C = 'U'

.field static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/cache/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 791
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$2;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 796
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 147
    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    .line 153
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$1;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1213
    new-instance v0, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 171
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    .line 172
    iput p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    .line 174
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 175
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    .line 176
    iput p3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    .line 177
    iput-wide p4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    .line 178
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    move-result-object v2

    .line 575
    .local v2, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 576
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v2    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 580
    .restart local v2    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 581
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, v8, :cond_5

    .line 593
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, v8, :cond_8

    .line 609
    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 610
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 611
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b

    .line 612
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    .line 613
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "C "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x74

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    if-eqz p2, :cond_2

    .line 615
    iget-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 621
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 623
    iget-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v10, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 624
    :cond_3
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 582
    :cond_5
    :try_start_2
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_6

    .line 583
    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    .line 584
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 586
    :cond_6
    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 587
    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    goto :goto_3

    .line 581
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 594
    :cond_8
    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 595
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_a

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 597
    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 598
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 599
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 600
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 601
    .local v4, "newLength":J
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 602
    iget-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 593
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 605
    :cond_a
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_4

    .line 618
    .end local v1    # "dirty":Ljava/io/File;
    :cond_b
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "D "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1057
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 1058
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not a readable directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1060
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 1068
    return-void

    .line 1060
    :cond_1
    aget-object v0, v1, v2

    .line 1061
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1062
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1064
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1065
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1060
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 6
    .param p1, "diskKey"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 519
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 520
    .local v1, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 521
    if-eqz v1, :cond_0

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 537
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 524
    :cond_1
    if-nez v1, :cond_3

    .line 525
    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .end local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    .line 526
    .restart local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_2
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 532
    .local v0, "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 535
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "U "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    .end local v0    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .end local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 527
    .restart local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :cond_3
    :try_start_2
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .locals 12
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 450
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 451
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .local v9, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-nez v9, :cond_1

    .line 505
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 456
    :cond_1
    :try_start_1
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 462
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v11, v2, :cond_2

    .line 470
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 471
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 472
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v9    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local v11    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 463
    .restart local v9    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .restart local v11    # "i":I
    :cond_2
    :try_start_2
    invoke-virtual {v9, v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v10

    .line 464
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 465
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_3
    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 468
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v11

    .line 462
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 482
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "i":I
    :cond_4
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    new-array v6, v2, [Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .local v6, "ins":[Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    :try_start_3
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v11, v2, :cond_6

    .line 499
    :try_start_4
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 500
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "R "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 501
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 502
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 505
    :cond_5
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 485
    :cond_6
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v9, v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v11
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 484
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 487
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v11, 0x0

    :goto_3
    :try_start_6
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-ge v11, v2, :cond_0

    .line 490
    aget-object v2, v6, v11

    if-eqz v2, :cond_0

    .line 491
    aget-object v2, v6, v11

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 489
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 633
    const/16 v0, 0x7d0

    .line 634
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 635
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 634
    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    if-gtz p2, :cond_1

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 211
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 212
    .local v0, "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    iget-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    :try_start_0
    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournal()V

    .line 215
    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->processJournal()V

    .line 216
    new-instance v1, Ljava/io/BufferedWriter;

    .line 217
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 216
    iput-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 234
    .end local v0    # "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    .local v7, "cache":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 206
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 219
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    :catch_0
    move-exception v9

    .line 220
    .local v9, "journalIsCorrupt":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DiskLruCache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    .line 230
    .end local v9    # "journalIsCorrupt":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    :cond_5
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    .end local v0    # "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 232
    .restart local v0    # "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    :cond_6
    move-object v7, v0

    .line 234
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 338
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 353
    return-void

    .line 339
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 340
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 341
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 342
    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    .end local v2    # "t":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 346
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 348
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v2, 0x0

    .line 1038
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1039
    .end local v2    # "writer":Ljava/io/StringWriter;
    .local v3, "writer":Ljava/io/StringWriter;
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [C

    .line 1041
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1044
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1046
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1047
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1044
    return-object v4

    .line 1042
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1045
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .line 1046
    .end local v3    # "writer":Ljava/io/StringWriter;
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :goto_1
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1047
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1048
    throw v4

    .line 1045
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v4, 0x0

    .line 240
    .local v4, "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :try_start_0
    new-instance v5, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, p0, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .end local v4    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    .local v5, "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :try_start_1
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 251
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected journal header: ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 251
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v4, v5

    .line 266
    .end local v5    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    .restart local v4    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :goto_0
    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 267
    throw v8

    .line 255
    .end local v4    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 258
    .local v2, "lineCount":I
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v8

    .line 264
    :try_start_3
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v2, v8

    iput v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    return-void

    .line 265
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v2    # "lineCount":I
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    .restart local v4    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :catchall_1
    move-exception v8

    goto :goto_0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 272
    .local v3, "firstSpace":I
    const/4 v5, 0x0

    .line 273
    .local v5, "lineTag":C
    if-ne v3, v9, :cond_1

    .line 274
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 279
    add-int/lit8 v4, v3, 0x1

    .line 280
    .local v4, "keyBegin":I
    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 282
    .local v7, "secondSpace":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "diskKey":Ljava/lang/String;
    const/16 v8, 0x44

    if-ne v5, v8, :cond_3

    .line 285
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 276
    .end local v0    # "diskKey":Ljava/lang/String;
    .end local v4    # "keyBegin":I
    .end local v7    # "secondSpace":I
    :cond_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected journal line: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 289
    .restart local v4    # "keyBegin":I
    .restart local v7    # "secondSpace":I
    :cond_2
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "diskKey":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 293
    .local v2, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-nez v2, :cond_4

    .line 294
    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .end local v2    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-direct {v2, p0, v0, v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    .line 295
    .restart local v2    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_4
    sparse-switch v5, :sswitch_data_0

    .line 327
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected journal line: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    :sswitch_1
    invoke-static {v2, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    .line 301
    invoke-static {v2, v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 302
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "parts":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_0

    .line 305
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x74

    if-ne v8, v9, :cond_5

    .line 306
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 307
    const/4 v8, 0x1

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v2, v6, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected journal line: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 309
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    const-wide v8, 0x7fffffffffffffffL

    :try_start_1
    invoke-static {v2, v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 310
    const/4 v8, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v2, v6, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 319
    .end local v6    # "parts":[Ljava/lang/String;
    :sswitch_2
    new-instance v8, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {v8, p0, v2, v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v2, v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    goto/16 :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :cond_0
    const/4 v1, 0x0

    .line 366
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    .line 367
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 368
    .end local v1    # "writer":Ljava/io/Writer;
    .local v2, "writer":Ljava/io/Writer;
    :try_start_2
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 386
    :try_start_3
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 389
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 392
    :cond_1
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 393
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 395
    new-instance v3, Ljava/io/BufferedWriter;

    .line 396
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 395
    iput-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 397
    monitor-exit p0

    return-void

    .line 378
    :cond_2
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 379
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "U "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 385
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .line 386
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 360
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 382
    .restart local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_3
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x74

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 385
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_2
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .locals 8
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 651
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 652
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-eqz v0, :cond_0

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 653
    :cond_0
    const/4 v3, 0x0

    .line 673
    :goto_0
    monitor-exit p0

    return v3

    .line 656
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 665
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 666
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "D "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 667
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 670
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 673
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 657
    :cond_3
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 658
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 659
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 661
    .restart local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 662
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p2, :cond_0

    .line 407
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 412
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :goto_0
    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 721
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 714
    :goto_0
    monitor-exit p0

    return-void

    .line 706
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    .line 712
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 713
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 706
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 707
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 708
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 730
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 731
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "diskKey":Ljava/lang/String;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 694
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    .line 695
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v1

    return-object v1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 426
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v2, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "diskKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    .end local v1    # "result":Ljava/io/File;
    :goto_0
    return-object v1

    .line 432
    .restart local v1    # "result":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v2, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 417
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .local v1, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-nez v1, :cond_0

    .line 419
    const-wide/16 v2, 0x0

    .line 421
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 415
    .end local v0    # "diskKey":Ljava/lang/String;
    .end local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .locals 0
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .prologue
    .line 1220
    if-eqz p1, :cond_0

    .line 1221
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 1223
    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    .line 561
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
