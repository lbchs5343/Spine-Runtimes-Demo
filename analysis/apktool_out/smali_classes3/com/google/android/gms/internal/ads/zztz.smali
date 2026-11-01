.class public abstract Lcom/google/android/gms/internal/ads/zztz;
.super Lcom/google/android/gms/internal/ads/zztq;
.source "SourceFile"


# instance fields
.field public final l:Ljava/util/HashMap;

.field public m:Landroid/os/Handler;

.field public n:Lcom/google/android/gms/internal/ads/zzhd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztq;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/css;

    iget-object v2, v1, Lg/css;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v1, v1, Lg/css;->b:Lcom/google/android/gms/internal/ads/zztw;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzi(Lcom/google/android/gms/internal/ads/zzus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/css;

    iget-object v2, v1, Lg/css;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v1, v1, Lg/css;->b:Lcom/google/android/gms/internal/ads/zztw;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzk(Lcom/google/android/gms/internal/ads/zzus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztz;->n:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztz;->m:Landroid/os/Handler;

    return-void
.end method

.method public o(JLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzut;Lcom/google/android/gms/internal/ads/zzbv;)V
.end method

.method public final q(Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzut;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zztw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Lcom/google/android/gms/internal/ads/zztz;Ljava/lang/Object;)V

    new-instance v2, Lg/gkr;

    invoke-direct {v2, p0, p1}, Lg/gkr;-><init>(Lcom/google/android/gms/internal/ads/zztz;Ljava/lang/Object;)V

    new-instance v3, Lg/css;

    invoke-direct {v3, p2, v1, v2}, Lg/css;-><init>(Lcom/google/android/gms/internal/ads/zzut;Lcom/google/android/gms/internal/ads/zztw;Lg/gkr;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztz;->m:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzh(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzvb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztz;->m:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzg(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzrl;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztz;->n:Lcom/google/android/gms/internal/ads/zzhd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzut;->zzm(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzoj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->e:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzi(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzur;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public s(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zzq()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/css;

    iget-object v3, v2, Lg/css;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v4, v2, Lg/css;->c:Lg/gkr;

    iget-object v2, v2, Lg/css;->b:Lcom/google/android/gms/internal/ads/zztw;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzp(Lcom/google/android/gms/internal/ads/zzus;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzut;->zzs(Lcom/google/android/gms/internal/ads/zzvb;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzut;->zzr(Lcom/google/android/gms/internal/ads/zzrl;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public zzz()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztz;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/css;

    iget-object v1, v1, Lg/css;->a:Lcom/google/android/gms/internal/ads/zzut;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzut;->zzz()V

    goto :goto_0

    :cond_0
    return-void
.end method
