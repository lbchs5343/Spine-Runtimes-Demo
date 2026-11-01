.class public final synthetic Lg/dgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dsf;

.field public final synthetic c:Lg/dwp;

.field public final synthetic d:Lg/ku;


# direct methods
.method public synthetic constructor <init>(Lg/dwp;Lg/ku;ILg/dsf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dgh;->c:Lg/dwp;

    iput-object p2, p0, Lg/dgh;->d:Lg/ku;

    iput p3, p0, Lg/dgh;->a:I

    iput-object p4, p0, Lg/dgh;->b:Lg/dsf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lg/dgh;->d:Lg/ku;

    iget v1, p0, Lg/dgh;->a:I

    iget-object v2, p0, Lg/dgh;->b:Lg/dsf;

    iget-object v3, p0, Lg/dgh;->c:Lg/dwp;

    iget-object v4, v3, Lg/dwp;->e:Lg/ddc;

    :try_start_0
    iget-object v5, v3, Lg/dwp;->h:Lg/ahy;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lg/aoi;

    const/16 v7, 0x13

    invoke-direct {v6, v7, v5}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Lg/cga;

    invoke-virtual {v5, v6}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    iget-object v5, v3, Lg/dwp;->d:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0, v1}, Lg/dwp;->j(Lg/ku;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v5, Lg/blo;

    invoke-direct {v5, v3, v0, v1}, Lg/blo;-><init>(Lg/dwp;Lg/ku;I)V

    check-cast v4, Lg/cga;

    invoke-virtual {v4, v5}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;
    :try_end_0
    .catch Lg/fqw; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lg/dsf;->run()V

    return-void

    :catch_0
    :try_start_1
    iget-object v3, v3, Lg/dwp;->b:Lg/ahe;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lg/ahe;->d(Lg/ku;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lg/dsf;->run()V

    return-void

    :goto_1
    invoke-virtual {v2}, Lg/dsf;->run()V

    throw v0
.end method
