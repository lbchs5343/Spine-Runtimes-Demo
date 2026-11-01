.class public final Lg/ecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqr;


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Lg/euu;

.field public final c:Lg/hbu;

.field public final d:Landroid/app/Application;

.field public final e:Lg/akk;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lg/gff;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    iput-object v0, p0, Lg/ecl;->c:Lg/hbu;

    invoke-interface {p2}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p2

    iput-object p2, p0, Lg/ecl;->b:Lg/euu;

    iput-object p3, p0, Lg/ecl;->a:Landroid/os/Bundle;

    iput-object p1, p0, Lg/ecl;->d:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Lg/akk;->b:Lg/akk;

    if-nez p2, :cond_0

    new-instance p2, Lg/akk;

    invoke-direct {p2, p1}, Lg/akk;-><init>(Landroid/app/Application;)V

    sput-object p2, Lg/akk;->b:Lg/akk;

    :cond_0
    sget-object p1, Lg/akk;->b:Lg/akk;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lg/akk;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/akk;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Lg/ecl;->e:Lg/akk;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;
    .locals 7

    iget-object v0, p0, Lg/ecl;->b:Lg/euu;

    if-eqz v0, :cond_a

    const-class v1, Lg/czy;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/ecl;->d:Landroid/app/Application;

    if-eqz v2, :cond_0

    sget-object v2, Lg/nf;->a:Ljava/util/List;

    invoke-static {p1, v2}, Lg/nf;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lg/nf;->b:Ljava/util/List;

    invoke-static {p1, v2}, Lg/nf;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    iget-object p2, p0, Lg/ecl;->d:Landroid/app/Application;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/ecl;->e:Lg/akk;

    invoke-virtual {p2, p1}, Lg/akk;->m(Ljava/lang/Class;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p2, Lg/gpu;->f:Lg/gpu;

    if-nez p2, :cond_2

    new-instance p2, Lg/gpu;

    const/16 v0, 0xd

    invoke-direct {p2, v0}, Lg/gpu;-><init>(I)V

    sput-object p2, Lg/gpu;->f:Lg/gpu;

    :cond_2
    sget-object p2, Lg/gpu;->f:Lg/gpu;

    invoke-static {p2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lg/gpu;->m(Ljava/lang/Class;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v3, p0, Lg/ecl;->c:Lg/hbu;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lg/ecl;->a:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Lg/hbu;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lg/gzf;->a:[Ljava/lang/Class;

    invoke-static {v5, v4}, Lg/byh;->n(Landroid/os/Bundle;Landroid/os/Bundle;)Lg/gzf;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Lg/gzf;)V

    invoke-virtual {v5, v0, v3}, Landroidx/lifecycle/SavedStateHandleController;->e(Lg/euu;Lg/hbu;)V

    move-object p2, v0

    check-cast p2, Lg/ajs;

    iget-object p2, p2, Lg/ajs;->g:Lg/fqv;

    sget-object v6, Lg/fqv;->INITIALIZED:Lg/fqv;

    if-eq p2, v6, :cond_5

    sget-object v6, Lg/fqv;->STARTED:Lg/fqv;

    invoke-virtual {p2, v6}, Lg/fqv;->b(Lg/fqv;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v0, v3}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Lg/euu;Lg/hbu;)V

    invoke-virtual {v0, p2}, Lg/euu;->l(Lg/ajm;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v3}, Lg/hbu;->g()V

    :goto_2
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lg/ecl;->d:Landroid/app/Application;

    if-eqz v1, :cond_6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object v4, v3, p2

    invoke-static {p1, v2, v3}, Lg/nf;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lg/blj;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-array p2, p2, [Ljava/lang/Object;

    aput-object v4, p2, v0

    invoke-static {p1, v2, p2}, Lg/nf;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lg/blj;

    move-result-object p1

    :goto_3
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v0, p1, Lg/blj;->l:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lg/blj;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v2, p1, Lg/blj;->l:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_7
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v1

    :goto_5
    iget-boolean p2, p1, Lg/blj;->n:Z

    if-eqz p2, :cond_9

    invoke-static {v5}, Lg/blj;->o(Ljava/lang/Object;)V

    :cond_9
    return-object p1

    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/lang/Class;Lg/ewp;)Lg/blj;
    .locals 5

    sget-object v0, Lg/bmr;->y:Lg/bmr;

    iget-object v1, p2, Lg/bin;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Lg/afo;->y:Lg/cuf;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lg/afo;->z:Lg/cfg;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Lg/bfy;->g:Lg/bfy;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Lg/czy;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lg/nf;->a:Ljava/util/List;

    invoke-static {p1, v2}, Lg/nf;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lg/nf;->b:Ljava/util/List;

    invoke-static {p1, v2}, Lg/nf;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object v0, p0, Lg/ecl;->e:Lg/akk;

    invoke-virtual {v0, p1, p2}, Lg/akk;->l(Ljava/lang/Class;Lg/ewp;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Lg/afo;->av(Lg/ewp;)Lg/gzf;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object p2, v1, v3

    invoke-static {p1, v2, v1}, Lg/nf;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2}, Lg/afo;->av(Lg/ewp;)Lg/gzf;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-static {p1, v2, v0}, Lg/nf;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p0, Lg/ecl;->b:Lg/euu;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Lg/ecl;->f(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/Class;)Lg/blj;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lg/ecl;->f(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
