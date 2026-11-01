.class public final Lg/dtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fet;


# instance fields
.field public final a:Lg/esn;

.field public final c:Lg/hbu;

.field public d:Z

.field public e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lg/hbu;Lg/gyj;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dtj;->c:Lg/hbu;

    new-instance p1, Lg/dqz;

    invoke-direct {p1, p2}, Lg/dqz;-><init>(Lg/gyj;)V

    new-instance p2, Lg/esn;

    invoke-direct {p2, p1}, Lg/esn;-><init>(Lg/cvw;)V

    iput-object p2, p0, Lg/dtj;->a:Lg/esn;

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lg/dtj;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lg/dtj;->a:Lg/esn;

    invoke-virtual {v1}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/wi;

    iget-object v1, v1, Lg/wi;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gzf;

    iget-object v2, v2, Lg/gzf;->c:Lg/fet;

    invoke-interface {v2}, Lg/fet;->b()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v2, v4}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/dtj;->d:Z

    return-object v0
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lg/dtj;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/dtj;->c:Lg/hbu;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Lg/hbu;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lg/dtj;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iput-object v1, p0, Lg/dtj;->e:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dtj;->d:Z

    iget-object v0, p0, Lg/dtj;->a:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/wi;

    :cond_2
    return-void
.end method
