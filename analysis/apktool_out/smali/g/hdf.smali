.class public final Lg/hdf;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $callbackRegistered:Lg/fka;

.field final synthetic $connManager:Landroid/net/ConnectivityManager;

.field final synthetic $networkCallback:Lg/eze;


# direct methods
.method public constructor <init>(Lg/fka;Landroid/net/ConnectivityManager;Lg/eze;)V
    .locals 0

    iput-object p1, p0, Lg/hdf;->$callbackRegistered:Lg/fka;

    iput-object p2, p0, Lg/hdf;->$connManager:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lg/hdf;->$networkCallback:Lg/eze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/hdf;->$callbackRegistered:Lg/fka;

    iget-boolean v0, v0, Lg/fka;->element:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget v1, Lg/gx;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/hdf;->$connManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lg/hdf;->$networkCallback:Lg/eze;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method
