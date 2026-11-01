.class public final Lg/ctb;
.super Lg/gox;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final aa:I

.field public final i:Lg/alt;

.field public j:Z

.field public k:Z

.field public final l:I

.field public m:Landroid/view/ViewTreeObserver;

.field public final n:Lg/bwh;

.field public final o:Lg/ftn;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/PopupWindow$OnDismissListener;

.field public r:I

.field public final s:Lg/hen;

.field public final t:Z

.field public u:I

.field public final v:Lg/fhv;

.field public final w:Landroid/content/Context;

.field public x:Lg/caf;

.field public y:Z

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fhv;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/fhv;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ctb;->v:Lg/fhv;

    new-instance v0, Lg/bwh;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lg/bwh;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ctb;->n:Lg/bwh;

    const/4 v0, 0x0

    iput v0, p0, Lg/ctb;->r:I

    iput-object p1, p0, Lg/ctb;->w:Landroid/content/Context;

    iput-object p2, p0, Lg/ctb;->o:Lg/ftn;

    iput-boolean p5, p0, Lg/ctb;->t:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Lg/hen;

    const v3, 0x7f0c0013

    invoke-direct {v2, p2, v1, p5, v3}, Lg/hen;-><init>(Lg/ftn;Landroid/view/LayoutInflater;ZI)V

    iput-object v2, p0, Lg/ctb;->s:Lg/hen;

    iput p4, p0, Lg/ctb;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f070017

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lg/ctb;->aa:I

    iput-object p3, p0, Lg/ctb;->p:Landroid/view/View;

    new-instance p3, Lg/alt;

    const/4 p5, 0x0

    invoke-direct {p3, p1, p5, p4, v0}, Lg/cfi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lg/ctb;->i:Lg/alt;

    invoke-virtual {p2, p0, p1}, Lg/ftn;->ap(Lg/us;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final ab(I)V
    .locals 1

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    iput p1, v0, Lg/cfi;->ao:I

    return-void
.end method

.method public final ac(I)V
    .locals 0

    iput p1, p0, Lg/ctb;->r:I

    return-void
.end method

.method public final ad(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg/ctb;->p:Landroid/view/View;

    return-void
.end method

.method public final ae(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lg/ctb;->q:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final af(Z)V
    .locals 1

    iget-object v0, p0, Lg/ctb;->s:Lg/hen;

    iput-boolean p1, v0, Lg/hen;->f:Z

    return-void
.end method

.method public final ag(Lg/ftn;)V
    .locals 0

    return-void
.end method

.method public final ah(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/ctb;->k:Z

    return-void
.end method

.method public final ai(I)V
    .locals 1

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    invoke-virtual {v0, p1}, Lg/cfi;->i(I)V

    return-void
.end method

.method public final aq()Lg/bgv;
    .locals 1

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    iget-object v0, v0, Lg/cfi;->x:Lg/bgv;

    return-object v0
.end method

.method public final b(Lg/caf;)V
    .locals 0

    iput-object p1, p0, Lg/ctb;->x:Lg/caf;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ctb;->y:Z

    iget-object v0, p0, Lg/ctb;->s:Lg/hen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/hen;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d(Lg/ftn;Z)V
    .locals 1

    iget-object v0, p0, Lg/ctb;->o:Lg/ftn;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/ctb;->dismiss()V

    iget-object v0, p0, Lg/ctb;->x:Lg/caf;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lg/caf;->x(Lg/ftn;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lg/ctb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    invoke-virtual {v0}, Lg/cfi;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(Lg/gyg;)Z
    .locals 9

    invoke-virtual {p1}, Lg/ftn;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    new-instance v2, Lg/byn;

    iget-object v5, p0, Lg/ctb;->z:Landroid/view/View;

    iget v7, p0, Lg/ctb;->l:I

    const/4 v8, 0x0

    iget-object v3, p0, Lg/ctb;->w:Landroid/content/Context;

    iget-boolean v6, p0, Lg/ctb;->t:Z

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lg/byn;-><init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;ZII)V

    iget-object p1, p0, Lg/ctb;->x:Lg/caf;

    iput-object p1, v2, Lg/byn;->a:Lg/caf;

    iget-object v0, v2, Lg/byn;->g:Lg/gox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/us;->b(Lg/caf;)V

    :cond_0
    iget-object p1, v4, Lg/ftn;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    invoke-virtual {v4, v0}, Lg/ftn;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v2, Lg/byn;->k:Z

    iget-object v0, v2, Lg/byn;->g:Lg/gox;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lg/gox;->af(Z)V

    :cond_3
    iget-object p1, p0, Lg/ctb;->q:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, v2, Lg/byn;->i:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/ctb;->q:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object p1, p0, Lg/ctb;->o:Lg/ftn;

    invoke-virtual {p1, v1}, Lg/ftn;->at(Z)V

    iget-object p1, p0, Lg/ctb;->i:Lg/alt;

    iget v0, p1, Lg/cfi;->ao:I

    invoke-virtual {p1}, Lg/cfi;->d()I

    move-result p1

    iget v5, p0, Lg/ctb;->r:I

    iget-object v6, p0, Lg/ctb;->p:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lg/ctb;->p:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    :cond_4
    invoke-virtual {v2}, Lg/byn;->n()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, v2, Lg/byn;->d:Landroid/view/View;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0, p1, v3, v3}, Lg/byn;->l(IIZZ)V

    :goto_2
    iget-object p1, p0, Lg/ctb;->x:Lg/caf;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Lg/caf;->r(Lg/ftn;)Z

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lg/ctb;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    iget-object v0, v0, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ctb;->j:Z

    iget-object v1, p0, Lg/ctb;->o:Lg/ftn;

    invoke-virtual {v1, v0}, Lg/ftn;->at(Z)V

    iget-object v0, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ctb;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lg/ctb;->v:Lg/fhv;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lg/ctb;->z:Landroid/view/View;

    iget-object v1, p0, Lg/ctb;->n:Lg/bwh;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lg/ctb;->q:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lg/ctb;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final show()V
    .locals 8

    invoke-virtual {p0}, Lg/ctb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/ctb;->j:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lg/ctb;->p:Landroid/view/View;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lg/ctb;->z:Landroid/view/View;

    iget-object v0, p0, Lg/ctb;->i:Lg/alt;

    iget-object v1, v0, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, Lg/cfi;->q:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/cfi;->t:Z

    iget-object v2, v0, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, p0, Lg/ctb;->z:Landroid/view/View;

    iget-object v3, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lg/ctb;->m:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lg/ctb;->v:Lg/fhv;

    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v3, p0, Lg/ctb;->n:Lg/bwh;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v2, v0, Lg/cfi;->v:Landroid/view/View;

    iget v2, p0, Lg/ctb;->r:I

    iput v2, v0, Lg/cfi;->y:I

    iget-boolean v2, p0, Lg/ctb;->y:Z

    iget-object v3, p0, Lg/ctb;->w:Landroid/content/Context;

    iget-object v5, p0, Lg/ctb;->s:Lg/hen;

    if-nez v2, :cond_3

    iget v2, p0, Lg/ctb;->aa:I

    invoke-static {v5, v3, v2}, Lg/gox;->as(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lg/ctb;->u:I

    iput-boolean v1, p0, Lg/ctb;->y:Z

    :cond_3
    iget v1, p0, Lg/ctb;->u:I

    invoke-virtual {v0, v1}, Lg/cfi;->ap(I)V

    const/4 v1, 0x2

    iget-object v2, v0, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lg/gox;->ar:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    iput-object v6, v0, Lg/cfi;->ah:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lg/cfi;->show()V

    iget-object v1, v0, Lg/cfi;->x:Lg/bgv;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v6, p0, Lg/ctb;->k:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lg/ctb;->o:Lg/ftn;

    iget-object v7, v6, Lg/ftn;->p:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0c0012

    invoke-virtual {v3, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    iget-object v6, v6, Lg/ftn;->p:Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    invoke-virtual {v0, v5}, Lg/cfi;->h(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Lg/cfi;->show()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
