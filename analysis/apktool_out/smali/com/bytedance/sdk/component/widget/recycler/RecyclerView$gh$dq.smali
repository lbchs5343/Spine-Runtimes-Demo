.class public Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private iw:Z

.field private mn:I

.field private ox:I

.field private p:I

.field private s:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->iw:Z

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->mn:I

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d:I

    iput p3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->s:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->s:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    if-lez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->p:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 5

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->p:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->p:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(I)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->iw:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->iw:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->s:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq:I

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d:I

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d:I

    invoke-virtual {p1, v2, v3, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(III)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kx:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d:I

    iget v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->mn:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->mn:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->iw:Z

    return-void

    :cond_4
    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->mn:I

    return-void
.end method

.method public dq()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->p:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->d:I

    iput p3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->ox:I

    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->s:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->iw:Z

    return-void
.end method
