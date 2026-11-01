.class public final Lg/dlk;
.super Lcom/google/android/gms/internal/ads/zzbqs;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzefe;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzegm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegm;Lcom/google/android/gms/internal/ads/zzefe;)V
    .locals 0

    iput-object p1, p0, Lg/dlk;->b:Lcom/google/android/gms/internal/ads/zzegm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>()V

    iput-object p2, p0, Lg/dlk;->a:Lcom/google/android/gms/internal/ads/zzefe;

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/dlk;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzi(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lg/dlk;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzh(Lg/abz;)V

    return-void
.end method

.method public final zzg(Lg/bjq;)V
    .locals 1

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lg/dlk;->b:Lcom/google/android/gms/internal/ads/zzegm;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzegm;->d:Landroid/view/View;

    iget-object p1, p0, Lg/dlk;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzo()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbpp;)V
    .locals 1

    iget-object v0, p0, Lg/dlk;->b:Lcom/google/android/gms/internal/ads/zzegm;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzegm;->a:Lcom/google/android/gms/internal/ads/zzbpp;

    iget-object p1, p0, Lg/dlk;->a:Lcom/google/android/gms/internal/ads/zzefe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzefe;->zzc:Lcom/google/android/gms/internal/ads/zzcxw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzo()V

    return-void
.end method
