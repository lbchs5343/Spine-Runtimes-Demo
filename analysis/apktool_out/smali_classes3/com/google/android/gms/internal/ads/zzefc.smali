.class public final Lcom/google/android/gms/internal/ads/zzefc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefb;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfwh;

.field public final zza:Lcom/google/android/gms/internal/ads/zzefb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzfwh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefc;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefc;->a:Lcom/google/android/gms/internal/ads/zzfwh;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Lg/dcy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefc;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefb;->zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Lg/dcy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzefc;->a:Lcom/google/android/gms/internal/ads/zzfwh;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefc;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefb;->zzb(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Z

    move-result p1

    return p1
.end method
