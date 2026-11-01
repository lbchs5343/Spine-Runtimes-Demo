.class public Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private dq:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;->dq:J

    return-void

    :cond_0
    const-wide/32 p1, 0x6400000

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;->dq:J

    return-void
.end method


# virtual methods
.method public dq()Z
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/no;->dq(Landroid/content/Context;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/dq/dq;->dq:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
