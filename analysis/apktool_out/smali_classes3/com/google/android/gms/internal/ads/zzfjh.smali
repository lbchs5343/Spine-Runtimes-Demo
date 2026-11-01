.class public final Lcom/google/android/gms/internal/ads/zzfjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lg/dcy;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzfjj;

.field public final e:Ljava/lang/String;

.field public final f:Lg/dcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjh;->a:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfix;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfjj;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfix;-><init>(Ljava/lang/Object;Ljava/lang/String;Lg/dcy;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjj;->d:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjk;->zza(Lcom/google/android/gms/internal/ads/zzfix;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjf;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfjf;-><init>(Lcom/google/android/gms/internal/ads/zzfjh;Lcom/google/android/gms/internal/ads/zzfix;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    invoke-interface {v3, v1, v2}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lg/fdy;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v0, v4}, Lg/fdy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjj;->b:Lcom/google/android/gms/internal/ads/zzges;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    invoke-static {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjh;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V

    return-object v0
.end method

.method public final zzd(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfje;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;-><init>(Lg/dcy;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfjh;->zzg(Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjd;-><init>(Lcom/google/android/gms/internal/ads/zzfiv;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjj;->b:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zzg(Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjh;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjh;->a:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V

    return-object v0
.end method

.method public final zzi(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjj;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->b:Lg/dcy;

    invoke-static {v2, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjh;->f:Lg/dcy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjh;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjh;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjh;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V

    return-object v0
.end method
