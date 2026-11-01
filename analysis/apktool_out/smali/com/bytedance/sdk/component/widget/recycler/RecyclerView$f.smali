.class public final Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field final dq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field private ia:I

.field final synthetic iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field private kk:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$i;

.field private final mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field final ox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->mn:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ia:I

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p:I

    return-void
.end method

.method private dq(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIJ)Z
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iput-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig()I

    move-result v2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getNanoTime()J

    move-result-wide v3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v5, p4, v0

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->d(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p4, p4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {p4, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getNanoTime()J

    move-result-wide p4

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig()I

    move-result v0

    sub-long/2addr p4, v3

    invoke-virtual {p2, v0, p4, p5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->d(IJ)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p3, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 1

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d(IZ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iget-boolean v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->mn:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/d;->ox(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/d;->s(Landroid/view/View;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p2, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/d;->d(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/widget/recycler/d;->s(I)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(Landroid/view/View;)V

    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {p1, v0}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia()I

    move-result v3

    if-ne v3, p1, :cond_6

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ia:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d(II)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->le()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->bl()Z

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_5

    :cond_2
    :goto_2
    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p:I

    if-lt v3, v4, :cond_3

    if-lez v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_3
    sget-boolean v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p:Z

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    iget v5, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iget-object v5, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v5, v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v3, v2

    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    invoke-virtual {p0, p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_1

    :goto_5
    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ia:Lcom/bytedance/sdk/component/widget/recycler/q;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/component/widget/recycler/q;->mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v1, v0}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {p1, v1}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {p1, v3}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(IZJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    return-object p1
.end method

.method public dq(IZJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v1, p2

    if-ltz v3, :cond_18

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v2

    if-ge v3, v2, :cond_18

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v4

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(IZ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v1, :cond_4

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v9, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v8, v9, v7}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f()V

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_4
    move-object v2, v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    :cond_6
    :goto_2
    if-nez v2, :cond_f

    iget-object v8, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v8, v8, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->iw:Lcom/bytedance/sdk/component/widget/recycler/dq;

    invoke-virtual {v8, v3}, Lcom/bytedance/sdk/component/widget/recycler/dq;->d(I)I

    move-result v8

    if-ltz v8, :cond_10

    iget-object v9, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v9, v9, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq()I

    move-result v9

    if-ge v8, v9, :cond_10

    iget-object v9, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v9, v9, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v9, v8}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(I)I

    move-result v11

    iget-object v9, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v9, v9, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v11, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(JIZ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v2

    if-eqz v2, :cond_7

    iput v8, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    const/4 v5, 0x1

    :cond_7
    if-nez v2, :cond_a

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->kk:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$i;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0, v3, v11}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$i;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v3, v2}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v3, v2}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->mn()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->dq(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->kx()V

    sget-boolean v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq:Z

    if-eqz v2, :cond_b

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_b
    move-object v2, v1

    :cond_c
    if-nez v2, :cond_f

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getNanoTime()J

    move-result-wide v12

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v8, p3, v1

    if-eqz v8, :cond_d

    iget-object v10, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->dq(IJJ)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v4

    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v2, v1, v11}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v2

    sget-boolean v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p:Z

    if-eqz v1, :cond_e

    iget-object v1, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->o(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getNanoTime()J

    move-result-wide v8

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    sub-long/2addr v8, v12

    invoke-virtual {v1, v11, v8, v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->dq(IJ)V

    :cond_f
    move-object v1, v2

    move v8, v5

    goto :goto_4

    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "(offset:"

    const-string v4, ").state:"

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-static {v3, v8, v5, v2, v4}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v3, v2}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    if-eqz v8, :cond_11

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v1, v7, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(II)V

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iget-boolean v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->o:Z

    if-eqz v2, :cond_11

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v5, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->e:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->e()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v4, v1, v2, v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;ILjava/util/List;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object v2

    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    :cond_11
    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->r()Z

    move-result v2

    if-eqz v2, :cond_12

    iput v3, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    goto :goto_5

    :cond_12
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->r()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v2, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->iw:Lcom/bytedance/sdk/component/widget/recycler/dq;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/dq;->d(I)I

    move-result v2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIJ)Z

    move-result v2

    :goto_7
    iget-object v3, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v4, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_15
    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v4, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_16
    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    :goto_8
    iput-object v1, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v8, :cond_17

    if-eqz v2, :cond_17

    goto :goto_9

    :cond_17
    const/4 v6, 0x0

    :goto_9
    iput-boolean v6, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->p:Z

    return-object v1

    :cond_18
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "("

    const-string v4, "). Item count:"

    const-string v5, "Invalid item position "

    invoke-static {v3, v3, v5, v2, v4}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v3, v2}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dq(JIZ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p()V

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ia:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d()V

    return-void
.end method

.method public dq(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v6, :cond_2

    iget v7, v6, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-lt v7, v1, :cond_2

    if-gt v7, v2, :cond_2

    if-ne v7, p1, :cond_1

    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(IZ)V

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v0, v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public dq(IIZ)V
    .locals 4

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->le()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->mn()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$i;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->kk:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$i;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->ox()V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getAdapter()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->d()V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(II)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->mn()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result p1

    return p1

    :cond_0
    iget v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    iget v1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(I)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {p1, v1}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->p()V

    return-void
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public kk()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public mn()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$jy;

    return-object v0
.end method

.method public o()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->ox:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ox()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->mn:Ljava/util/List;

    return-object v0
.end method

.method public ox(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public ox(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-lt v2, p1, :cond_0

    if-ge v2, p2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ox(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v1, v0}, Lg/tn;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 1

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f()V

    return-void
.end method

.method public p(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    return-object p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq()V

    :cond_1
    return-void
.end method

.method public p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ia:Lcom/bytedance/sdk/component/widget/recycler/q;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/q;->mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_1
    return-void
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public s(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->iw:Lcom/bytedance/sdk/component/widget/recycler/dq;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq;->d(I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->iw:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->d(I)J

    move-result-wide v4

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_2

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
