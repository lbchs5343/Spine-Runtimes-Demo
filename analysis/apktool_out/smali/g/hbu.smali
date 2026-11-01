.class public final Lg/hbu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lg/bbn;

.field public final c:Lg/cfx;

.field public d:Z

.field public e:Z

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cfx;

    invoke-direct {v0}, Lg/cfx;-><init>()V

    iput-object v0, p0, Lg/hbu;->c:Lg/cfx;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/hbu;->d:Z

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 5

    const-class v0, Lg/goa;

    iget-boolean v1, p0, Lg/hbu;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/hbu;->b:Lg/bbn;

    if-nez v1, :cond_0

    new-instance v1, Lg/bbn;

    invoke-direct {v1, p0}, Lg/bbn;-><init>(Lg/hbu;)V

    :cond_0
    iput-object v1, p0, Lg/hbu;->b:Lg/bbn;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lg/hbu;->b:Lg/bbn;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lg/bbn;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-boolean v0, p0, Lg/hbu;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/hbu;->f:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lg/hbu;->f:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lg/hbu;->f:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iput-object v1, p0, Lg/hbu;->f:Landroid/os/Bundle;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Lg/fet;
    .locals 4

    iget-object v0, p0, Lg/hbu;->c:Lg/cfx;

    invoke-virtual {v0}, Lg/cfx;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lg/cwl;

    invoke-virtual {v1}, Lg/cwl;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/cwl;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "components"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fet;

    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-static {v2, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(Ljava/lang/String;Lg/fet;)V
    .locals 2

    const-string v0, "provider"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/hbu;->c:Lg/cfx;

    invoke-virtual {v0, p1}, Lg/cfx;->b(Ljava/lang/Object;)Lg/frv;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lg/frv;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Lg/frv;

    invoke-direct {v1, p1, p2}, Lg/frv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, v0, Lg/cfx;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lg/cfx;->e:I

    iget-object p1, v0, Lg/cfx;->g:Lg/frv;

    if-nez p1, :cond_1

    iput-object v1, v0, Lg/cfx;->f:Lg/frv;

    iput-object v1, v0, Lg/cfx;->g:Lg/frv;

    goto :goto_0

    :cond_1
    iput-object v1, p1, Lg/frv;->a:Lg/frv;

    iput-object p1, v1, Lg/frv;->b:Lg/frv;

    iput-object v1, v0, Lg/cfx;->g:Lg/frv;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Lg/fet;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
