.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;


# instance fields
.field private iw:I

.field private s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v0

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    aget v2, v1, p2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    aget p2, v0, v2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;->iw:I

    invoke-interface {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;->dq(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/r/k;)V

    return v2
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;->iw:I

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;

    return-void
.end method
