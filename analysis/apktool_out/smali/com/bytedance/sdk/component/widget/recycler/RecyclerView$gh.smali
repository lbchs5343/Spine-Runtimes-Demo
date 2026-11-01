.class public abstract Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "gh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;,
        Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field private dq:I

.field private ia:Z

.field private iw:Landroid/view/View;

.field private final mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

.field private ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

.field private p:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ia()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ia(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public abstract dq()V
.end method

.method public dq(II)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s()V

    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(IILcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq()Z

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    iget-object p1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s()V

    :cond_7
    return-void
.end method

.method public abstract dq(IILcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;)V
.end method

.method public dq(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public abstract dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;)V
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iput p2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ia()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ia:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    return v0
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    return v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    return-void
.end method

.method public p(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;->ox(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public p()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    return-object v0
.end method

.method public s(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    const/4 v2, -0x1

    iput v2, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw:Landroid/view/View;

    iput v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->p:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    :cond_0
    return-void
.end method
