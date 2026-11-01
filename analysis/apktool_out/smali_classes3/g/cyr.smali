.class public final Lg/cyr;
.super Lcom/google/android/gms/internal/ads/zzeeb;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/app/Activity;

.field public c:Lg/cwg;

.field public d:Ljava/lang/String;


# virtual methods
.method public final zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzeeb;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/cyr;->b:Landroid/app/Activity;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lg/cwg;)Lcom/google/android/gms/internal/ads/zzeeb;
    .locals 0

    iput-object p1, p0, Lg/cyr;->c:Lg/cwg;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;
    .locals 0

    iput-object p1, p0, Lg/cyr;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;
    .locals 0

    iput-object p1, p0, Lg/cyr;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzeec;
    .locals 5

    iget-object v0, p0, Lg/cyr;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lg/hap;

    iget-object v2, p0, Lg/cyr;->c:Lg/cwg;

    iget-object v3, p0, Lg/cyr;->d:Ljava/lang/String;

    iget-object v4, p0, Lg/cyr;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lg/hap;-><init>(Landroid/app/Activity;Lg/cwg;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
