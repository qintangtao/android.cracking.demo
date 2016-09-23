.class public Lcom/market2345/clean/shortcut/TaskInfoProvider;
.super Ljava/lang/Object;
.source "TaskInfoProvider.java"


# static fields
.field public static final KILL_PROCESS_END:I = 0x3

.field private static notCleanPackages:[Ljava/lang/String;


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private context:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;

.field private processCount:I

.field private processSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.lockscreen2345"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.service.usbhelper.service.HelperService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->notCleanPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->pm:Landroid/content/pm/PackageManager;

    .line 26
    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->am:Landroid/app/ActivityManager;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->pm:Landroid/content/pm/PackageManager;

    .line 49
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->am:Landroid/app/ActivityManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/clean/shortcut/TaskInfoProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .prologue
    .line 20
    iget v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/market2345/clean/shortcut/TaskInfoProvider;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J

    return-wide v0
.end method

.method private isNotClean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/market2345/clean/shortcut/TaskInfoProvider;->notCleanPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 161
    sget-object v2, Lcom/market2345/clean/shortcut/TaskInfoProvider;->notCleanPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 227
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formatFileSizeToString(J)Ljava/lang/String;
    .locals 9
    .param p1, "fileSize"    # J

    .prologue
    .line 240
    const-string v1, ""

    .line 241
    .local v1, "fileSizeString":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x400

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_0
    return-object v1

    .line 246
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 256
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAvailableMemory(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 118
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 119
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public getCurrentProcessCount(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 125
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method public getProcessCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    return v0
.end method

.method public getProcessSize()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J

    return-wide v0
.end method

.method public getTotalMemory()J
    .locals 10

    .prologue
    .line 89
    const-string v1, "/proc/meminfo"

    .line 90
    .local v1, "dir":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 93
    .local v6, "totalMemorySize":J
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v0, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 95
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "memoryLine":Ljava/lang/String;
    const-string v8, "MemTotal:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "subMemoryLine":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 98
    const-string v8, "\\D+"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v6, v8

    .line 104
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "memoryLine":Ljava/lang/String;
    .end local v5    # "subMemoryLine":Ljava/lang/String;
    :goto_0
    return-wide v6

    .line 100
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUsedPercent()I
    .locals 18

    .prologue
    .line 67
    const-string v5, "/proc/meminfo"

    .line 70
    .local v5, "dir":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v11, 0x800

    invoke-direct {v4, v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 72
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "memoryLine":Ljava/lang/String;
    const-string v11, "MemTotal:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "subMemoryLine":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 75
    const-string v11, "\\D+"

    const-string v14, ""

    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    .line 76
    .local v12, "totalMemorySize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v2, v14, v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v2, "availableSize":J
    sub-long v14, v12, v2

    long-to-float v11, v14

    long-to-float v14, v12

    div-float/2addr v11, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v11, v14

    float-to-int v9, v11

    .line 84
    .end local v2    # "availableSize":J
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v8    # "memoryLine":Ljava/lang/String;
    .end local v10    # "subMemoryLine":Ljava/lang/String;
    .end local v12    # "totalMemorySize":J
    :goto_0
    return v9

    .line 80
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    move-object/from16 v0, p0

    iget v9, v0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    goto :goto_0
.end method

.method public getUsedPercentValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v0

    .line 62
    .local v0, "percent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public killBackgroundProcess()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 177
    iget-object v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->am:Landroid/app/ActivityManager;

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 178
    .local v9, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v9, :cond_1

    .line 217
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "currentName":Ljava/lang/String;
    iput v11, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    .line 187
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J

    .line 188
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 190
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_2

    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 194
    :try_start_0
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 195
    .local v5, "packname":Ljava/lang/String;
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 196
    .local v8, "pid":I
    iget-object v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->pm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-direct {p0, v5}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->isNotClean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 201
    iget-object v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->am:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    .line 202
    .local v4, "memoryinfos":[Landroid/os/Debug$MemoryInfo;
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    int-to-long v6, v10

    .line 204
    .local v6, "memorysize":J
    iget-object v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->am:Landroid/app/ActivityManager;

    invoke-virtual {v10, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 205
    iget v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I

    .line 206
    iget-wide v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "memoryinfos":[Landroid/os/Debug$MemoryInfo;
    .end local v5    # "packname":Ljava/lang/String;
    .end local v6    # "memorysize":J
    .end local v8    # "pid":I
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public killProcess(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 130
    new-instance v0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;-><init>(Lcom/market2345/clean/shortcut/TaskInfoProvider;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->start()V

    .line 153
    return-void
.end method
