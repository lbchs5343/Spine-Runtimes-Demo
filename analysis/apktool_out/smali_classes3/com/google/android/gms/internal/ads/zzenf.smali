.class public final Lcom/google/android/gms/internal/ads/zzenf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdjj;

.field public final b:Lcom/google/android/gms/internal/ads/zzems;

.field public final c:Lcom/google/android/gms/internal/ads/zzene;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjj;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenf;->a:Lcom/google/android/gms/internal/ads/zzdjj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzems;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzems;-><init>(Lcom/google/android/gms/internal/ads/zzdsm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->b:Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzg()Lcom/google/android/gms/internal/ads/zzbmk;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzene;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzene;-><init>(Lcom/google/android/gms/internal/ads/zzems;Lcom/google/android/gms/internal/ads/zzbmk;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenf;->c:Lcom/google/android/gms/internal/ads/zzene;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcwp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->c:Lcom/google/android/gms/internal/ads/zzene;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcya;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->b:Lcom/google/android/gms/internal/ads/zzems;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdhe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenf;->a:Lcom/google/android/gms/internal/ads/zzdjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzenf;->b:Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzems;->zzg()Lg/ejp;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Lcom/google/android/gms/internal/ads/zzdjj;Lg/ejp;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzems;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->b:Lcom/google/android/gms/internal/ads/zzems;

    return-object v0
.end method

.method public final zze(Lg/ejp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->b:Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzems;->zzj(Lg/ejp;)V

    return-void
.end method
