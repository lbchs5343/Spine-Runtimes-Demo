.class public final Lg/gjo;
.super Lcom/google/android/gms/internal/ads/zzbqy;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzefe;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzeib;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzefe;)V
    .locals 0

    iput-object p1, p0, Lg/gjo;->b:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqy;-><init>()V

    iput-object p2, p0, Lg/gjo;->a:Lcom/google/android/gms/internal/ads/zzefe;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/gjo;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzi(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lg/gjo;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzh(Lg/abz;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbpv;)V
    .locals 1

    iget-object v0, p0, Lg/gjo;->b:Lcom/google/android/gms/internal/ads/zzeib;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzeib;->d:Lcom/google/android/gms/internal/ads/zzbpv;

    iget-object p1, p0, Lg/gjo;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzo()V

    return-void
.end method
