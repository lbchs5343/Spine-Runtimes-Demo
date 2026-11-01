.class public final Lcom/google/android/gms/internal/ads/zzdwv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzhfr;

.field public final b:Lcom/google/android/gms/internal/ads/zzges;

.field public final c:Lcom/google/android/gms/internal/ads/zzges;

.field public final d:Lcom/google/android/gms/internal/ads/zzdyd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdyd;Lcom/google/android/gms/internal/ads/zzhfr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->b:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->c:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwv;->d:Lcom/google/android/gms/internal/ads/zzdyd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwv;->a:Lcom/google/android/gms/internal/ads/zzhfr;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzd:Ljava/lang/String;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-static {v0}, Lg/esy;->am(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->c:Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyw;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdws;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdws;-><init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->b:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>()V

    const-class v3, Ljava/util/concurrent/ExecutionException;

    invoke-static {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwu;

    invoke-direct {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdwu;-><init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzbvx;I)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-static {v0, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method
