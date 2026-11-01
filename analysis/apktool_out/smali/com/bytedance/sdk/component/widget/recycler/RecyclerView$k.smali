.class public abstract Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation


# static fields
.field private static final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cd:I

.field private d:I

.field f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

.field fw:Z

.field gh:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field ia:J

.field ig:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

.field iw:I

.field jy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field kk:I

.field mn:I

.field mp:I

.field no:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

.field o:I

.field private ox:I

.field public final p:Landroid/view/View;

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia:J

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->kk:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    iput-boolean v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    iput v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public bl()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/mn;->iw(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cd()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    return-void
.end method

.method public dq(II)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void
.end method

.method public dq(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(IZ)V

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    return-void
.end method

.method public dq(IZ)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    :cond_2
    iget p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->ox:Z

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/mn;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)Z

    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d(I)V

    return-void

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final dq(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    :cond_3
    return-void
.end method

.method public dq(I)Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->jy:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq:Ljava/util/List;

    return-object v0

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq:Ljava/util/List;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void
.end method

.method public fw()V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void
.end method

.method public gh()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/mn;->iw(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ia()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    :cond_0
    return v0
.end method

.method public final ig()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->kk:I

    return v0
.end method

.method public iw()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    :cond_0
    return-void
.end method

.method public ji()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)I

    move-result v0

    return v0
.end method

.method public kx()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia:J

    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->no:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iput-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ig:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->wp()V

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ox:I

    iput v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd:I

    invoke-static {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public le()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final no()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia:J

    return-wide v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->f:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public r()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->iw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->fw:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->r()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->gh()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mn()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->le()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->h()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    return-void
.end method
