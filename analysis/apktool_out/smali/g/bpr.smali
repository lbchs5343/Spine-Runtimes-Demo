.class public final Lg/bpr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public final b:Ljava/lang/Object;

.field public final c:Lg/byi;

.field public final d:Lg/cfo;


# direct methods
.method public constructor <init>(Lg/byi;Lg/cfo;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bpr;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/bpr;->c:Lg/byi;

    iput-object p2, p0, Lg/bpr;->d:Lg/cfo;

    iput-object p3, p0, Lg/bpr;->a:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lg/bpr;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/bpr;->c:Lg/byi;

    iget-object v3, p0, Lg/bpr;->d:Lg/cfo;

    check-cast v2, Lg/hds;

    invoke-virtual {v2, v3, p1, v0}, Lg/hds;->d(Lg/cfo;Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
