.class public final Lcom/google/android/gms/internal/ads/zzbaw;
.super Lg/etz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbwh;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x7b

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lg/adw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.cache.ICacheService"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.CACHE"

    return-object v0
.end method

.method public final c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.cache.ICacheService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzbaz;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbaz;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbaz;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v1
.end method

.method public final getApiFeatures()[Lg/cqg;
    .locals 1

    sget-object v0, Lg/egb;->b:[Lg/cqg;

    return-object v0
.end method

.method public final zzp()Z
    .locals 6

    invoke-virtual {p0}, Lg/adw;->getAvailableFeatures()[Lg/cqg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzbW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lg/egb;->a:Lg/cqg;

    if-eqz v0, :cond_0

    array-length v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5, v1}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzbaz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lg/adw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbaz;

    return-object v0
.end method
