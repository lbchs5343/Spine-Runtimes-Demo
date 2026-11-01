.class public Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;
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

    move-result v1

    const-string v2, "reg res:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "csj_sen"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(IJJ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;)Lcom/bytedance/sdk/component/utils/i;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq()Lcom/bytedance/sdk/component/utils/i;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lorg/json/JSONObject;JJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long p2, v0, p4

    if-lez p2, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;

    const-string p3, "reg_sensor"

    invoke-direct {p2, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    const-string p1, "xgc_sen"

    const-string p2, "cancel"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;I)V
    .locals 13

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d()J

    move-result-wide v3

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq(Lorg/json/JSONObject;JJ)V

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->ox(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->ox()J

    move-result-wide v9

    int-to-long v11, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq(Lorg/json/JSONObject;JJ)V

    :cond_1
    return-void
.end method
