.class public final Lg/qv;
.super Lg/haf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/adw;

.field public final d:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lg/adw;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lg/qv;->a:Lg/adw;

    invoke-direct {p0, p1, p2, p4}, Lg/haf;-><init>(Lg/adw;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lg/qv;->d:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final b(Lg/nk;)V
    .locals 2

    iget-object v0, p0, Lg/qv;->a:Lg/adw;

    iget-object v1, v0, Lg/adw;->k:Lg/lb;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lg/lb;->onConnectionFailed(Lg/nk;)V

    :cond_0
    invoke-virtual {v0, p1}, Lg/adw;->ak(Lg/nk;)V

    return-void
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lg/qv;->d:Landroid/os/IBinder;

    :try_start_0
    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lg/qv;->a:Lg/adw;

    invoke-virtual {v2}, Lg/adw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lg/adw;->c(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-static {v2, v1, v3, v0}, Lg/adw;->aj(Lg/adw;IILandroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v2, v1, v3, v0}, Lg/adw;->aj(Lg/adw;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v2, Lg/adw;->x:Lg/nk;

    invoke-virtual {v2}, Lg/adw;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v2, Lg/adw;->r:Lg/bjb;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lg/bjb;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
