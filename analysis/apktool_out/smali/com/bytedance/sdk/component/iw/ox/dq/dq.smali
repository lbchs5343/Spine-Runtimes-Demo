.class public Lcom/bytedance/sdk/component/iw/ox/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/d;
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile iw:Lcom/bytedance/sdk/component/iw/d;


# instance fields
.field private d:I

.field private dq:J

.field private ox:Z

.field private p:Z

.field private s:Ljava/io/File;


# direct methods
.method public constructor <init>(IJLjava/io/File;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v8, p4

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;-><init>(IJZZLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(IJZZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq:J

    iput p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->d:I

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->ox:Z

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->p:Z

    iput-object p6, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->s:Ljava/io/File;

    return-void
.end method

.method public static dq(Ljava/io/File;)Lcom/bytedance/sdk/component/iw/d;
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    const-wide/32 v1, 0x2800000

    const/high16 v3, 0x1e00000

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->ia()J

    move-result-wide v3

    const-wide/16 v5, 0x10

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/d;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v3, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/iw/d;->dq()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    const-wide/32 v3, 0x1400000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/high16 v3, 0x1900000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lcom/bytedance/sdk/component/iw/ox/dq/dq;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;-><init>(IJLjava/io/File;)V

    return-object v3
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/d;)V
    .locals 1

    if-eqz p1, :cond_0

    sput-object p1, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    return-void

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v0, "image"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq(Ljava/io/File;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    return-void
.end method

.method private static ia()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static mn()Lcom/bytedance/sdk/component/iw/d;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->iw:Lcom/bytedance/sdk/component/iw/d;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->d:I

    return v0
.end method

.method public dq()J
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq:J

    return-wide v0
.end method

.method public iw()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x6
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public ox()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->ox:Z

    return v0
.end method

.method public p()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x4
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->p:Z

    return v0
.end method

.method public s()Ljava/io/File;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->s:Ljava/io/File;

    return-object v0
.end method
