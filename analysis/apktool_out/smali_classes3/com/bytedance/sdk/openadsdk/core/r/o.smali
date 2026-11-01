.class public Lcom/bytedance/sdk/openadsdk/core/r/o;
.super Ljava/lang/Object;


# instance fields
.field private cd:I

.field private d:F

.field private dq:F

.field private f:Z

.field private fw:Ljava/lang/String;

.field private gh:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ia:I

.field private ig:I

.field private iw:J

.field private jy:Z

.field private k:I

.field private kk:I

.field private le:Ljava/lang/String;

.field private mn:I

.field private mp:Landroid/view/View;

.field private no:I

.field private o:Z

.field private ox:F

.field private p:F

.field private q:Landroid/view/View;

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;"
        }
    .end annotation
.end field

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->d:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->p:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->s:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->mn:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia:I

    const/16 v1, -0x400

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->o:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->no:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig:I

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->f:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->cd:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->r:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->mn:I

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->d:F

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->mn:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw:J

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->q:Landroid/view/View;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->gh:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy:Z

    return-void
.end method

.method public dq(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq:F

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->k:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->s:J

    return-void
.end method

.method public dq(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->r:Landroid/util/SparseArray;

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp:Landroid/view/View;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->o:Z

    return-void
.end method

.method public dq()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox:F

    return v0
.end method

.method public fw()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->p:F

    return v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->cd:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->f:Z

    return v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->no:I

    return v0
.end method

.method public ig()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->s:J

    return-wide v0
.end method

.method public iw()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp:Landroid/view/View;

    return-object v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig:I

    return-void
.end method

.method public jy()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->d:F

    return v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig:I

    return v0
.end method

.method public le()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->le:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->q:Landroid/view/View;

    return-object v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->cd:I

    return-void
.end method

.method public mp()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw:J

    return-wide v0
.end method

.method public no()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->i:Ljava/util/List;

    return-object v0
.end method

.method public o()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->r:Landroid/util/SparseArray;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia:I

    return v0
.end method

.method public ox(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox:F

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->le:Ljava/lang/String;

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->f:Z

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk:I

    return v0
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->p:F

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk:I

    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq:F

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->gh:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->no:I

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/o;->o:Z

    return v0
.end method
