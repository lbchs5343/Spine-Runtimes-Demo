.class public final Lg/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lg/aeb;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public final d:Landroid/view/View;

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dv;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final g(F)V
    .locals 2

    iget-object v0, p0, Lg/dv;->d:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lg/dv;->e:F

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getRipple()F
    .locals 1

    iget v0, p0, Lg/dv;->a:F

    return v0
.end method

.method public final getRubIn()F
    .locals 1

    iget v0, p0, Lg/dv;->f:F

    return v0
.end method

.method public final getShine()F
    .locals 1

    iget v0, p0, Lg/dv;->b:F

    return v0
.end method

.method public final getStretch()F
    .locals 1

    iget v0, p0, Lg/dv;->c:F

    return v0
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lg/dv;->d:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method
