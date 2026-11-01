.class public final Lcom/google/android/gms/internal/ads/zzcmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxh;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->a:Lcom/google/android/gms/internal/ads/zzfgm;

    return-void
.end method


# virtual methods
.method public final zzdj(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->a:Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzg()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzdl(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->a:Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzt()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzdm(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->a:Lcom/google/android/gms/internal/ads/zzfgm;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zzu()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzs(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method
