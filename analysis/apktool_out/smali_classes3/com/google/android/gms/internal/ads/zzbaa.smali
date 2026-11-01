.class public final Lcom/google/android/gms/internal/ads/zzbaa;
.super Lcom/google/android/gms/internal/ads/zzbah;
.source "SourceFile"


# instance fields
.field public final a:Lg/fle;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/fle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbah;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->a:Lg/fle;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaa;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzb(I)V
    .locals 0

    return-void
.end method

.method public final zzc(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaa;->a:Lg/fle;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/df;->c(Lg/bfi;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbaf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaa;->a:Lg/fle;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbaa;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Lcom/google/android/gms/internal/ads/zzbaf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/df;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
