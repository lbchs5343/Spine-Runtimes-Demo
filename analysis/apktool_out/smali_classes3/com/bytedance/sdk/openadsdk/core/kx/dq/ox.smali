.class public Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;
.super Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;-><init>()V

    return-void
.end method

.method private dq()Lcom/bytedance/sdk/component/utils/i;
    .locals 10

    new-instance v0, Lcom/bytedance/sdk/component/utils/i;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(IJJ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;)Lcom/bytedance/sdk/component/utils/i;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;->dq()Lcom/bytedance/sdk/component/utils/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(I)I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox$1;

    const-string p2, "reg_sensor"

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_0
    return-void
.end method
