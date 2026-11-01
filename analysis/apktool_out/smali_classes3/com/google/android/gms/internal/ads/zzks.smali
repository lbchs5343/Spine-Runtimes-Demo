.class public final synthetic Lcom/google/android/gms/internal/ads/zzks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/eac;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfzl;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzur;


# direct methods
.method public synthetic constructor <init>(Lg/eac;Lcom/google/android/gms/internal/ads/zzfzl;Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzks;->zza:Lg/eac;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzks;->zzb:Lcom/google/android/gms/internal/ads/zzfzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzks;->zzc:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zza:Lg/eac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzks;->zzb:Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzks;->zzc:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lg/eac;->n:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlw;->zzT(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method
