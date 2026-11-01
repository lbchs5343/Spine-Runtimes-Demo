.class Lcom/bytedance/sdk/component/widget/recycler/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

.field ox:I

.field p:Z

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->s:Z

    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d(Landroid/view/View;I)V

    return-void

    :cond_0
    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    iget-boolean p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v2, p1

    if-gez v2, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    return-void

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v2

    sub-int v2, p2, v2

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p2

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v3

    if-gez p1, :cond_2

    iget p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    :cond_2
    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p()I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
