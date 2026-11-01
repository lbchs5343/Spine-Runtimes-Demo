.class public final Lg/gyq;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ph;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbpc;


# direct methods
.method public constructor <init>(Lg/ph;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gyq;->b:Landroid/content/Context;

    iput-object p3, p0, Lg/gyq;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-object p1, p0, Lg/gyq;->a:Lg/ph;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/gyq;->b:Landroid/content/Context;

    const-string v1, "ads_preloader"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/gyq;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const v1, 0xe8813d8

    iget-object v2, p0, Lg/gyq;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-interface {p1, v0, v2, v1}, Lg/drf;->a(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/dzg;

    move-result-object p1

    invoke-interface {p1, v2}, Lg/dzg;->zzh(Lcom/google/android/gms/internal/ads/zzbpg;)V

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 11

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/gyq;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzkp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v3, 0xe8813d8

    const/4 v4, 0x1

    const-string v5, "com.google.android.gms.ads.internal.client.IAdPreloader"

    iget-object v6, p0, Lg/gyq;->a:Lg/ph;

    iget-object v7, p0, Lg/gyq;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    :try_start_0
    const-string v2, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v9

    invoke-virtual {v9, v2}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    const-string v9, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator"

    invoke-interface {v2, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v9

    instance-of v10, v9, Lg/axj;

    if-eqz v10, :cond_1

    check-cast v9, Lg/axj;

    goto :goto_0

    :cond_1
    new-instance v9, Lg/axj;

    invoke-direct {v9, v2}, Lg/axj;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzayc;->p(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    move-object v0, v8

    goto :goto_1

    :cond_2
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lg/dzg;

    if-eqz v3, :cond_3

    check-cast v0, Lg/dzg;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v0, Lg/aui;

    invoke-direct {v0, v2}, Lg/aui;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {v0, v7}, Lg/dzg;->zzh(Lcom/google/android/gms/internal/ads/zzbpg;)V

    return-object v0

    :catch_3
    move-exception v0

    new-instance v2, Lg/eof;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    iput-object v1, v6, Lg/ph;->d:Ljava/lang/Object;

    const-string v2, "ClientApiBroker.getAdPreloader"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v0, v6, Lg/ph;->g:Ljava/lang/Object;

    check-cast v0, Lg/dfk;

    :try_start_3
    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/cgo;->ai(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/axj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzayc;->p(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v1, :cond_5

    move-object v0, v8

    goto :goto_3

    :cond_5
    invoke-interface {v1, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lg/dzg;

    if-eqz v2, :cond_6

    check-cast v0, Lg/dzg;

    goto :goto_3

    :cond_6
    new-instance v0, Lg/aui;

    invoke-direct {v0, v1}, Lg/aui;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {v0, v7}, Lg/dzg;->zzh(Lcom/google/android/gms/internal/ads/zzbpg;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lg/grc; {:try_start_3 .. :try_end_3} :catch_4

    move-object v8, v0

    goto :goto_4

    :catch_4
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_4
    return-object v8
.end method
