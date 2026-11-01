.class public final Lcom/google/android/gms/internal/ads/zzenx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Lg/cvb;

.field public final b:Lcom/google/android/gms/internal/ads/zzffo;


# direct methods
.method public constructor <init>(Lg/cvb;Lcom/google/android/gms/internal/ads/zzffo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenx;->a:Lg/cvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenx;->b:Lcom/google/android/gms/internal/ads/zzffo;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeny;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenx;->a:Lg/cvb;

    check-cast v1, Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenx;->b:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzeny;-><init>(Lcom/google/android/gms/internal/ads/zzffo;J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
