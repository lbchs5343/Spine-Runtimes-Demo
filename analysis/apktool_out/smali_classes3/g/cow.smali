.class public final Lg/cow;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/ph;


# direct methods
.method public constructor <init>(Lg/ph;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cow;->a:Landroid/content/Context;

    iput-object p1, p0, Lg/cow;->b:Lg/ph;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/cow;->a:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/fip;

    invoke-direct {v0}, Lg/djd;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/cow;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const v1, 0xe8813d8

    invoke-interface {p1, v0, v1}, Lg/drf;->d(Lg/bjq;I)Lg/apq;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lg/cow;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0xe8813d8

    const/4 v3, 0x1

    const-string v4, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    iget-object v5, p0, Lg/cow;->b:Lg/ph;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const-string v7, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v8

    invoke-virtual {v8, v7}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    if-nez v7, :cond_0

    move-object v8, v6

    goto :goto_0

    :cond_0
    const-string v8, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    invoke-interface {v7, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v8

    instance-of v9, v8, Lg/gux;

    if-eqz v9, :cond_1

    check-cast v8, Lg/gux;

    goto :goto_0

    :cond_1
    new-instance v8, Lg/gux;

    invoke-direct {v8, v7}, Lg/gux;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v7, v3}, Lcom/google/android/gms/internal/ads/zzayc;->p(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    return-object v6

    :cond_2
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lg/apq;

    if-eqz v3, :cond_3

    check-cast v1, Lg/apq;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_3
    new-instance v1, Lg/awk;

    invoke-direct {v1, v2}, Lg/awk;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :catch_3
    move-exception v1

    new-instance v2, Lg/eof;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v0

    iput-object v0, v5, Lg/ph;->d:Ljava/lang/Object;

    const-string v2, "ClientApiBroker.getMobileAdsSettingsManager"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, v5, Lg/ph;->f:Ljava/lang/Object;

    check-cast v1, Lg/dfk;

    :try_start_3
    new-instance v5, Lg/bpp;

    invoke-direct {v5, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/cgo;->ai(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzayc;->p(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lg/apq;

    if-eqz v2, :cond_6

    check-cast v0, Lg/apq;

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_6
    new-instance v0, Lg/awk;

    invoke-direct {v0, v1}, Lg/awk;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lg/grc; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_4
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_3
    return-object v6
.end method
