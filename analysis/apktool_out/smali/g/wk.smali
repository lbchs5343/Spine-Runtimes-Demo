.class public final Lg/wk;
.super Lg/cmh;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/ConnectivityManager;

.field public final b:Lg/fzu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/gkr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/cmh;-><init>(Landroid/content/Context;Lg/gkr;)V

    iget-object p1, p0, Lg/cmh;->i:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lg/wk;->a:Landroid/net/ConnectivityManager;

    new-instance p1, Lg/fzu;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lg/fzu;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/wk;->b:Lg/fzu;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    sget-object v2, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/wk;->a:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lg/wk;->b:Lg/fzu;

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "networkCallback"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/wk;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lg/djv;->b(Landroid/net/ConnectivityManager;)Lg/dod;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    sget-object v2, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/wk;->a:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lg/wk;->b:Lg/fzu;

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "networkCallback"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lg/ayr;->x(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
