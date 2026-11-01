.class public Lcom/bytedance/sdk/component/ia/d/dq/dq/d/s;
.super Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method


# virtual methods
.method public d()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->d()Lcom/bytedance/sdk/component/ia/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/iw;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p1

    return p1
.end method

.method public ox()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
