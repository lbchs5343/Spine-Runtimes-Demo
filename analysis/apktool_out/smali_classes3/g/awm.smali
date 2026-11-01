.class public final Lg/awm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/awm;


# instance fields
.field public final b:Landroid/content/Context;

.field public volatile c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/awm;->b:Landroid/content/Context;

    return-void
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_4

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :cond_3
    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz p0, :cond_6

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    sget-object p0, Lg/cze;->a:[Lg/cxm;

    invoke-static {v2, p0}, Lg/awm;->f(Landroid/content/pm/PackageInfo;[Lg/cxm;)Lg/cxm;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p0, Lg/cze;->a:[Lg/cxm;

    aget-object p0, p0, v1

    new-array p1, v0, [Lg/cxm;

    aput-object p0, p1, v1

    invoke-static {v2, p1}, Lg/awm;->f(Landroid/content/pm/PackageInfo;[Lg/cxm;)Lg/cxm;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public static e(Landroid/content/Context;)Lg/awm;
    .locals 2

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    const-class v0, Lg/awm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/awm;->a:Lg/awm;

    if-nez v1, :cond_0

    invoke-static {p0}, Lg/bq;->f(Landroid/content/Context;)V

    new-instance v1, Lg/awm;

    invoke-direct {v1, p0}, Lg/awm;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/awm;->a:Lg/awm;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lg/awm;->a:Lg/awm;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final varargs f(Landroid/content/pm/PackageInfo;[Lg/cxm;)Lg/cxm;
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lg/dig;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lg/dig;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v1, p0, :cond_3

    aget-object p0, p1, v1

    invoke-virtual {p0, v0}, Lg/cxm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v1

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final g(I)Z
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/awm;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    array-length v5, v2

    if-nez v5, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object v0, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_d

    aget-object v8, v2, v6

    const-string v14, "Failed to get Google certificates from remote"

    const-string v15, "GoogleCertificates"

    const-string v7, "null pkg"

    if-nez v8, :cond_1

    new-instance v0, Lg/gez;

    invoke-direct {v0, v4, v7, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_a

    :cond_1
    iget-object v0, v1, Lg/awm;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lg/bq;->c:Lg/chc;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    :try_start_0
    invoke-static {}, Lg/bq;->h()V

    sget-object v0, Lg/bq;->e:Lg/gkq;

    check-cast v0, Lg/exy;

    invoke-virtual {v0}, Lg/exy;->zzi()Z

    move-result v0
    :try_end_0
    .catch Lg/eps; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_1
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_2
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, Lg/awm;->b:Landroid/content/Context;

    invoke-static {v0}, Lg/evp;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v16

    :try_start_2
    sget-object v7, Lg/bq;->b:Landroid/content/Context;

    invoke-static {v7}, Lg/ckd;->k(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lg/bq;->h()V
    :try_end_3
    .catch Lg/eps; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v7, Lg/env;

    sget-object v10, Lg/bq;->b:Landroid/content/Context;

    new-instance v11, Lg/bpp;

    invoke-direct {v11, v10}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v10, 0x0

    move v9, v0

    const/4 v0, 0x1

    invoke-direct/range {v7 .. v13}, Lg/env;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v9, Lg/bq;->e:Lg/gkq;

    check-cast v9, Lg/exy;

    invoke-virtual {v9}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v10

    sget v11, Lg/bon;->a:I

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v7, v10, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v7, 0x6

    invoke-virtual {v9, v10, v7}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v7

    sget-object v9, Lg/ekj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v7, v9}, Lg/bon;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lg/ekj;

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v9}, Lg/ekj;->zzb()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v9}, Lg/ekj;->zzc()I

    new-instance v7, Lg/gez;

    invoke-direct {v7, v0, v3, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_2
    invoke-virtual {v9}, Lg/ekj;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lg/ekj;->zzd()I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_3

    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    const-string v10, "error checking package certificate"

    if-nez v0, :cond_4

    move-object v0, v10

    :cond_4
    invoke-virtual {v9}, Lg/ekj;->zzc()I

    invoke-virtual {v9}, Lg/ekj;->zzd()I

    new-instance v9, Lg/gez;

    invoke-direct {v9, v4, v0, v7}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_4
    move-object v7, v9

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v7, "module call"

    new-instance v9, Lg/gez;

    invoke-direct {v9, v4, v7, v0}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "module init: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lg/gez;

    invoke-direct {v9, v4, v7, v0}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_8

    :goto_6
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    :try_start_7
    iget-object v9, v1, Lg/awm;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    iget-object v10, v1, Lg/awm;->b:Landroid/content/Context;

    invoke-static {v10}, Lg/evp;->f(Landroid/content/Context;)Z

    move-result v10

    if-nez v9, :cond_6

    new-instance v0, Lg/gez;

    invoke-direct {v0, v4, v7, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v7, v0

    goto :goto_8

    :cond_6
    iget-object v7, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_9

    array-length v7, v7

    if-eq v7, v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v7, Lg/dig;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {v7, v11}, Lg/dig;-><init>([B)V

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    :try_start_8
    invoke-static {v11, v7, v10, v4}, Lg/bq;->g(Ljava/lang/String;Lg/dig;ZZ)Lg/gez;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v12, v10, Lg/gez;->g:Z

    if-eqz v12, :cond_8

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_8

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    :try_start_9
    invoke-static {v11, v7, v4, v0}, Lg/bq;->g(Ljava/lang/String;Lg/dig;ZZ)Lg/gez;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v0, v0, Lg/gez;->g:Z

    if-eqz v0, :cond_8

    new-instance v7, Lg/gez;

    const-string v0, "debuggable release cert app rejected"

    invoke-direct {v7, v4, v0, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_8
    move-object v7, v10

    goto :goto_8

    :catchall_3
    move-exception v0

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_9
    :goto_7
    new-instance v7, Lg/gez;

    const-string v0, "single cert required"

    invoke-direct {v7, v4, v0, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_8
    iget-boolean v0, v7, Lg/gez;->g:Z

    if-eqz v0, :cond_a

    iput-object v8, v1, Lg/awm;->c:Ljava/lang/String;

    :cond_a
    move-object v0, v7

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v7, "no pkg "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lg/gez;

    invoke-direct {v8, v4, v7, v0}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v8

    goto :goto_a

    :goto_9
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_b
    sget-object v0, Lg/gez;->d:Lg/gez;

    :goto_a
    iget-boolean v7, v0, Lg/gez;->g:Z

    if-eqz v7, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    goto :goto_c

    :cond_e
    :goto_b
    new-instance v0, Lg/gez;

    const-string v2, "no pkgs"

    invoke-direct {v0, v4, v2, v3}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    iget-boolean v2, v0, Lg/gez;->g:Z

    if-nez v2, :cond_10

    const-string v2, "GoogleCertificatesRslt"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lg/gez;->c()V

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Lg/gez;->c()V

    :cond_10
    :goto_d
    iget-boolean v0, v0, Lg/gez;->g:Z

    return v0
.end method
