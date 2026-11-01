.class public final Lg/gmn;
.super Lg/gqc;
.source "SourceFile"


# instance fields
.field public final h:Lg/ddm;

.field public final n:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lg/gzy;I)V
    .locals 13

    const v0, 0x7f04033e

    invoke-static {p1, v0}, Lg/bfc;->i(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    :goto_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x7f04002e

    const v6, 0x7f130176

    invoke-static {p1, v4, v5, v6, v3}, Lg/egh;->w(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;

    move-result-object v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lg/gzy;

    invoke-direct {v7, v3, v1}, Lg/gzy;-><init>(Landroid/content/Context;I)V

    move-object v3, v7

    :goto_1
    if-nez p2, :cond_3

    invoke-static {p1, v0}, Lg/bfc;->i(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    iget p1, p1, Landroid/util/TypedValue;->data:I

    move p2, p1

    :cond_3
    :goto_2
    invoke-direct {p0, v3, p2}, Lg/gqc;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/die;

    iget-object v7, p1, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array v12, v2, [I

    const/4 v8, 0x0

    const v10, 0x7f04002e

    const v11, 0x7f130176

    invoke-static {v7, v8, v10, v11}, Lg/eyt;->bn(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v9, Lg/git;->k:[I

    invoke-static/range {v7 .. v12}, Lg/eyt;->ap(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070370

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f07036e

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v8, 0x1

    invoke-virtual {p2, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07036d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p2, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, v8, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v0

    :goto_3
    if-ne p2, v8, :cond_5

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v10, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lg/gmn;->n:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f040134

    invoke-static {v7, v0, p2}, Lg/bfc;->ad(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object p2

    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_6

    invoke-static {v7, v0}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p2

    goto :goto_5

    :cond_6
    iget p2, p2, Landroid/util/TypedValue;->data:I

    :goto_5
    invoke-virtual {v7, v4, v9, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lg/ddm;

    invoke-direct {v0, v7, v4, v5, v6}, Lg/ddm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0, v7}, Lg/ddm;->ef(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_7

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x1010571

    invoke-virtual {p1, v1, p2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/die;

    iget-object p1, p1, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    iget p2, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne p2, v1, :cond_7

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    iget-object p2, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object p2, p2, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {p2}, Lg/cjg;->r()Lg/bem;

    move-result-object p2

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, p2, Lg/bem;->e:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, p2, Lg/bem;->g:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, p2, Lg/bem;->l:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, p2, Lg/bem;->a:Lg/gjn;

    invoke-virtual {p2}, Lg/bem;->n()Lg/cjg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :cond_7
    iput-object v0, p0, Lg/gmn;->h:Lg/ddm;

    return-void
.end method


# virtual methods
.method public final p(I)V
    .locals 0

    invoke-super {p0, p1}, Lg/gqc;->am(I)Lg/gqc;

    return-void
.end method

.method public final q(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iput-object p1, v0, Lg/die;->x:Ljava/lang/CharSequence;

    iput-object p2, v0, Lg/die;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final r()Lg/fpl;
    .locals 10

    invoke-super {p0}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lg/gmn;->h:Lg/ddm;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v3

    invoke-virtual {v4, v3}, Lg/ddm;->ec(F)V

    :cond_0
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget-object v9, p0, Lg/gmn;->n:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    iget v7, v9, Landroid/graphics/Rect;->right:I

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lg/dpr;

    invoke-direct {v1, v0, v9}, Lg/dpr;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v0}, Lg/ckd;->al(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lg/gta;

    invoke-direct {v2, v1}, Lg/gta;-><init>(Landroid/view/View;)V

    new-instance v3, Lg/bwh;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lg/bwh;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public final s(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    return-void
.end method

.method public final t(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v1, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lg/die;->b:Ljava/lang/CharSequence;

    iput-object p2, v0, Lg/die;->g:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iput-object p1, v0, Lg/die;->u:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lg/die;->n:I

    return-void
.end method

.method public final x(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    const p1, 0x7f120088

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final y(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
