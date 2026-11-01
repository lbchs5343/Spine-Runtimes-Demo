.class public final Lg/aut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Lg/ceq;

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Lg/aoi;

.field public final h:Lcom/google/android/material/button/MaterialButton;

.field public i:Z

.field public j:Landroid/graphics/drawable/RippleDrawable;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Lg/ddm;

.field public o:Landroid/content/res/ColorStateList;

.field public p:I

.field public q:Lg/cjg;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Lg/dsx;

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lg/cjg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/aut;->s:Z

    iput-boolean v0, p0, Lg/aut;->w:Z

    iput-boolean v0, p0, Lg/aut;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/aut;->i:Z

    iput-object p1, p0, Lg/aut;->h:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lg/aut;->q:Lg/cjg;

    return-void
.end method


# virtual methods
.method public final aa(II)V
    .locals 8

    iget-object v0, p0, Lg/aut;->h:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lg/aut;->a:I

    iget v6, p0, Lg/aut;->p:I

    iput p2, p0, Lg/aut;->p:I

    iput p1, p0, Lg/aut;->a:I

    iget-boolean v7, p0, Lg/aut;->w:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lg/aut;->ab()V

    :cond_0
    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    add-int/2addr v4, p2

    sub-int/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final ab()V
    .locals 12

    new-instance v0, Lg/ddm;

    iget-object v1, p0, Lg/aut;->q:Lg/cjg;

    invoke-direct {v0, v1}, Lg/ddm;-><init>(Lg/cjg;)V

    iget-object v1, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lg/ddm;->em(Lg/dsx;)V

    :cond_0
    iget-object v1, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_1
    iget-object v1, p0, Lg/aut;->g:Lg/aoi;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lg/ddm;->dc:Lg/aoi;

    :cond_2
    iget-object v1, p0, Lg/aut;->h:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/ddm;->ef(Landroid/content/Context;)V

    iget-object v2, p0, Lg/aut;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lg/ddm;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lg/aut;->f:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lg/ddm;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget v2, p0, Lg/aut;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lg/aut;->d:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    iput v2, v4, Lg/dwo;->b:F

    invoke-virtual {v0}, Lg/ddm;->invalidateSelf()V

    iget-object v2, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v2, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v4, v3, :cond_4

    iput-object v3, v2, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/ddm;->onStateChange([I)Z

    :cond_4
    new-instance v2, Lg/ddm;

    iget-object v3, p0, Lg/aut;->q:Lg/cjg;

    invoke-direct {v2, v3}, Lg/ddm;-><init>(Lg/cjg;)V

    iget-object v3, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lg/ddm;->em(Lg/dsx;)V

    :cond_5
    iget-object v3, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg/ddm;->setTint(I)V

    iget v4, p0, Lg/aut;->b:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lg/aut;->s:Z

    if-eqz v5, :cond_7

    const v5, 0x7f040134

    invoke-static {v5, v1}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v2, Lg/ddm;->ds:Lg/dwo;

    iput v4, v6, Lg/dwo;->b:F

    invoke-virtual {v2}, Lg/ddm;->invalidateSelf()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v2, Lg/ddm;->ds:Lg/dwo;

    iget-object v6, v5, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v6, v4, :cond_8

    iput-object v4, v5, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/ddm;->onStateChange([I)Z

    :cond_8
    new-instance v4, Lg/ddm;

    iget-object v5, p0, Lg/aut;->q:Lg/cjg;

    invoke-direct {v4, v5}, Lg/ddm;-><init>(Lg/cjg;)V

    iput-object v4, p0, Lg/aut;->n:Lg/ddm;

    iget-object v5, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Lg/ddm;->em(Lg/dsx;)V

    :cond_9
    iget-object v4, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lg/aut;->n:Lg/ddm;

    invoke-virtual {v5, v4}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_a
    iget-object v4, p0, Lg/aut;->n:Lg/ddm;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lg/ddm;->setTint(I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lg/aut;->c:Landroid/content/res/ColorStateList;

    invoke-static {v5}, Lg/buj;->ac(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v8, p0, Lg/aut;->l:I

    iget v9, p0, Lg/aut;->a:I

    iget v10, p0, Lg/aut;->v:I

    iget v11, p0, Lg/aut;->p:I

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v0, p0, Lg/aut;->n:Lg/ddm;

    invoke-direct {v4, v5, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lg/aut;->z(Z)Lg/ddm;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v2, p0, Lg/aut;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lg/ddm;->ec(F)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_b
    return-void
.end method

.method public final x()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lg/aut;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/aut;->h:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lg/aut;->ab()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/aut;->z(Z)Lg/ddm;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lg/ddm;->em(Lg/dsx;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/aut;->q:Lg/cjg;

    invoke-virtual {v0, v1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :goto_0
    iget-object v1, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg/aut;->z(Z)Lg/ddm;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lg/ddm;->em(Lg/dsx;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lg/aut;->q:Lg/cjg;

    invoke-virtual {v1, v2}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :goto_1
    iget-object v2, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_4
    iget-object v1, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-le v1, v0, :cond_6

    iget-object v1, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    iget-object v0, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/cbe;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lg/cbe;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v1, p0, Lg/aut;->q:Lg/cjg;

    invoke-interface {v0, v1}, Lg/cbe;->setShapeAppearanceModel(Lg/cjg;)V

    instance-of v1, v0, Lg/ddm;

    if-eqz v1, :cond_8

    check-cast v0, Lg/ddm;

    iget-object v1, p0, Lg/aut;->u:Lg/dsx;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Lg/ddm;->em(Lg/dsx;)V

    :cond_7
    iget-object v1, p0, Lg/aut;->e:Lg/ceq;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lg/ddm;->ed(Lg/ceq;)V

    :cond_8
    return-void
.end method

.method public final y()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/aut;->z(Z)Lg/ddm;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lg/aut;->z(Z)Lg/ddm;

    move-result-object v2

    if-eqz v1, :cond_2

    iget v3, p0, Lg/aut;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lg/aut;->d:Landroid/content/res/ColorStateList;

    iget-object v5, v1, Lg/ddm;->ds:Lg/dwo;

    iput v3, v5, Lg/dwo;->b:F

    invoke-virtual {v1}, Lg/ddm;->invalidateSelf()V

    iget-object v3, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v5, v3, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_0

    iput-object v4, v3, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/ddm;->onStateChange([I)Z

    :cond_0
    if-eqz v2, :cond_2

    iget v1, p0, Lg/aut;->b:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lg/aut;->s:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lg/aut;->h:Lcom/google/android/material/button/MaterialButton;

    const v3, 0x7f040134

    invoke-static {v3, v0}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v0

    :cond_1
    iget-object v3, v2, Lg/ddm;->ds:Lg/dwo;

    iput v1, v3, Lg/dwo;->b:F

    invoke-virtual {v2}, Lg/ddm;->invalidateSelf()V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v2, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v1, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v3, v0, :cond_2

    iput-object v0, v1, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/ddm;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final z(Z)Lg/ddm;
    .locals 2

    iget-object v0, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lg/aut;->j:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lg/ddm;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
