.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZILjava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->f:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D

    move-result-wide v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D

    move-result-wide v8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(DDDDLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZILjava/lang/String;)V

    :cond_1
    return-void
.end method
