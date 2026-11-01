.class public final Lg/bdr;
.super Landroid/widget/ToggleButton;
.source "SourceFile"

# interfaces
.implements Lg/b;


# instance fields
.field public a:Lg/do;

.field public final b:Lg/dum;

.field public final c:Lg/cic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lg/fgt;->i(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lg/dum;

    invoke-direct {p1, p0}, Lg/dum;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lg/bdr;->b:Lg/dum;

    invoke-virtual {p1, p2, v0}, Lg/dum;->h(Landroid/util/AttributeSet;I)V

    new-instance p1, Lg/cic;

    invoke-direct {p1, p0}, Lg/cic;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lg/bdr;->c:Lg/cic;

    invoke-virtual {p1, p2, v0}, Lg/cic;->v(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lg/bdr;->getEmojiTextViewHelper()Lg/do;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lg/do;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lg/do;
    .locals 1

    iget-object v0, p0, Lg/bdr;->a:Lg/do;

    if-nez v0, :cond_0

    new-instance v0, Lg/do;

    invoke-direct {v0, p0}, Lg/do;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lg/bdr;->a:Lg/do;

    :cond_0
    iget-object v0, p0, Lg/bdr;->a:Lg/do;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dum;->j()V

    :cond_0
    iget-object v0, p0, Lg/bdr;->c:Lg/cic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/cic;->y()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dum;->m()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dum;->n()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/bdr;->c:Lg/cic;

    invoke-virtual {v0}, Lg/cic;->r()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/bdr;->c:Lg/cic;

    invoke-virtual {v0}, Lg/cic;->t()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setAllCaps(Z)V

    invoke-direct {p0}, Lg/bdr;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->f(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/bdr;->b:Lg/dum;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/dum;->i()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->k(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/bdr;->c:Lg/cic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/cic;->y()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/bdr;->c:Lg/cic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/cic;->y()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lg/bdr;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lg/bdr;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/bdr;->b:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->l(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/bdr;->c:Lg/cic;

    invoke-virtual {v0, p1}, Lg/cic;->s(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lg/cic;->y()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/bdr;->c:Lg/cic;

    invoke-virtual {v0, p1}, Lg/cic;->w(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lg/cic;->y()V

    return-void
.end method
