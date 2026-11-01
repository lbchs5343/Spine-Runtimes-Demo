.class public final Lg/dum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/cxc;

.field public b:Lg/cxc;

.field public final c:Landroid/view/View;

.field public d:Lg/cxc;

.field public final e:Lg/cfl;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/dum;->f:I

    iput-object p1, p0, Lg/dum;->c:Landroid/view/View;

    invoke-static {}, Lg/cfl;->f()Lg/cfl;

    move-result-object p1

    iput-object p1, p0, Lg/dum;->e:Lg/cfl;

    return-void
.end method


# virtual methods
.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    if-nez v0, :cond_0

    new-instance v0, Lg/cxc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cxc;-><init>(I)V

    iput-object v0, p0, Lg/dum;->b:Lg/cxc;

    :cond_0
    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    iput-object p1, v0, Lg/cxc;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cxc;->e:Z

    invoke-virtual {p0}, Lg/dum;->j()V

    return-void
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 9

    iget-object v0, p0, Lg/dum;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lg/acs;->a:[I

    invoke-static {v1, p1, v4, p2}, Lg/dzh;->j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/dzh;

    move-result-object v1

    iget-object v2, v1, Lg/dzh;->f:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/content/res/TypedArray;

    iget-object v2, p0, Lg/dum;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Lg/dzh;->f:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/content/res/TypedArray;

    move-object v5, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lg/goi;->x(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lg/dum;->f:I

    iget-object p2, p0, Lg/dum;->e:Lg/cfl;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lg/dum;->f:I

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p2, Lg/cfl;->c:Lg/ezw;

    invoke-virtual {v5, v3, v4}, Lg/ezw;->u(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p2

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lg/dum;->o(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    const/4 p2, 0x1

    invoke-virtual {v8, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p2}, Lg/dzh;->aa(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v0, v3}, Lg/goi;->y(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lg/edd;->f(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v2}, Lg/cd;->i(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0x15

    if-ne v3, v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0}, Lg/cd;->l(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lg/cd;->c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    invoke-virtual {v1}, Lg/dzh;->af()V

    return-void

    :goto_1
    invoke-virtual {v1}, Lg/dzh;->af()V

    throw p1
.end method

.method public final i()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lg/dum;->f:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/dum;->o(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lg/dum;->j()V

    return-void
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lg/dum;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lg/dum;->a:Lg/cxc;

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_5

    :goto_0
    iget-object v2, p0, Lg/dum;->d:Lg/cxc;

    if-nez v2, :cond_1

    new-instance v2, Lg/cxc;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lg/cxc;-><init>(I)V

    iput-object v2, p0, Lg/dum;->d:Lg/cxc;

    :cond_1
    iget-object v2, p0, Lg/dum;->d:Lg/cxc;

    const/4 v3, 0x0

    iput-object v3, v2, Lg/cxc;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lg/cxc;->e:Z

    iput-object v3, v2, Lg/cxc;->b:Ljava/lang/Object;

    iput-boolean v4, v2, Lg/cxc;->d:Z

    sget-object v3, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg/cd;->l(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iput-boolean v4, v2, Lg/cxc;->e:Z

    iput-object v3, v2, Lg/cxc;->a:Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lg/cd;->c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-boolean v4, v2, Lg/cxc;->d:Z

    iput-object v3, v2, Lg/cxc;->b:Ljava/lang/Object;

    :cond_3
    iget-boolean v3, v2, Lg/cxc;->e:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lg/cxc;->d:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Lg/cfl;->e(Landroid/graphics/drawable/Drawable;Lg/cxc;[I)V

    return-void

    :cond_5
    iget-object v2, p0, Lg/dum;->b:Lg/cxc;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Lg/cfl;->e(Landroid/graphics/drawable/Drawable;Lg/cxc;[I)V

    return-void

    :cond_6
    iget-object v2, p0, Lg/dum;->a:Lg/cxc;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Lg/cfl;->e(Landroid/graphics/drawable/Drawable;Lg/cxc;[I)V

    :cond_7
    return-void
.end method

.method public final k(I)V
    .locals 3

    iput p1, p0, Lg/dum;->f:I

    iget-object v0, p0, Lg/dum;->e:Lg/cfl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/dum;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg/cfl;->c:Lg/ezw;

    invoke-virtual {v2, v1, p1}, Lg/ezw;->u(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lg/dum;->o(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lg/dum;->j()V

    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    if-nez v0, :cond_0

    new-instance v0, Lg/cxc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cxc;-><init>(I)V

    iput-object v0, p0, Lg/dum;->b:Lg/cxc;

    :cond_0
    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    iput-object p1, v0, Lg/cxc;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cxc;->d:Z

    invoke-virtual {p0}, Lg/dum;->j()V

    return-void
.end method

.method public final m()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/dum;->b:Lg/cxc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cxc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/dum;->a:Lg/cxc;

    if-nez v0, :cond_0

    new-instance v0, Lg/cxc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cxc;-><init>(I)V

    iput-object v0, p0, Lg/dum;->a:Lg/cxc;

    :cond_0
    iget-object v0, p0, Lg/dum;->a:Lg/cxc;

    iput-object p1, v0, Lg/cxc;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cxc;->e:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lg/dum;->a:Lg/cxc;

    :goto_0
    invoke-virtual {p0}, Lg/dum;->j()V

    return-void
.end method
