.class public abstract Lg/gwn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bch;

.field public static final b:Ljava/util/ArrayList;

.field public static c:Z = false

.field public static final d:Ljava/util/ArrayList;

.field public static e:Z = false

.field public static f:Landroid/os/IBinder; = null

.field public static g:Z = false

.field public static final h:Landroid/os/Handler;

.field public static final i:Lg/emv;

.field public static j:Lg/gyu; = null

.field public static final k:Ljava/util/ArrayList;

.field public static l:I = -0x1

.field public static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bch;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    const-string v1, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {v0, v0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    sput-object v0, Lg/gwn;->a:Lg/bch;

    new-instance v0, Lg/emv;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gwn;->i:Lg/emv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/gwn;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/gwn;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/gwn;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lg/gwn;->h:Landroid/os/Handler;

    return-void
.end method

.method public static n()V
    .locals 6

    sget-object v0, Lg/gwn;->k:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/iv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v2, v2, Lg/iv;->a:Ljava/lang/Object;

    check-cast v2, Lg/btk;

    invoke-virtual {v2}, Lg/btk;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v3, Lg/gwn;->h:Landroid/os/Handler;

    iget-object v2, v2, Lg/iv;->a:Ljava/lang/Object;

    check-cast v2, Lg/btk;

    new-instance v4, Lg/fvi;

    const/16 v5, 0x13

    invoke-direct {v4, v5, v2}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lg/gwn;->m:Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static o(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shizuku:attach-api-version"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "shizuku:attach-package-name"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget-object v2, Lg/gwn;->a:Lg/bch;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 v0, 0x12

    invoke-interface {p1, v0, p0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public static p()I
    .locals 2

    sget v0, Lg/gwn;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lg/gwn;->w()Lg/gyu;

    move-result-object v0

    check-cast v0, Lg/bvh;

    invoke-virtual {v0}, Lg/bvh;->g()I

    move-result v0

    sput v0, Lg/gwn;->l:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static q(Lg/dah;)V
    .locals 3

    sget-object v0, Lg/gwn;->k:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/gwn;->b:Ljava/util/ArrayList;

    new-instance v2, Lg/iv;

    invoke-direct {v2, p0}, Lg/iv;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static r(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_3

    const/4 p0, 0x0

    sput-object p0, Lg/gwn;->f:Landroid/os/IBinder;

    sput-object p0, Lg/gwn;->j:Lg/gyu;

    const/4 p0, -0x1

    sput p0, Lg/gwn;->l:I

    sget-object v1, Lg/gwn;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object p0, Lg/gwn;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/iv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lg/iv;->a:Ljava/lang/Object;

    check-cast p1, Lg/dah;

    invoke-virtual {p1}, Lg/dah;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v0, Lg/gwn;->h:Landroid/os/Handler;

    iget-object p1, p1, Lg/iv;->a:Ljava/lang/Object;

    check-cast p1, Lg/dah;

    new-instance v2, Lg/fvi;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lg/gwn;->i:Lg/emv;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_4
    sput-object p1, Lg/gwn;->f:Landroid/os/IBinder;

    sget v0, Lg/fat;->a:I

    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lg/gyu;

    if-eqz v2, :cond_5

    check-cast v0, Lg/gyu;

    goto :goto_2

    :cond_5
    new-instance v0, Lg/bvh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lg/bvh;->a:Landroid/os/IBinder;

    :goto_2
    sput-object v0, Lg/gwn;->j:Lg/gyu;

    :try_start_1
    sget-object p1, Lg/gwn;->f:Landroid/os/IBinder;

    sget-object v0, Lg/gwn;->i:Lg/emv;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 p1, 0x1

    :try_start_2
    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-static {p0, v0}, Lg/gwn;->o(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-static {p0, v0}, Lg/gwn;->v(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_6

    sput-boolean p1, Lg/gwn;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_6
    :goto_3
    sget-boolean p0, Lg/gwn;->g:Z

    if-eqz p0, :cond_7

    sput-boolean p1, Lg/gwn;->m:Z

    invoke-static {}, Lg/gwn;->n()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static s()Z
    .locals 2

    sget-boolean v0, Lg/gwn;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lg/gwn;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lg/gwn;->w()Lg/gyu;

    move-result-object v0

    check-cast v0, Lg/bvh;

    invoke-virtual {v0}, Lg/bvh;->d()Z

    move-result v0

    sput-boolean v0, Lg/gwn;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static t(Lg/cxq;)V
    .locals 3

    sget-object v0, Lg/gwn;->k:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/gwn;->d:Ljava/util/ArrayList;

    new-instance v2, Lg/iv;

    invoke-direct {v2, p0}, Lg/iv;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static u(Lg/ajy;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lg/gwn;->w()Lg/gyu;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shizuku:user-service-arg-component"

    iget-object v3, p0, Lg/ajy;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lg/ajy;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v2, "shizuku:user-service-arg-tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "shizuku:user-service-remove"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    check-cast v0, Lg/bvh;

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lg/bvh;->e(Lg/fsr;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static v(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget-object v2, Lg/gwn;->a:Lg/bch;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p0, 0xe

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static w()Lg/gyu;
    .locals 2

    sget-object v0, Lg/gwn;->j:Lg/gyu;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "binder haven\'t been received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
