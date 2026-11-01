.class public final Lg/ed;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbpc;

.field public final synthetic b:Lg/ph;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/ph;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ed;->c:Landroid/content/Context;

    iput-object p3, p0, Lg/ed;->d:Ljava/lang/String;

    iput-object p4, p0, Lg/ed;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-object p1, p0, Lg/ed;->b:Lg/ph;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/ed;->c:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/gkf;

    invoke-direct {v0}, Lg/zh;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/ed;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/ed;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    const v2, 0xe8813d8

    iget-object v3, p0, Lg/ed;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v1, v2}, Lg/drf;->k(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/hav;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lg/ed;->c:Landroid/content/Context;

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

    const-string v4, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    iget-object v5, p0, Lg/ed;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v6, p0, Lg/ed;->d:Ljava/lang/String;

    iget-object v7, p0, Lg/ed;->b:Lg/ph;

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const-string v9, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v10

    invoke-virtual {v10, v9}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    if-nez v9, :cond_0

    move-object v10, v8

    goto :goto_0

    :cond_0
    const-string v10, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {v9, v10}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v10

    instance-of v11, v10, Lg/fgg;

    if-eqz v11, :cond_1

    check-cast v10, Lg/fgg;

    goto :goto_0

    :cond_1
    new-instance v10, Lg/fgg;

    invoke-direct {v10, v9}, Lg/fgg;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v9, v3}, Lcom/google/android/gms/internal/ads/zzayc;->p(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    return-object v8

    :cond_2
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lg/hav;

    if-eqz v3, :cond_3

    check-cast v1, Lg/hav;

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
    new-instance v1, Lg/jr;

    invoke-direct {v1, v2}, Lg/jr;-><init>(Landroid/os/IBinder;)V

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

    iput-object v0, v7, Lg/ph;->d:Ljava/lang/Object;

    const-string v2, "ClientApiBroker.createAdLoaderBuilder"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lg/ph;->e:Ljava/lang/Object;

    check-cast v1, Lg/dfk;

    :try_start_3
    new-instance v7, Lg/bpp;

    invoke-direct {v7, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/cgo;->ai(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fgg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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

    instance-of v2, v0, Lg/hav;

    if-eqz v2, :cond_6

    check-cast v0, Lg/hav;

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_6
    new-instance v0, Lg/jr;

    invoke-direct {v0, v1}, Lg/jr;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lg/grc; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_4
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_3
    return-object v8
.end method
