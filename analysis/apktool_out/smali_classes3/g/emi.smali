.class public final Lg/emi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lg/yh;


# direct methods
.method public constructor <init>(Lg/yh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/emi;->b:Lg/yh;

    iput-object p2, p0, Lg/emi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lg/emi;->b:Lg/yh;

    if-eqz p2, :cond_2

    :try_start_0
    sget v0, Lg/aql;->a:I

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lg/gio;

    if-eqz v2, :cond_0

    check-cast v1, Lg/gio;

    goto :goto_0

    :cond_0
    new-instance v1, Lg/amn;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v0, v2}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    if-nez v1, :cond_1

    iget-object p2, p1, Lg/yh;->a:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->g:Lg/dvb;

    const-string v0, "Install Referrer Service implementation was not found"

    invoke-virtual {p2, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lg/yh;->a:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->c:Lg/dvb;

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object p2, p1, Lg/yh;->a:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->j:Lg/fth;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/fuy;

    invoke-direct {v0, p0, v1, p0}, Lg/fuy;-><init>(Lg/emi;Lg/gio;Lg/emi;)V

    invoke-virtual {p2, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object p1, p1, Lg/yh;->a:Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->g:Lg/dvb;

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p1, p2, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p1, Lg/yh;->a:Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->g:Lg/dvb;

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lg/emi;->b:Lg/yh;

    iget-object p1, p1, Lg/yh;->a:Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method
