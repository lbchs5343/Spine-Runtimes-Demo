.class public abstract Lg/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/content/Context;

.field public static final c:Lg/chc;

.field public static final d:Lg/chc;

.field public static volatile e:Lg/gkq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/chc;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Lg/cxm;->h(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/chc;-><init>([BI)V

    new-instance v0, Lg/chc;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Lg/cxm;->h(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/chc;-><init>([BI)V

    new-instance v0, Lg/chc;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Lg/cxm;->h(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lg/chc;-><init>([BI)V

    sput-object v0, Lg/bq;->c:Lg/chc;

    new-instance v0, Lg/chc;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Lg/cxm;->h(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lg/chc;-><init>([BI)V

    sput-object v0, Lg/bq;->d:Lg/chc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/bq;->a:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lg/bq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bq;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lg/bq;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static g(Ljava/lang/String;Lg/dig;ZZ)Lg/gez;
    .locals 7

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lg/bq;->h()V
    :try_end_0
    .catch Lg/eps; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v3, Lg/bq;->b:Landroid/content/Context;

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v3, Lg/aja;

    invoke-direct {v3, p0, p1, p2, p3}, Lg/aja;-><init>(Ljava/lang/String;Lg/cxm;ZZ)V

    :try_start_1
    sget-object p3, Lg/bq;->e:Lg/gkq;

    sget-object v4, Lg/bq;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Lg/bpp;

    invoke-direct {v5, v4}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lg/exy;

    invoke-virtual {p3}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v4

    sget v6, Lg/bon;->a:I

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v3, v4, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {v4, v5}, Lg/bon;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v3, 0x5

    invoke-virtual {p3, v4, v3}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    sget-object p0, Lg/gez;->d:Lg/gez;

    return-object p0

    :cond_1
    new-instance p3, Lg/bsu;

    invoke-direct {p3, p2, p0, p1}, Lg/bsu;-><init>(ZLjava/lang/String;Lg/dig;)V

    new-instance p0, Lg/bqx;

    invoke-direct {p0, p3}, Lg/bqx;-><init>(Lg/bsu;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lg/gez;

    const-string p2, "module call"

    invoke-direct {p1, v2, p2, p0}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    return-object p1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/gez;

    invoke-direct {p2, v2, p1, p0}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    return-object p2
.end method

.method public static h()V
    .locals 5

    sget-object v0, Lg/bq;->e:Lg/gkq;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/bq;->b:Landroid/content/Context;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v0, Lg/bq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bq;->e:Lg/gkq;

    if-nez v1, :cond_3

    sget-object v1, Lg/bq;->b:Landroid/content/Context;

    sget-object v2, Lg/dxw;->d:Lg/fbc;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lg/dxw;->t(Landroid/content/Context;Lg/ere;Ljava/lang/String;)Lg/dxw;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v2, Lg/rh;->a:I

    const-string v2, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/gkq;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lg/gkq;

    goto :goto_0

    :cond_2
    new-instance v3, Lg/exy;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v1, v3

    :goto_0
    sput-object v1, Lg/bq;->e:Lg/gkq;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
