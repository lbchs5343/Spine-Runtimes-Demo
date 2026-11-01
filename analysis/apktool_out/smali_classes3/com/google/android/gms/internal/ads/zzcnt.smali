.class public final Lcom/google/android/gms/internal/ads/zzcnt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzcny;

.field public final b:Lg/bs;

.field public final c:Ljava/lang/String;

.field public final d:Lg/cjf;

.field public final e:Lcom/google/android/gms/internal/ads/zzbor;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbor;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/bs;

    invoke-direct {v0, p0}, Lg/bs;-><init>(Lcom/google/android/gms/internal/ads/zzcnt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lg/bs;

    new-instance v0, Lg/cjf;

    invoke-direct {v0, p0}, Lg/cjf;-><init>(Lcom/google/android/gms/internal/ads/zzcnt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->d:Lg/cjf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->e:Lcom/google/android/gms/internal/ads/zzbor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnt;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzcny;)V
    .locals 3

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lg/bs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->e:Lcom/google/android/gms/internal/ads/zzbor;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbor;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->d:Lg/cjf;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbor;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->a:Lcom/google/android/gms/internal/ads/zzcny;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lg/bs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->d:Lg/cjf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zze()V
    .locals 3

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lg/bs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->e:Lcom/google/android/gms/internal/ads/zzbor;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbor;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->d:Lg/cjf;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbor;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lg/bs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->d:Lg/cjf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method
