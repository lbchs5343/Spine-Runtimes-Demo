.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/doh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zza:Lcom/google/android/gms/internal/ads/zzdzj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zza:Lcom/google/android/gms/internal/ads/zzdzj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdzj;->f:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebg;->zzj(Ljava/lang/String;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method
