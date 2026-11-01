.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/dvw;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    const-string v0, "com.google.android.gms.ads.internal.util.IWorkManagerUtil"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lg/bmr;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    new-instance v1, Lg/flk;

    invoke-direct {v1, v0}, Lg/flk;-><init>(Lg/bmr;)V

    const-string v0, "context"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lg/fxb;->bg(Landroid/content/Context;Lg/flk;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    sget-object v1, Lg/cie;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lg/cie;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v1}, Lg/dvw;->zzg(Lg/bjq;Lg/cie;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lg/dvw;->zze(Lg/bjq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v1, v2}, Lg/dvw;->zzf(Lg/bjq;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method public final zze(Lg/bjq;)V
    .locals 14

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->a(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, Lg/awt;->n(Landroid/content/Context;)Lg/fxb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "offline_ping_sender_work"

    invoke-virtual {p1, v0}, Lg/fxb;->bj(Ljava/lang/String;)Lg/gev;

    new-instance v1, Lg/im;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v4, Lg/dnx;->CONNECTED:Lg/dnx;

    const-string v2, "networkType"

    invoke-static {v4, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lg/im;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lg/im;-><init>(Landroid/net/NetworkRequest;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_0

    invoke-static {v1}, Lg/gsv;->be(Ljava/util/AbstractCollection;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lg/gpk;->a:Lg/gpk;

    goto :goto_0

    :goto_1
    new-instance v2, Lg/bho;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-wide v11, v9

    invoke-direct/range {v2 .. v13}, Lg/bho;-><init>(Lg/im;Lg/dnx;ZZZZJJLjava/util/Set;)V

    new-instance v1, Lg/crv;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v1, v3}, Lg/crv;-><init>(Ljava/lang/Class;)V

    iget-object v3, v1, Lg/cw;->b:Ljava/lang/Object;

    check-cast v3, Lg/fkj;

    iput-object v2, v3, Lg/fkj;->r:Lg/bho;

    iget-object v2, v1, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/cw;->f()Lg/dze;

    move-result-object v0

    check-cast v0, Lg/gmw;

    invoke-virtual {p1, v0}, Lg/awt;->ar(Lg/gmw;)V

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzf(Lg/bjq;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lg/cie;

    const-string v1, ""

    invoke-direct {v0, p2, p3, v1}, Lg/cie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzg(Lg/bjq;Lg/cie;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lg/bjq;Lg/cie;)Z
    .locals 13

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->a(Landroid/content/Context;)V

    new-instance v0, Lg/im;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v3, Lg/dnx;->CONNECTED:Lg/dnx;

    const-string v1, "networkType"

    invoke-static {v3, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lg/im;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lg/im;-><init>(Landroid/net/NetworkRequest;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    invoke-static {v0}, Lg/gsv;->be(Ljava/util/AbstractCollection;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lg/gpk;->a:Lg/gpk;

    goto :goto_0

    :goto_1
    new-instance v1, Lg/bho;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    move-wide v10, v8

    invoke-direct/range {v1 .. v12}, Lg/bho;-><init>(Lg/im;Lg/dnx;ZZZZJJLjava/util/Set;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "uri"

    iget-object v3, p2, Lg/cie;->zza:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gws_query_id"

    iget-object v3, p2, Lg/cie;->zzb:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "image_url"

    iget-object p2, p2, Lg/cie;->zzc:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lg/dwa;

    invoke-direct {p2, v0}, Lg/dwa;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {p2}, Lg/bff;->k(Lg/dwa;)[B

    new-instance v0, Lg/crv;

    const-class v2, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {v0, v2}, Lg/crv;-><init>(Ljava/lang/Class;)V

    iget-object v2, v0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v2, Lg/fkj;

    iput-object v1, v2, Lg/fkj;->r:Lg/bho;

    iput-object p2, v2, Lg/fkj;->g:Lg/dwa;

    iget-object p2, v0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast p2, Ljava/util/LinkedHashSet;

    const-string v1, "offline_notification_work"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/cw;->f()Lg/dze;

    move-result-object p2

    check-cast p2, Lg/gmw;

    :try_start_0
    invoke-static {p1}, Lg/awt;->n(Landroid/content/Context;)Lg/fxb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Lg/awt;->ar(Lg/gmw;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    const/4 p1, 0x0

    return p1
.end method
