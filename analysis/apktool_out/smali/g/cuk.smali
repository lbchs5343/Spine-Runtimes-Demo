.class public final Lg/cuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/us;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public i:Lg/ftn;

.field public j:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public k:Lg/caf;

.field public l:Landroid/content/Context;

.field public m:Landroid/view/LayoutInflater;

.field public n:Lg/aih;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cuk;->l:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lg/cuk;->m:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Lg/far;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lg/caf;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lg/cuk;->n:Lg/aih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/aih;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d(Lg/ftn;Z)V
    .locals 1

    iget-object v0, p0, Lg/cuk;->k:Lg/caf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/caf;->x(Lg/ftn;Z)V

    :cond_0
    return-void
.end method

.method public final e(Lg/gyg;)Z
    .locals 6

    invoke-virtual {p1}, Lg/ftn;->hasVisibleItems()Z

    move-result v0

    iget-object v1, p1, Lg/ftn;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lg/dgg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lg/dgg;->b:Lg/gyg;

    new-instance v2, Lg/gqc;

    invoke-direct {v2, v1}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/die;

    new-instance v4, Lg/cuk;

    iget-object v5, v3, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, v5}, Lg/cuk;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v4, v0, Lg/dgg;->a:Lg/cuk;

    iput-object v0, v4, Lg/cuk;->k:Lg/caf;

    invoke-virtual {p1, v4, v1}, Lg/ftn;->ap(Lg/us;Landroid/content/Context;)V

    iget-object v1, v0, Lg/dgg;->a:Lg/cuk;

    iget-object v4, v1, Lg/cuk;->n:Lg/aih;

    if-nez v4, :cond_1

    new-instance v4, Lg/aih;

    invoke-direct {v4, v1}, Lg/aih;-><init>(Lg/cuk;)V

    iput-object v4, v1, Lg/cuk;->n:Lg/aih;

    :cond_1
    iget-object v1, v1, Lg/cuk;->n:Lg/aih;

    iput-object v1, v3, Lg/die;->t:Landroid/widget/ListAdapter;

    iput-object v0, v3, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p1, Lg/ftn;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    iput-object v1, v3, Lg/die;->h:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lg/ftn;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, v3, Lg/die;->v:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lg/ftn;->p:Ljava/lang/CharSequence;

    iput-object v1, v3, Lg/die;->f:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v3, Lg/die;->c:Lg/dgg;

    invoke-virtual {v2}, Lg/gqc;->r()Lg/fpl;

    move-result-object v1

    iput-object v1, v0, Lg/dgg;->c:Lg/fpl;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lg/dgg;->c:Lg/fpl;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lg/dgg;->c:Lg/fpl;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lg/cuk;->k:Lg/caf;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lg/caf;->r(Lg/ftn;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Landroid/content/Context;Lg/ftn;)V
    .locals 1

    iget-object v0, p0, Lg/cuk;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lg/cuk;->l:Landroid/content/Context;

    iget-object v0, p0, Lg/cuk;->m:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lg/cuk;->m:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lg/cuk;->i:Lg/ftn;

    iget-object p1, p0, Lg/cuk;->n:Lg/aih;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg/aih;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final g(Lg/far;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lg/cuk;->i:Lg/ftn;

    iget-object p2, p0, Lg/cuk;->n:Lg/aih;

    invoke-virtual {p2, p3}, Lg/aih;->d(I)Lg/far;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lg/ftn;->ar(Landroid/view/MenuItem;Lg/us;I)Z

    return-void
.end method
