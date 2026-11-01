.class public final Lg/dab;
.super Lcom/google/android/gms/internal/ads/zzfuj;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfuj;
    .locals 0

    iput-object p1, p0, Lg/dab;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfuj;
    .locals 0

    iput-object p1, p0, Lg/dab;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfuk;
    .locals 3

    new-instance v0, Lg/fac;

    iget-object v1, p0, Lg/dab;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/dab;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lg/fac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
