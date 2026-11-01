.class public final Lcom/google/android/gms/internal/ads/zzbxv;
.super Lcom/google/android/gms/internal/ads/zzbxi;
.source "SourceFile"


# instance fields
.field public final a:Lg/gsq;

.field public final b:Lcom/google/android/gms/internal/ads/zzbxw;


# direct methods
.method public constructor <init>(Lg/gsq;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->a:Lg/gsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->b:Lcom/google/android/gms/internal/ads/zzbxw;

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->a:Lg/gsq;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/df;->c(Lg/bfi;)V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->a:Lg/gsq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->b:Lcom/google/android/gms/internal/ads/zzbxw;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lg/df;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
