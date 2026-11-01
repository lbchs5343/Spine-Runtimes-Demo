.class public final Lg/dyr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/gff;

.field public final b:Lg/hbu;

.field public c:Z


# direct methods
.method public constructor <init>(Lg/gff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dyr;->a:Lg/gff;

    new-instance p1, Lg/hbu;

    invoke-direct {p1}, Lg/hbu;-><init>()V

    iput-object p1, p0, Lg/dyr;->b:Lg/hbu;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget-object v0, p0, Lg/dyr;->a:Lg/gff;

    invoke-interface {v0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/ajs;

    iget-object v2, v2, Lg/ajs;->g:Lg/fqv;

    sget-object v3, Lg/fqv;->INITIALIZED:Lg/fqv;

    if-ne v2, v3, :cond_1

    new-instance v2, Landroidx/savedstate/Recreator;

    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Lg/gff;)V

    invoke-virtual {v1, v2}, Lg/euu;->l(Lg/ajm;)V

    iget-object v0, p0, Lg/dyr;->b:Lg/hbu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, Lg/hbu;->e:Z

    if-nez v2, :cond_0

    new-instance v2, Lg/ghw;

    invoke-direct {v2, v0}, Lg/ghw;-><init>(Lg/hbu;)V

    invoke-virtual {v1, v2}, Lg/euu;->l(Lg/ajm;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/hbu;->e:Z

    iput-boolean v1, p0, Lg/dyr;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lg/dyr;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/dyr;->d()V

    :cond_0
    iget-object v0, p0, Lg/dyr;->a:Lg/gff;

    invoke-interface {v0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    check-cast v0, Lg/ajs;

    iget-object v1, v0, Lg/ajs;->g:Lg/fqv;

    sget-object v2, Lg/fqv;->STARTED:Lg/fqv;

    invoke-virtual {v1, v2}, Lg/fqv;->b(Lg/fqv;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lg/dyr;->b:Lg/hbu;

    iget-boolean v1, v0, Lg/hbu;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lg/hbu;->a:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lg/hbu;->f:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/hbu;->a:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "performRestore cannot be called when owner is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dyr;->b:Lg/hbu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lg/hbu;->f:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Lg/hbu;->c:Lg/cfx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/dgv;

    invoke-direct {v2, v0}, Lg/dgv;-><init>(Lg/cfx;)V

    iget-object v0, v0, Lg/cfx;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2}, Lg/dgv;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lg/dgv;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fet;

    invoke-interface {v0}, Lg/fet;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
