.class public Lg/fqn;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Lg/dvn;
.implements Lg/b;


# instance fields
.field public final ac:Lg/cic;

.field public ad:Lg/do;

.field public final ae:Lg/cr;

.field public final af:Lg/dum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lg/bhh;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lg/fgt;->i(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lg/cr;

    invoke-direct {p1, p0}, Lg/cr;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lg/fqn;->ae:Lg/cr;

    invoke-virtual {p1, p2, p3}, Lg/cr;->j(Landroid/util/AttributeSet;I)V

    new-instance p1, Lg/dum;

    invoke-direct {p1, p0}, Lg/dum;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lg/fqn;->af:Lg/dum;

    invoke-virtual {p1, p2, p3}, Lg/dum;->h(Landroid/util/AttributeSet;I)V

    new-instance p1, Lg/cic;

    invoke-direct {p1, p0}, Lg/cic;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lg/fqn;->ac:Lg/cic;

    invoke-virtual {p1, p2, p3}, Lg/cic;->v(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lg/fqn;->getEmojiTextViewHelper()Lg/do;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lg/do;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lg/do;
    .locals 1

    iget-object v0, p0, Lg/fqn;->ad:Lg/do;

    if-nez v0, :cond_0

    new-instance v0, Lg/do;

    invoke-direct {v0, p0}, Lg/do;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lg/fqn;->ad:Lg/do;

    :cond_0
    iget-object v0, p0, Lg/fqn;->ad:Lg/do;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dum;->j()V

    :cond_0
    iget-object v0, p0, Lg/fqn;->ac:Lg/cic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/cic;->y()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

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

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dum;->n()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/fqn;->ae:Lg/cr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cr;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/fqn;->ae:Lg/cr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cr;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/fqn;->ac:Lg/cic;

    invoke-virtual {v0}, Lg/cic;->r()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/fqn;->ac:Lg/cic;

    invoke-virtual {v0}, Lg/cic;->t()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAllCaps(Z)V

    invoke-direct {p0}, Lg/fqn;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->f(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/fqn;->af:Lg/dum;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/dum;->i()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->k(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fqn;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/fqn;->ae:Lg/cr;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lg/cr;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/cr;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/cr;->b:Z

    invoke-virtual {p1}, Lg/cr;->h()V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/fqn;->ac:Lg/cic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/cic;->y()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/fqn;->ac:Lg/cic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/cic;->y()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lg/fqn;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lg/fqn;->getEmojiTextViewHelper()Lg/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/do;->d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->af:Lg/dum;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dum;->l(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->ae:Lg/cr;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/cr;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cr;->f:Z

    invoke-virtual {v0}, Lg/cr;->h()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->ae:Lg/cr;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/cr;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cr;->a:Z

    invoke-virtual {v0}, Lg/cr;->h()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->ac:Lg/cic;

    invoke-virtual {v0, p1}, Lg/cic;->s(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lg/cic;->y()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/fqn;->ac:Lg/cic;

    invoke-virtual {v0, p1}, Lg/cic;->w(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lg/cic;->y()V

    return-void
.end method
