.class public final Lcom/google/android/gms/internal/ads/zzdsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzhgp;

.field public final b:Lcom/google/android/gms/internal/ads/zzhgp;

.field public final c:Lcom/google/android/gms/internal/ads/zzhgp;

.field public final d:Lcom/google/android/gms/internal/ads/zzhgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsv;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsv;->c:Lcom/google/android/gms/internal/ads/zzhgp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsv;->d:Lcom/google/android/gms/internal/ads/zzhgp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsv;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfin;->zzc()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/dfu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->c:Lcom/google/android/gms/internal/ads/zzhgp;

    check-cast v0, Lg/frd;

    iget-object v3, v0, Lg/frd;->a:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v0, v0, Lg/frd;->b:Lcom/google/android/gms/internal/ads/zzcid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/akx;

    move-object v4, v3

    new-instance v3, Lg/edu;

    invoke-direct {v3, v4, v0}, Lg/edu;-><init>(Landroid/content/Context;Lg/akx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->d:Lcom/google/android/gms/internal/ads/zzhgp;

    check-cast v0, Lg/fhh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg/fvv;

    invoke-direct {v4}, Lg/fvv;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->a:Lcom/google/android/gms/internal/ads/zzhgp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza()Landroid/content/Context;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdsr;-><init>(Ljava/util/concurrent/Executor;Lg/dfu;Lg/edu;Lg/fvv;Landroid/content/Context;)V

    return-object v0
.end method
