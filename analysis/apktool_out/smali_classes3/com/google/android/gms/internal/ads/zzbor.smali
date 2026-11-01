.class public final Lcom/google/android/gms/internal/ads/zzbor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbnu;

.field public b:Lg/dcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbor;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbor;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbnu;->zzb(Lcom/google/android/gms/internal/ads/zzavc;)Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzboo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzboo;-><init>(Lcom/google/android/gms/internal/ads/zzcao;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbop;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbop;-><init>(Lcom/google/android/gms/internal/ads/zzcao;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbou;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbor;->c()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbou;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbou;-><init>(Lg/dcy;)V

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbor;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboq;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzboq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbon;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbon;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbor;->b:Lg/dcy;

    return-void
.end method
