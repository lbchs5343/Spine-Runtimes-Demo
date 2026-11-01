.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Lg/bbq;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/bbq;",
        "Lg/ajm;"
    }
.end annotation


# instance fields
.field public final a:Lg/iz;

.field public final synthetic c:Landroidx/lifecycle/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a;Lg/iz;Lg/jn;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroidx/lifecycle/a;

    invoke-direct {p0, p1, p3}, Lg/bbq;-><init>(Landroidx/lifecycle/a;Lg/jn;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lg/iz;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lg/iz;

    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p2

    check-cast p2, Lg/ajs;

    iget-object p2, p2, Lg/ajs;->g:Lg/fqv;

    sget-object v0, Lg/fqv;->DESTROYED:Lg/fqv;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroidx/lifecycle/a;

    iget-object p2, p0, Lg/bbq;->i:Lg/jn;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/a;->m(Lg/jn;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lg/bbq;->k(Z)V

    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    check-cast v0, Lg/ajs;

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lg/iz;)Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lg/iz;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lg/iz;

    invoke-interface {v0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    check-cast v0, Lg/ajs;

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    sget-object v1, Lg/fqv;->STARTED:Lg/fqv;

    invoke-virtual {v0, v1}, Lg/fqv;->b(Lg/fqv;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lg/iz;

    invoke-interface {v0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/euu;->n(Lg/esc;)V

    return-void
.end method
