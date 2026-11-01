.class public final Lcom/google/android/gms/internal/ads/zzbxp;
.super Lcom/google/android/gms/internal/ads/zzbxi;
.source "SourceFile"


# instance fields
.field public final a:Lg/byk;

.field public final b:Lg/dth;


# direct methods
.method public constructor <init>(Lg/byk;Lg/dth;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxp;->a:Lg/byk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxp;->b:Lg/dth;

    return-void
.end method


# virtual methods
.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxp;->a:Lg/byk;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/df;->c(Lg/bfi;)V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxp;->a:Lg/byk;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxp;->b:Lg/dth;

    invoke-virtual {v0, v1}, Lg/df;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
