.class Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ia(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0
.end method
