.class public abstract Lg/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public f:Landroid/content/Context;


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Lg/eab;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lg/pf;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Lg/in;

    sget v1, Lg/fxd;->b:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/byi;->a:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lg/byi;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lg/byi;

    goto :goto_0

    :cond_1
    new-instance v1, Lg/hds;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lg/hds;->b:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    invoke-direct {v0, p2, p1}, Lg/eab;-><init>(Lg/byi;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Lg/pf;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Lg/eab;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
