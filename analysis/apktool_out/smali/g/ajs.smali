.class public final Lg/ajs;
.super Lg/euu;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/ref/WeakReference;

.field public c:I

.field public final d:Z

.field public e:Z

.field public f:Lg/azq;

.field public g:Lg/fqv;

.field public h:Z


# direct methods
.method public constructor <init>(Lg/iz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ajs;->d:Z

    new-instance v0, Lg/azq;

    invoke-direct {v0}, Lg/azq;-><init>()V

    iput-object v0, p0, Lg/ajs;->f:Lg/azq;

    sget-object v0, Lg/fqv;->INITIALIZED:Lg/fqv;

    iput-object v0, p0, Lg/ajs;->g:Lg/fqv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/ajs;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 7

    iget-object v0, p0, Lg/ajs;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/iz;

    if-eqz v0, :cond_8

    :cond_0
    iget-object v1, p0, Lg/ajs;->f:Lg/azq;

    iget v2, v1, Lg/cfx;->e:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lg/cfx;->f:Lg/frv;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v1, v1, Lg/frv;->d:Ljava/lang/Object;

    check-cast v1, Lg/fpn;

    iget-object v1, v1, Lg/fpn;->a:Lg/fqv;

    iget-object v2, p0, Lg/ajs;->f:Lg/azq;

    iget-object v2, v2, Lg/cfx;->g:Lg/frv;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/frv;->d:Ljava/lang/Object;

    check-cast v2, Lg/fpn;

    iget-object v2, v2, Lg/fpn;->a:Lg/fqv;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lg/ajs;->g:Lg/fqv;

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v3, p0, Lg/ajs;->h:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Lg/ajs;->h:Z

    iget-object v1, p0, Lg/ajs;->g:Lg/fqv;

    iget-object v2, p0, Lg/ajs;->f:Lg/azq;

    iget-object v2, v2, Lg/cfx;->f:Lg/frv;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/frv;->d:Ljava/lang/Object;

    check-cast v2, Lg/fpn;

    iget-object v2, v2, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lg/ajs;->f:Lg/azq;

    new-instance v2, Lg/cwl;

    iget-object v3, v1, Lg/cfx;->g:Lg/frv;

    iget-object v4, v1, Lg/cfx;->f:Lg/frv;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lg/cwl;-><init>(Lg/frv;Lg/frv;I)V

    iget-object v1, v1, Lg/cfx;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lg/cwl;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lg/ajs;->h:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lg/cwl;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "next()"

    invoke-static {v1, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/esc;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fpn;

    :goto_1
    iget-object v4, v1, Lg/fpn;->a:Lg/fqv;

    iget-object v5, p0, Lg/ajs;->g:Lg/fqv;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lg/ajs;->h:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lg/ajs;->f:Lg/azq;

    iget-object v4, v4, Lg/azq;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lg/dtn;->Companion:Lg/uu;

    iget-object v5, v1, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lg/uu;->a(Lg/fqv;)Lg/dtn;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lg/dtn;->a()Lg/fqv;

    move-result-object v5

    iget-object v6, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v4}, Lg/fpn;->c(Lg/iz;Lg/dtn;)V

    iget-object v4, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event down from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, p0, Lg/ajs;->f:Lg/azq;

    iget-object v1, v1, Lg/cfx;->g:Lg/frv;

    iget-boolean v2, p0, Lg/ajs;->h:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/ajs;->g:Lg/fqv;

    iget-object v1, v1, Lg/frv;->d:Ljava/lang/Object;

    check-cast v1, Lg/fpn;

    iget-object v1, v1, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lg/ajs;->f:Lg/azq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/dgv;

    invoke-direct {v2, v1}, Lg/dgv;-><init>(Lg/cfx;)V

    iget-object v1, v1, Lg/cfx;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2}, Lg/dgv;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lg/ajs;->h:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lg/dgv;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/esc;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fpn;

    :goto_2
    iget-object v4, v1, Lg/fpn;->a:Lg/fqv;

    iget-object v5, p0, Lg/ajs;->g:Lg/fqv;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-boolean v4, p0, Lg/ajs;->h:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lg/ajs;->f:Lg/azq;

    iget-object v4, v4, Lg/azq;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lg/fpn;->a:Lg/fqv;

    iget-object v5, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lg/dtn;->Companion:Lg/uu;

    iget-object v5, v1, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lg/uu;->b(Lg/fqv;)Lg/dtn;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v0, v4}, Lg/fpn;->c(Lg/iz;Lg/dtn;)V

    iget-object v4, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event up from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lg/ajs;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dav;->d()Lg/dav;

    move-result-object v0

    iget-object v0, v0, Lg/dav;->c:Lg/fja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Method "

    const-string v1, " must be called on the main thread"

    invoke-static {v0, p1, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final k(Lg/dtn;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Lg/ajs;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/dtn;->a()Lg/fqv;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ajs;->m(Lg/fqv;)V

    return-void
.end method

.method public final l(Lg/ajm;)V
    .locals 7

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Lg/ajs;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lg/ajs;->g:Lg/fqv;

    sget-object v1, Lg/fqv;->DESTROYED:Lg/fqv;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/fqv;->INITIALIZED:Lg/fqv;

    :goto_0
    new-instance v0, Lg/fpn;

    const-string v2, "initialState"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v2, Lg/bqv;->a:I

    instance-of v2, p1, Lg/blu;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v4, p1

    check-cast v4, Lg/blu;

    invoke-direct {v2, v4, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lg/blu;Lg/ajm;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v2, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v4, p1

    check-cast v4, Lg/blu;

    invoke-direct {v2, v4, v3}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lg/blu;Lg/ajm;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    iput-object v2, v0, Lg/fpn;->b:Lg/ajm;

    iput-object v1, v0, Lg/fpn;->a:Lg/fqv;

    iget-object v1, p0, Lg/ajs;->f:Lg/azq;

    invoke-virtual {v1, p1}, Lg/azq;->b(Ljava/lang/Object;)Lg/frv;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v3, v2, Lg/frv;->d:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lg/azq;->a:Ljava/util/HashMap;

    new-instance v5, Lg/frv;

    invoke-direct {v5, p1, v0}, Lg/frv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v6, v1, Lg/cfx;->e:I

    add-int/2addr v6, v4

    iput v6, v1, Lg/cfx;->e:I

    iget-object v6, v1, Lg/cfx;->g:Lg/frv;

    if-nez v6, :cond_4

    iput-object v5, v1, Lg/cfx;->f:Lg/frv;

    iput-object v5, v1, Lg/cfx;->g:Lg/frv;

    goto :goto_2

    :cond_4
    iput-object v5, v6, Lg/frv;->a:Lg/frv;

    iput-object v6, v5, Lg/frv;->b:Lg/frv;

    iput-object v5, v1, Lg/cfx;->g:Lg/frv;

    :goto_2
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v3, Lg/fpn;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lg/ajs;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/iz;

    if-nez v1, :cond_6

    :goto_4
    return-void

    :cond_6
    iget v2, p0, Lg/ajs;->c:I

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lg/ajs;->e:Z

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x1

    :goto_6
    invoke-virtual {p0, p1}, Lg/ajs;->o(Lg/ajm;)Lg/fqv;

    move-result-object v3

    iget v5, p0, Lg/ajs;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lg/ajs;->c:I

    :goto_7
    iget-object v5, v0, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v5, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_a

    iget-object v3, p0, Lg/ajs;->f:Lg/azq;

    iget-object v3, v3, Lg/azq;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lg/fpn;->a:Lg/fqv;

    iget-object v5, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lg/dtn;->Companion:Lg/uu;

    iget-object v6, v0, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lg/uu;->b(Lg/fqv;)Lg/dtn;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1, v3}, Lg/fpn;->c(Lg/iz;Lg/dtn;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lg/ajs;->o(Lg/ajm;)Lg/fqv;

    move-result-object v3

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg/fpn;->a:Lg/fqv;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez v2, :cond_b

    invoke-virtual {p0}, Lg/ajs;->i()V

    :cond_b
    iget p1, p0, Lg/ajs;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/ajs;->c:I

    return-void
.end method

.method public final m(Lg/fqv;)V
    .locals 2

    iget-object v0, p0, Lg/ajs;->g:Lg/fqv;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lg/fqv;->INITIALIZED:Lg/fqv;

    if-ne v0, v1, :cond_2

    sget-object v0, Lg/fqv;->DESTROYED:Lg/fqv;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no event down from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/ajs;->g:Lg/fqv;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/ajs;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Lg/ajs;->g:Lg/fqv;

    iget-boolean p1, p0, Lg/ajs;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Lg/ajs;->c:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Lg/ajs;->e:Z

    invoke-virtual {p0}, Lg/ajs;->i()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ajs;->e:Z

    iget-object p1, p0, Lg/ajs;->g:Lg/fqv;

    sget-object v0, Lg/fqv;->DESTROYED:Lg/fqv;

    if-ne p1, v0, :cond_4

    new-instance p1, Lg/azq;

    invoke-direct {p1}, Lg/azq;-><init>()V

    iput-object p1, p0, Lg/ajs;->f:Lg/azq;

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lg/ajs;->h:Z

    return-void
.end method

.method public final n(Lg/esc;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Lg/ajs;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lg/ajs;->f:Lg/azq;

    invoke-virtual {v0, p1}, Lg/azq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Lg/ajm;)Lg/fqv;
    .locals 3

    iget-object v0, p0, Lg/ajs;->f:Lg/azq;

    iget-object v0, v0, Lg/azq;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/frv;

    iget-object p1, p1, Lg/frv;->b:Lg/frv;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lg/frv;->d:Ljava/lang/Object;

    check-cast p1, Lg/fpn;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lg/fpn;->a:Lg/fqv;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lg/ajs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/fqv;

    :cond_2
    iget-object v0, p0, Lg/ajs;->g:Lg/fqv;

    const-string v1, "state1"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method public final p(Lg/fqv;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCurrentState"

    invoke-virtual {p0, v0}, Lg/ajs;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg/ajs;->m(Lg/fqv;)V

    return-void
.end method
