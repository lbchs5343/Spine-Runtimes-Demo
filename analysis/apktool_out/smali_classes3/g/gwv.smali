.class public final Lg/gwv;
.super Lcom/google/android/gms/internal/ads/zzfvj;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvj;
    .locals 0

    iput-object p1, p0, Lg/gwv;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvj;
    .locals 0

    iput-object p1, p0, Lg/gwv;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfvk;
    .locals 3

    new-instance v0, Lg/duv;

    iget-object v1, p0, Lg/gwv;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/gwv;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lg/duv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
