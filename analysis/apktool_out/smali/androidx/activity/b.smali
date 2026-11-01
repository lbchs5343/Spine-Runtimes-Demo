.class public final Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/window/OnBackInvokedCallback;

.field public b:Landroid/window/OnBackInvokedDispatcher;

.field public final c:Ljava/lang/Runnable;

.field public d:Z

.field public final e:Lg/fbz;

.field public f:Lg/bcn;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->c:Ljava/lang/Runnable;

    new-instance p1, Lg/fbz;

    invoke-direct {p1}, Lg/fbz;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->e:Lg/fbz;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    new-instance p1, Lg/eej;

    invoke-direct {p1, p0}, Lg/eej;-><init>(Landroidx/activity/b;)V

    new-instance v0, Lg/goq;

    invoke-direct {v0, p0}, Lg/goq;-><init>(Landroidx/activity/b;)V

    new-instance v1, Lg/dxi;

    invoke-direct {v1, p0}, Lg/dxi;-><init>(Landroidx/activity/b;)V

    new-instance v2, Lg/fab;

    invoke-direct {v2, p0}, Lg/fab;-><init>(Landroidx/activity/b;)V

    sget-object v3, Lg/dkw;->a:Lg/dkw;

    invoke-virtual {v3, p1, v0, v1, v2}, Lg/dkw;->b(Lg/and;Lg/and;Lg/cvw;Lg/cvw;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/gws;

    invoke-direct {p1, p0}, Lg/gws;-><init>(Landroidx/activity/b;)V

    sget-object v0, Lg/fyo;->a:Lg/fyo;

    invoke-virtual {v0, p1}, Lg/fyo;->b(Lg/cvw;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/activity/b;->a:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/b;->g:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/b;->e:Lg/fbz;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/fbz;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bcn;

    iget-boolean v3, v3, Lg/bcn;->c:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/activity/b;->g:Z

    if-eq v1, v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/activity/b;->k(Z)V

    :cond_3
    return-void
.end method

.method public final i(Lg/iz;Lg/bcn;)V
    .locals 9

    const-string v0, "owner"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lg/ajs;

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    sget-object v1, Lg/fqv;->DESTROYED:Lg/fqv;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/b;Lg/euu;Lg/bcn;)V

    iget-object p1, p2, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/b;->h()V

    new-instance v1, Lg/bwm;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-class v4, Landroidx/activity/b;

    const-string v5, "updateEnabledCallbacks"

    const-string v6, "updateEnabledCallbacks()V"

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lg/bwm;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p2, Lg/bcn;->e:Lg/fgb;

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/b;->e:Lg/fbz;

    invoke-virtual {v0}, Lg/fbz;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/bcn;

    iget-boolean v3, v3, Lg/bcn;->c:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lg/bcn;

    iput-object v2, p0, Landroidx/activity/b;->f:Lg/bcn;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lg/bcn;->f()V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/activity/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final k(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/b;->b:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroidx/activity/b;->a:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    sget-object v3, Lg/fyo;->a:Lg/fyo;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroidx/activity/b;->d:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v2, v1}, Lg/fyo;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/b;->d:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/b;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0, v1}, Lg/fyo;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/b;->d:Z

    :cond_1
    return-void
.end method
