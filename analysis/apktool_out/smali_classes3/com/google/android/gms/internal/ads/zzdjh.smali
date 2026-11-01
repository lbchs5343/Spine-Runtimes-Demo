.class public final Lcom/google/android/gms/internal/ads/zzdjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzbhj;

.field public b:Lcom/google/android/gms/internal/ads/zzbmk;

.field public c:Lcom/google/android/gms/internal/ads/zzbgz;

.field public final d:Lg/bcp;

.field public e:Lcom/google/android/gms/internal/ads/zzbgw;

.field public f:Lcom/google/android/gms/internal/ads/zzbhm;

.field public final g:Lg/bcp;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/bcp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjh;->d:Lg/bcp;

    new-instance v0, Lg/bcp;

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjh;->g:Lg/bcp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbgw;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->e:Lcom/google/android/gms/internal/ads/zzbgw;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->c:Lcom/google/android/gms/internal/ads/zzbgz;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzbhc;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjh;->d:Lg/bcp;

    invoke-virtual {v0, p1, p2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjh;->g:Lg/bcp;

    invoke-virtual {p2, p1, p3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->b:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->a:Lcom/google/android/gms/internal/ads/zzbhj;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbhm;)Lcom/google/android/gms/internal/ads/zzdjh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->f:Lcom/google/android/gms/internal/ads/zzbhm;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdjj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjj;-><init>(Lcom/google/android/gms/internal/ads/zzdjh;)V

    return-object v0
.end method
