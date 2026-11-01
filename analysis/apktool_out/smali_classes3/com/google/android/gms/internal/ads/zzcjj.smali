.class public final Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzckr;

.field public b:Lcom/google/android/gms/internal/ads/zzfgr;

.field public c:Lcom/google/android/gms/internal/ads/zzchn;

.field public d:Lcom/google/android/gms/internal/ads/zzcke;

.field public e:Lcom/google/android/gms/internal/ads/zzfjv;


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzchk;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->c:Lcom/google/android/gms/internal/ads/zzchn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzchn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->d:Lcom/google/android/gms/internal/ads/zzcke;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcke;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->e:Lcom/google/android/gms/internal/ads/zzfjv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfjv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->e:Lcom/google/android/gms/internal/ads/zzfjv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->a:Lcom/google/android/gms/internal/ads/zzckr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzckr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->a:Lcom/google/android/gms/internal/ads/zzckr;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->b:Lcom/google/android/gms/internal/ads/zzfgr;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->b:Lcom/google/android/gms/internal/ads/zzfgr;

    :cond_2
    new-instance v1, Lg/bxr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjj;->c:Lcom/google/android/gms/internal/ads/zzchn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->d:Lcom/google/android/gms/internal/ads/zzcke;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjj;->e:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjj;->a:Lcom/google/android/gms/internal/ads/zzckr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjj;->b:Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-direct/range {v1 .. v6}, Lg/bxr;-><init>(Lcom/google/android/gms/internal/ads/zzchn;Lcom/google/android/gms/internal/ads/zzcke;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzckr;Lcom/google/android/gms/internal/ads/zzfgr;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzchn;)Lcom/google/android/gms/internal/ads/zzcjj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->c:Lcom/google/android/gms/internal/ads/zzchn;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcke;)Lcom/google/android/gms/internal/ads/zzcjj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->d:Lcom/google/android/gms/internal/ads/zzcke;

    return-object p0
.end method
