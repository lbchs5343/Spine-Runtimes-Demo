.class public final Lg/fak;
.super Landroidx/recyclerview/widget/i;
.source "SourceFile"


# instance fields
.field public final synthetic y:Lg/bnj;


# direct methods
.method public constructor <init>(Lg/bnj;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg/fak;->y:Lg/bnj;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/i;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final q(Landroid/view/View;Landroidx/recyclerview/widget/c;)V
    .locals 6

    iget-object v0, p0, Lg/fak;->y:Lg/bnj;

    iget-object v1, v0, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lg/bnj;->i(Landroidx/recyclerview/widget/b;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lg/fak;->s(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iput v0, p2, Landroidx/recyclerview/widget/c;->c:I

    iput p1, p2, Landroidx/recyclerview/widget/c;->e:I

    iput v2, p2, Landroidx/recyclerview/widget/c;->f:I

    iget-object p1, p0, Landroidx/recyclerview/widget/i;->k:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Landroidx/recyclerview/widget/c;->b:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/c;->d:Z

    :cond_0
    return-void
.end method

.method public final r(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final s(I)I
    .locals 1

    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/i;->s(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
