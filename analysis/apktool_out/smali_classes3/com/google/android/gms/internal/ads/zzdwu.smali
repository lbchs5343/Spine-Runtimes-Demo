.class public final synthetic Lcom/google/android/gms/internal/ads/zzdwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwv;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvx;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzbvx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zza:Lcom/google/android/gms/internal/ads/zzdwv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzbvx;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zza:Lcom/google/android/gms/internal/ads/zzdwv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzbvx;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyw;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v3, "ls"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdwv;->a:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzebg;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzebg;->zzc(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwr;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdwr;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdwv;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method
