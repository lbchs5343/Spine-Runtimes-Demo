.class public final Lcom/google/android/gms/internal/ads/zzfxk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfxg;
    .locals 1

    instance-of v0, p0, Lg/dat;

    if-nez v0, :cond_2

    instance-of v0, p0, Lg/eve;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lg/eve;

    invoke-direct {v0, p0}, Lg/eve;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;)V

    return-object v0

    :cond_1
    new-instance v0, Lg/dat;

    invoke-direct {v0, p0}, Lg/dat;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;)V

    return-object v0

    :cond_2
    return-object p0
.end method
