.class public final Lg/ejy;
.super Lg/cgo;
.source "SourceFile"


# instance fields
.field public d:Lcom/google/android/gms/internal/ads/zzbul;


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lg/drv;

    if-eqz v1, :cond_1

    check-cast v0, Lg/drv;

    return-object v0

    :cond_1
    new-instance v0, Lg/drv;

    invoke-direct {v0, p1}, Lg/drv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.google.android.gms.ads.internal.client.IAdManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v4, Lg/bpp;

    invoke-direct {v4, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object v3, v2

    goto :goto_1

    :cond_0
    const-string v3, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v5, v3, Lg/drv;

    if-eqz v5, :cond_1

    check-cast v3, Lg/drv;

    :goto_0
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    goto :goto_1

    :cond_1
    new-instance v3, Lg/drv;

    invoke-direct {v3, v0}, Lg/drv;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lg/drv;->a(Lg/bpp;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lg/deq;

    if-eqz p4, :cond_3

    check-cast p3, Lg/deq;

    return-object p3

    :catch_0
    move-exception v0

    :goto_2
    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance p3, Lg/hi;

    invoke-direct {p3, p2}, Lg/hi;-><init>(Landroid/os/IBinder;)V

    return-object p3

    :catch_3
    move-exception v0

    move-object p2, v0

    new-instance p3, Lg/eof;

    invoke-direct {p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object p1

    iput-object p1, p0, Lg/ejy;->d:Lcom/google/android/gms/internal/ads/zzbul;

    const-string p3, "AdManagerCreator.newAdManagerByDynamiteLoader"

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2

    :cond_4
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    :try_start_3
    new-instance v4, Lg/bpp;

    invoke-direct {v4, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lg/cgo;->ai(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lg/drv;

    invoke-virtual/range {v3 .. v8}, Lg/drv;->a(Lg/bpp;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_4
    return-object v2

    :cond_5
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lg/deq;

    if-eqz p3, :cond_6

    check-cast p2, Lg/deq;

    return-object p2

    :cond_6
    new-instance p2, Lg/hi;

    invoke-direct {p2, p1}, Lg/hi;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lg/grc; {:try_start_3 .. :try_end_3} :catch_4

    return-object p2

    :catch_4
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-object v2
.end method
