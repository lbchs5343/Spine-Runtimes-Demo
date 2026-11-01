.class final Lcom/bytedance/sdk/component/widget/recycler/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/p$d;,
        Lcom/bytedance/sdk/component/widget/recycler/p$dq;
    }
.end annotation


# static fields
.field static final dq:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/bytedance/sdk/component/widget/recycler/p;",
            ">;"
        }
    .end annotation
.end field

.field static s:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/sdk/component/widget/recycler/p$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/component/widget/recycler/p$d;",
            ">;"
        }
    .end annotation
.end field

.field ox:J

.field p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/widget/recycler/p;->dq:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/p$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/p$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/widget/recycler/p;->s:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    return-void
.end method

.method private d(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/p$d;

    iget-object v2, v1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/p$d;J)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;IJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ig()V

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(IZJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->r()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Z)V

    return-object p2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Z)V

    throw p2
.end method

.method private dq()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    invoke-virtual {v5, v4, v1}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Z)V

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    iget v4, v4, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    iget v6, v5, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->d:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_2
    iget v8, v5, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v6, v8, :cond_4

    iget-object v8, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    new-instance v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;

    invoke-direct {v8}, Lcom/bytedance/sdk/component/widget/recycler/p$d;-><init>()V

    iget-object v9, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v8, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;

    :goto_3
    iget-object v9, v5, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    add-int/lit8 v10, v6, 0x1

    aget v10, v9, v10

    if-gt v10, v7, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq:Z

    iput v7, v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;->d:I

    iput v10, v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;->ox:I

    iput-object v4, v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    aget v9, v9, v6

    iput v9, v8, Lcom/bytedance/sdk/component/widget/recycler/p$d;->s:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->iw:Ljava/util/ArrayList;

    sget-object v1, Lcom/bytedance/sdk/component/widget/recycler/p;->s:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;J)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/d;->ox()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox()V

    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Z)V

    iget v1, v0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    iget-object v2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;IJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq()V

    return-void

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq()V

    throw p1

    :cond_2
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/p$d;J)V
    .locals 3

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iget-object v2, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->s:I

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;IJ)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/d;->ox()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mn:Lcom/bytedance/sdk/component/widget/recycler/d;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/d;->p(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s(Landroid/view/View;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v3

    iget v4, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(J)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq()V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/p;->d(J)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;II)V
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->ox:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->ox:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq(II)V

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->ox:J

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v6, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->p:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p;->ox:J

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/dq/dq/dq;->dq()V

    throw v2
.end method
