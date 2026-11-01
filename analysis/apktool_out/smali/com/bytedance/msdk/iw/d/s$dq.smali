.class Lcom/bytedance/msdk/iw/d/s$dq;
.super Lcom/bytedance/msdk/iw/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/iw/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/d/mn;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vw()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/iw/d/mn;->d()Z

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->ds()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/iw/d/mn;->dq()Z

    move-result v0

    return v0
.end method
