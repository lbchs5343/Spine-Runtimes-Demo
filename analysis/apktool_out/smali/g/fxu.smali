.class public final Lg/fxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fps;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/view/Window$Callback;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroidx/appcompat/widget/Toolbar;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public j:Lg/esf;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public final m:Ljava/lang/CharSequence;

.field public final n:Landroid/view/View;

.field public final o:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/fxu;->d:I

    iput-object p1, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lg/fxu;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lg/fxu;->k:Ljava/lang/CharSequence;

    iget-object v1, p0, Lg/fxu;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lg/fxu;->o:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lg/fxu;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lg/acs;->j:[I

    const v4, 0x7f040007

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4}, Lg/dzh;->j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/dzh;

    move-result-object v1

    iget-object v3, v1, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/TypedArray;

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Lg/dzh;->o(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lg/fxu;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_f

    const/16 p2, 0x1b

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v2, p0, Lg/fxu;->o:Z

    iget-object v2, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lg/fxu;->a:Ljava/lang/CharSequence;

    iget v4, p0, Lg/fxu;->l:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lg/fxu;->o:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lg/goi;->r(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x19

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p2}, Lg/fxu;->r(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p2, 0x14

    invoke-virtual {v1, p2}, Lg/dzh;->o(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    iput-object p2, p0, Lg/fxu;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg/fxu;->p()V

    :cond_3
    const/16 p2, 0x11

    invoke-virtual {v1, p2}, Lg/dzh;->o(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    iput-object p2, p0, Lg/fxu;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg/fxu;->p()V

    :cond_4
    iget-object p2, p0, Lg/fxu;->i:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_6

    iget-object p2, p0, Lg/fxu;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    iput-object p2, p0, Lg/fxu;->i:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget v4, p0, Lg/fxu;->l:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    const/16 p2, 0xa

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lg/fxu;->q(I)V

    const/16 p2, 0x9

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lg/fxu;->n:Landroid/view/View;

    if-eqz v2, :cond_7

    iget v4, p0, Lg/fxu;->l:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iput-object p2, p0, Lg/fxu;->n:Landroid/view/View;

    if-eqz p2, :cond_8

    iget v2, p0, Lg/fxu;->l:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget p2, p0, Lg/fxu;->l:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lg/fxu;->q(I)V

    :cond_9
    const/16 p2, 0xd

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    const/4 p2, 0x7

    const/4 v2, -0x1

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    if-gez p2, :cond_b

    if-ltz v2, :cond_c

    :cond_b
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->ba()V

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->e:Lg/end;

    invoke-virtual {v4, p2, v2}, Lg/end;->i(II)V

    :cond_c
    const/16 p2, 0x1c

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->q:I

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->ah:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 p2, 0x1a

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->ar:I

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->p:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_e

    invoke-virtual {v4, v2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_e
    const/16 p2, 0x16

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lg/fxu;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_10
    const/16 v4, 0xb

    :goto_2
    iput v4, p0, Lg/fxu;->l:I

    :cond_11
    :goto_3
    invoke-virtual {v1}, Lg/dzh;->af()V

    iget p2, p0, Lg/fxu;->d:I

    const v0, 0x7f120006

    if-ne v0, p2, :cond_12

    goto :goto_5

    :cond_12
    iput v0, p0, Lg/fxu;->d:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget p2, p0, Lg/fxu;->d:I

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lg/fxu;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lg/fxu;->s()V

    :cond_14
    :goto_5
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lg/fxu;->m:Ljava/lang/CharSequence;

    new-instance p2, Lg/anh;

    invoke-direct {p2, p0}, Lg/anh;-><init>(Lg/fxu;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 2

    iget v0, p0, Lg/fxu;->l:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fxu;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fxu;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fxu;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final q(I)V
    .locals 4

    iget v0, p0, Lg/fxu;->l:I

    xor-int/2addr v0, p1

    iput p1, p0, Lg/fxu;->l:I

    if-eqz v0, :cond_8

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/fxu;->s()V

    :cond_0
    iget v1, p0, Lg/fxu;->l:I

    and-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fxu;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/fxu;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lg/fxu;->p()V

    :cond_4
    and-int/lit8 v1, v0, 0x8

    iget-object v3, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_6

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg/fxu;->a:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lg/fxu;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/fxu;->n:Landroid/view/View;

    if-eqz v0, :cond_8

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public final r(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lg/fxu;->k:Ljava/lang/CharSequence;

    iget v0, p0, Lg/fxu;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    iget v0, p0, Lg/fxu;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fxu;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    iget v0, p0, Lg/fxu;->d:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/fxu;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
