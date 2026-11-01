.class public final Lg/tm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkp;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzln;

.field public b:Lcom/google/android/gms/internal/ads/zzkp;

.field public c:Z

.field public final d:Lcom/google/android/gms/internal/ads/zzlv;

.field public final e:Lcom/google/android/gms/internal/ads/s;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s;Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/tm;->e:Lcom/google/android/gms/internal/ads/s;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlv;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzlv;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object p1, p0, Lg/tm;->d:Lcom/google/android/gms/internal/ads/zzlv;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/tm;->c:Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-boolean v0, p0, Lg/tm;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/tm;->d:Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlv;->zza()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lg/tm;->b:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbj;
    .locals 1

    iget-object v0, p0, Lg/tm;->b:Lcom/google/android/gms/internal/ads/zzkp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/tm;->d:Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlv;->zzc()Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbj;)V
    .locals 1

    iget-object v0, p0, Lg/tm;->b:Lcom/google/android/gms/internal/ads/zzkp;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzg(Lcom/google/android/gms/internal/ads/zzbj;)V

    iget-object p1, p0, Lg/tm;->b:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lg/tm;->d:Lcom/google/android/gms/internal/ads/zzlv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zzg(Lcom/google/android/gms/internal/ads/zzbj;)V

    return-void
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lg/tm;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lg/tm;->b:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzj()Z

    move-result v0

    return v0
.end method
