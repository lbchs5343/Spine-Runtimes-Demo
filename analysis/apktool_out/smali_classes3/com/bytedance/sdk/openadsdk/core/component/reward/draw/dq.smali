.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq<",
        "Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Landroid/content/Context;

.field private final ox:F

.field private final p:F

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->s:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->dq:Landroid/content/Context;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->ox:F

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->p:F

    return-void
.end method


# virtual methods
.method public d(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public dq()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public synthetic dq(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->ox(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V

    return-void
.end method

.method public bridge synthetic dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->c()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->ox:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->p:F

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;FF)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->ox()V

    return-void
.end method

.method public ox(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/res/s;->ig(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->s:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/dq;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
