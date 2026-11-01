.class public Lg/byn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/caf;

.field public final b:Lg/awq;

.field public final c:I

.field public d:Landroid/view/View;

.field public final e:Landroid/content/Context;

.field public f:I

.field public g:Lg/gox;

.field public final h:Lg/ftn;

.field public i:Landroid/widget/PopupWindow$OnDismissListener;

.field public final j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p6, 0x800003

    iput p6, p0, Lg/byn;->f:I

    new-instance p6, Lg/awq;

    const/4 v0, 0x0

    invoke-direct {p6, v0, p0}, Lg/awq;-><init>(ILjava/lang/Object;)V

    iput-object p6, p0, Lg/byn;->b:Lg/awq;

    iput-object p1, p0, Lg/byn;->e:Landroid/content/Context;

    iput-object p2, p0, Lg/byn;->h:Lg/ftn;

    iput-object p3, p0, Lg/byn;->d:Landroid/view/View;

    iput-boolean p4, p0, Lg/byn;->j:Z

    iput p5, p0, Lg/byn;->c:I

    return-void
.end method


# virtual methods
.method public final l(IIZZ)V
    .locals 3

    invoke-virtual {p0}, Lg/byn;->m()Lg/gox;

    move-result-object v0

    invoke-virtual {v0, p4}, Lg/gox;->ah(Z)V

    if-eqz p3, :cond_1

    iget p3, p0, Lg/byn;->f:I

    iget-object p4, p0, Lg/byn;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lg/byn;->d:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_0
    invoke-virtual {v0, p1}, Lg/gox;->ab(I)V

    invoke-virtual {v0, p2}, Lg/gox;->ai(I)V

    iget-object p3, p0, Lg/byn;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, v0, Lg/gox;->ar:Landroid/graphics/Rect;

    :cond_1
    invoke-interface {v0}, Lg/erj;->show()V

    return-void
.end method

.method public final m()Lg/gox;
    .locals 11

    iget-object v0, p0, Lg/byn;->g:Lg/gox;

    if-nez v0, :cond_1

    const-string v0, "window"

    iget-object v1, p0, Lg/byn;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-lt v0, v2, :cond_0

    new-instance v0, Lg/ezq;

    iget-object v2, p0, Lg/byn;->d:Landroid/view/View;

    iget v3, p0, Lg/byn;->c:I

    iget-boolean v4, p0, Lg/byn;->j:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lg/ezq;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    new-instance v5, Lg/ctb;

    iget-object v8, p0, Lg/byn;->d:Landroid/view/View;

    iget v9, p0, Lg/byn;->c:I

    iget-boolean v10, p0, Lg/byn;->j:Z

    iget-object v6, p0, Lg/byn;->e:Landroid/content/Context;

    iget-object v7, p0, Lg/byn;->h:Lg/ftn;

    invoke-direct/range {v5 .. v10}, Lg/ctb;-><init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;IZ)V

    move-object v0, v5

    :goto_0
    iget-object v1, p0, Lg/byn;->h:Lg/ftn;

    invoke-virtual {v0, v1}, Lg/gox;->ag(Lg/ftn;)V

    iget-object v1, p0, Lg/byn;->b:Lg/awq;

    invoke-virtual {v0, v1}, Lg/gox;->ae(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lg/byn;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lg/gox;->ad(Landroid/view/View;)V

    iget-object v1, p0, Lg/byn;->a:Lg/caf;

    invoke-interface {v0, v1}, Lg/us;->b(Lg/caf;)V

    iget-boolean v1, p0, Lg/byn;->k:Z

    invoke-virtual {v0, v1}, Lg/gox;->af(Z)V

    iget v1, p0, Lg/byn;->f:I

    invoke-virtual {v0, v1}, Lg/gox;->ac(I)V

    iput-object v0, p0, Lg/byn;->g:Lg/gox;

    :cond_1
    iget-object v0, p0, Lg/byn;->g:Lg/gox;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lg/byn;->g:Lg/gox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/erj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/byn;->g:Lg/gox;

    iget-object v0, p0, Lg/byn;->i:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
