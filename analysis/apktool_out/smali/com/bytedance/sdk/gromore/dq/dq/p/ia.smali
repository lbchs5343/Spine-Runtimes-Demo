.class public Lcom/bytedance/sdk/gromore/dq/dq/p/ia;
.super Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/d;


# instance fields
.field private dq:Lcom/bytedance/sdk/gromore/dq/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
