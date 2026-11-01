.class public final Lg/fsi;
.super Lg/eil;
.source "SourceFile"


# instance fields
.field public final m:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/gkr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/eil;-><init>(Landroid/content/Context;Lg/gkr;)V

    iget-object p1, p0, Lg/cmh;->i:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lg/fsi;->m:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/fsi;->m:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lg/djv;->b(Landroid/net/ConnectivityManager;)Lg/dod;

    move-result-object v0

    return-object v0
.end method

.method public final l(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget-object v0, Lg/djv;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/fsi;->m:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lg/djv;->b(Landroid/net/ConnectivityManager;)Lg/dod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/cmh;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
