.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;
.super Lcom/bytedance/sdk/component/widget/recycler/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;
    }
.end annotation


# instance fields
.field public cd:Z

.field private e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

.field private final gh:Lcom/bytedance/sdk/component/widget/recycler/kk;

.field private i:I

.field private k:Z

.field private final kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$no;

.field private le:Z

.field private r:I

.field private wp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->le:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->cd:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->k:Z

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$no;

    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/kk;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->gh:Lcom/bytedance/sdk/component/widget/recycler/kk;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->r:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    return-object p0
.end method


# virtual methods
.method public d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->r:I

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->r:I

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    :try_start_0
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->wp:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->ox()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cubic detached exception:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    return-void
.end method

.method public no(I)V
    .locals 6

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->i:I

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->gh:Lcom/bytedance/sdk/component/widget/recycler/kk;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/widget/recycler/kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->wp:I

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->wp:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->le:Z

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->le:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->cd:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->k:Z

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->r:I

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->wp:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->op()I

    move-result v5

    sub-int/2addr v5, v0

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-interface {v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;->dq(ZIZ)V

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->le:Z

    :cond_5
    return-void
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->gh:Lcom/bytedance/sdk/component/widget/recycler/kk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$no;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$no;)V

    return-void
.end method

.method public ox(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->cd:Z

    if-nez p1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->i:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->k:Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->k:Z

    return v0
.end method
