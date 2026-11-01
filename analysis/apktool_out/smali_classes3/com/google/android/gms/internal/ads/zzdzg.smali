.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzj;

.field public final synthetic zzb:Lg/doh;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbvx;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgdp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdzj;Lg/doh;Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzgdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zza:Lcom/google/android/gms/internal/ads/zzdzj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzb:Lg/doh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzc:Lcom/google/android/gms/internal/ads/zzbvx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzd:Lcom/google/android/gms/internal/ads/zzgdp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zza:Lcom/google/android/gms/internal/ads/zzdzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzb:Lg/doh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzc:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzd:Lcom/google/android/gms/internal/ads/zzgdp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyw;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdzj;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v2}, Lg/doh;->zza(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method
