.class public abstract Lg/bkb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/tl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/tl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    sput-object v0, Lg/bkb;->a:Lg/tl;

    return-void
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lg/ddd;->a:Landroid/os/UserManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const-class v0, Lg/bkb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bkb;->a:Lg/tl;

    invoke-virtual {v1, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    :catchall_1
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    throw v2
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, Lg/bkb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bkb;->a:Lg/tl;

    invoke-virtual {v1}, Lg/tl;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Lg/bow;

    invoke-virtual {v2}, Lg/bow;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lg/bcp;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
