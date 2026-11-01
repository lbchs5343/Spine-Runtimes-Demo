.class public final Lg/feh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzlw;

.field public b:Lcom/google/android/gms/internal/ads/zzhd;

.field public final c:Ljava/util/HashMap;

.field public d:Lcom/google/android/gms/internal/ads/zzwj;

.field public final e:Lcom/google/android/gms/internal/ads/s;

.field public final f:Lcom/google/android/gms/internal/ads/zzoj;

.field public final g:Ljava/util/HashMap;

.field public final h:Lcom/google/android/gms/internal/ads/zzdm;

.field public final i:Ljava/util/ArrayList;

.field public j:Z

.field public final k:Ljava/util/IdentityHashMap;

.field public final l:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s;Lcom/google/android/gms/internal/ads/zzlw;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lg/feh;->f:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object p1, p0, Lg/feh;->e:Lcom/google/android/gms/internal/ads/s;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwj;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(I)V

    iput-object p1, p0, Lg/feh;->d:Lcom/google/android/gms/internal/ads/zzwj;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lg/feh;->k:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/feh;->c:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/feh;->i:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/feh;->a:Lcom/google/android/gms/internal/ads/zzlw;

    iput-object p3, p0, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/feh;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/feh;->l:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 3

    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lg/feh;->t(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lg/feh;->s(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lg/iw;)V
    .locals 3

    iget-boolean v0, p1, Lg/iw;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/feh;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gdd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lg/gdd;->c:Lg/ejq;

    iget-object v2, v0, Lg/gdd;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v0, v0, Lg/gdd;->b:Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzut;->zzp(Lcom/google/android/gms/internal/ads/zzus;)V

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzs(Lcom/google/android/gms/internal/ads/zzvb;)V

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzr(Lcom/google/android/gms/internal/ads/zzrl;)V

    iget-object v0, p0, Lg/feh;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 3

    iget-object v0, p0, Lg/feh;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/iw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzum;->zzG(Lcom/google/android/gms/internal/ads/zzup;)V

    iget-object v2, v1, Lg/iw;->e:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuj;->zza:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/feh;->w()V

    :cond_0
    invoke-virtual {p0, v1}, Lg/feh;->n(Lg/iw;)V

    return-void
.end method

.method public final p(Lg/iw;)V
    .locals 5

    iget-object v0, p1, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lg/feh;)V

    new-instance v2, Lg/ejq;

    invoke-direct {v2, p0, p1}, Lg/ejq;-><init>(Lg/feh;Lg/iw;)V

    new-instance v3, Lg/gdd;

    invoke-direct {v3, v0, v1, v2}, Lg/gdd;-><init>(Lcom/google/android/gms/internal/ads/zzut;Lcom/google/android/gms/internal/ads/zzkv;Lg/ejq;)V

    iget-object v4, p0, Lg/feh;->g:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzen;->zzz()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzh(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzvb;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzen;->zzz()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzg(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzrl;)V

    iget-object p1, p0, Lg/feh;->b:Lcom/google/android/gms/internal/ads/zzhd;

    iget-object v2, p0, Lg/feh;->f:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzm(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzoj;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lg/feh;->j:Z

    return v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/zzbv;
    .locals 4

    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/iw;

    iput v2, v3, Lg/iw;->a:I

    iget-object v3, v3, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzum;->zzC()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lg/aqw;

    iget-object v2, p0, Lg/feh;->d:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-direct {v1, v0, v2}, Lg/aqw;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    return-object v0
.end method

.method public final s(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p3, p0, Lg/feh;->d:Lcom/google/android/gms/internal/ads/zzwj;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_4

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/iw;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/feh;->i:Ljava/util/ArrayList;

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/iw;

    iget-object v4, v3, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzum;->zzC()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v4

    iget v3, v3, Lg/iw;->a:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Lg/iw;->a:I

    iput-boolean v1, v0, Lg/iw;->b:Z

    iget-object v1, v0, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iput v1, v0, Lg/iw;->a:I

    iput-boolean v1, v0, Lg/iw;->b:Z

    iget-object v1, v0, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v1, v0, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzum;->zzC()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v1

    move v3, p3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/iw;

    iget v5, v4, Lg/iw;->a:I

    add-int/2addr v5, v1

    iput v5, v4, Lg/iw;->a:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lg/feh;->c:Ljava/util/HashMap;

    iget-object v2, v0, Lg/iw;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lg/feh;->j:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lg/feh;->p(Lg/iw;)V

    iget-object v1, p0, Lg/feh;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/feh;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lg/feh;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gdd;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lg/gdd;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v0, v0, Lg/gdd;->b:Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzut;->zzi(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lg/feh;->r()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    return-object p1
.end method

.method public final t(II)V
    .locals 6

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_2

    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/iw;

    iget-object v2, p0, Lg/feh;->c:Ljava/util/HashMap;

    iget-object v3, v1, Lg/iw;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzum;->zzC()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v2

    neg-int v2, v2

    move v3, p2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/iw;

    iget v5, v4, Lg/iw;->a:I

    add-int/2addr v5, v2

    iput v5, v4, Lg/iw;->a:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lg/iw;->b:Z

    iget-boolean v0, p0, Lg/feh;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lg/feh;->n(Lg/iw;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 2

    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzc()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzf()Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzg(II)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lg/feh;->d:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {p0}, Lg/feh;->r()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    return-object p1
.end method

.method public final v(IILjava/util/List;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 5

    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v4, p2, p1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/iw;

    iget-object v2, v2, Lg/iw;->c:Lcom/google/android/gms/internal/ads/zzum;

    sub-int v3, v1, p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzum;->zzt(Lcom/google/android/gms/internal/ads/zzaw;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lg/feh;->r()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    return-object p1
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lg/feh;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/iw;

    iget-object v2, v1, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lg/feh;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gdd;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/gdd;->a:Lcom/google/android/gms/internal/ads/zzut;

    iget-object v1, v1, Lg/gdd;->b:Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzut;->zzi(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 3

    iget-boolean v0, p0, Lg/feh;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-object p1, p0, Lg/feh;->b:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/iw;

    invoke-virtual {p0, v0}, Lg/feh;->p(Lg/iw;)V

    iget-object v2, p0, Lg/feh;->l:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lg/feh;->j:Z

    return-void
.end method

.method public final y(IILcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v1, p0, Lg/feh;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput-object p3, p0, Lg/feh;->d:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {p0, p1, p2}, Lg/feh;->t(II)V

    invoke-virtual {p0}, Lg/feh;->r()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    return-object p1
.end method
