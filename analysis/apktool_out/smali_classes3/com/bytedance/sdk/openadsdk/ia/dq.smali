.class public Lcom/bytedance/sdk/openadsdk/ia/dq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)Lcom/bytedance/sdk/component/iw/jy;
    .locals 0
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
    .end annotation

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)Lcom/bytedance/sdk/component/iw/jy;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Lcom/bytedance/sdk/component/iw/mp;
    .locals 5
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x5000000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0xa00000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/component/iw/ox/dq/dq;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x2800000

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;-><init>(IJLjava/io/File;)V

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/s$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/ox/s$dq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox/s$dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/iw/ox/s$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ia/dq$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ia/dq$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq(Lcom/bytedance/sdk/component/iw/p;)Lcom/bytedance/sdk/component/iw/ox/s$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq()Lcom/bytedance/sdk/component/iw/ox/s;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
