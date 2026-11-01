.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private final dq:I

.field private ox:I

.field private p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;


# direct methods
.method public constructor <init>(ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->s(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->iw(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->dq:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->d:I

    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->op()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->ox:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->ox:I

    return-void
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->d:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->ox:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->dq:I

    return v0
.end method
