.class public abstract Lcom/google/android/gms/internal/ads/zzfwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static zzc()Lcom/google/android/gms/internal/ads/zzfwo;
    .locals 1

    sget-object v0, Lg/bog;->a:Lg/bog;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwo;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lg/bog;->a:Lg/bog;

    return-object p0

    :cond_0
    new-instance v0, Lg/wb;

    invoke-direct {v0, p0}, Lg/wb;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzfwh;)Lcom/google/android/gms/internal/ads/zzfwo;
.end method

.method public abstract zzb(Ljava/lang/Object;)Ljava/lang/Object;
.end method
