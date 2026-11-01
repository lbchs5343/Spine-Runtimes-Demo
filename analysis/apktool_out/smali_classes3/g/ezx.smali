.class public final Lg/ezx;
.super Lcom/google/android/gms/internal/ads/zzcpd;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/google/android/gms/internal/ads/zzdjj;

.field public final c:Lcom/google/android/gms/internal/ads/zzcro;

.field public final d:Lcom/google/android/gms/internal/ads/zzcfk;

.field public e:Lg/eno;

.field public final f:Lcom/google/android/gms/internal/ads/zzden;

.field public final g:Lcom/google/android/gms/internal/ads/zzfeu;

.field public final h:Landroid/content/Context;

.field public final i:Lcom/google/android/gms/internal/ads/zzhfr;

.field public final j:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfeu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzcro;Lcom/google/android/gms/internal/ads/zzdjj;Lcom/google/android/gms/internal/ads/zzden;Lcom/google/android/gms/internal/ads/zzhfr;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzcrp;)V

    iput-object p2, p0, Lg/ezx;->h:Landroid/content/Context;

    iput-object p4, p0, Lg/ezx;->a:Landroid/view/View;

    iput-object p5, p0, Lg/ezx;->d:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p3, p0, Lg/ezx;->g:Lcom/google/android/gms/internal/ads/zzfeu;

    iput-object p6, p0, Lg/ezx;->c:Lcom/google/android/gms/internal/ads/zzcro;

    iput-object p7, p0, Lg/ezx;->b:Lcom/google/android/gms/internal/ads/zzdjj;

    iput-object p8, p0, Lg/ezx;->f:Lcom/google/android/gms/internal/ads/zzden;

    iput-object p9, p0, Lg/ezx;->i:Lcom/google/android/gms/internal/ads/zzhfr;

    iput-object p10, p0, Lg/ezx;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->n:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfew;->zzd:I

    return v0
.end method

.method public final zzc()I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhy:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->q:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhz:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->n:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfew;->zzc:I

    return v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/ezx;->a:Landroid/view/View;

    return-object v0
.end method

.method public final zze()Lg/cbz;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/ezx;->c:Lcom/google/android/gms/internal/ads/zzcro;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcro;->zza()Lg/cbz;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzfeu;
    .locals 5

    iget-object v0, p0, Lg/ezx;->e:Lg/eno;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffu;->zzb(Lg/eno;)Lcom/google/android/gms/internal/ads/zzfeu;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->q:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzac:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "FirstParty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfeu;

    iget-object v1, p0, Lg/ezx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfeu;-><init>(IIZ)V

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfeu;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfeu;
    .locals 1

    iget-object v0, p0, Lg/ezx;->g:Lcom/google/android/gms/internal/ads/zzfeu;

    return-object v0
.end method

.method public final zzh()V
    .locals 1

    iget-object v0, p0, Lg/ezx;->f:Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->zza()V

    return-void
.end method

.method public final zzi(Landroid/view/ViewGroup;Lg/eno;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/ezx;->d:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzche;->zzc(Lg/eno;)Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V

    iget v0, p2, Lg/eno;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget v0, p2, Lg/eno;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lg/ezx;->e:Lg/eno;

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpf;-><init>(Lg/ezx;)V

    iget-object v1, p0, Lg/ezx;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    return-void
.end method
