.class Lcom/bytedance/sdk/component/widget/recycler/s$ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation


# instance fields
.field d:I

.field dq:Z

.field ia:I

.field ig:Z

.field iw:I

.field kk:Z

.field mn:I

.field no:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field o:I

.field ox:I

.field p:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->kk:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    return-void
.end method

.method private d()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->d()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p()I

    move-result v3

    if-ne v4, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq(Landroid/view/View;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    if-eq v4, p1, :cond_1

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->d()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p()I

    move-result v5

    iget v6, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    mul-int v5, v5, v6

    if-ltz v5, :cond_1

    if-ge v5, v2, :cond_1

    if-eqz v5, :cond_0

    move-object v1, v4

    move v2, v5

    goto :goto_1

    :cond_0
    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    return-object p1
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq(Landroid/view/View;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
