.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;
.super Lcom/bytedance/sdk/component/adexpress/d/mp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;
    }
.end annotation


# instance fields
.field private d:Lg/dbw;

.field private dq:Lorg/json/JSONObject;

.field private ox:F

.field private p:F

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;-><init>(Lcom/bytedance/sdk/component/adexpress/d/mp$dq;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->dq:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Lg/dbw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->d:Lg/dbw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->ox:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->p:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->s:Z

    return-void
.end method


# virtual methods
.method public bl()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->ox:F

    return v0
.end method

.method public ji()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->p:F

    return v0
.end method

.method public n()Lg/dbw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->d:Lg/dbw;

    return-object v0
.end method

.method public op()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->s:Z

    return v0
.end method
