.class public final Lg/on;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $constraints:Lg/bho;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lg/ehm;


# direct methods
.method public constructor <init>(Lg/bho;Lg/ehm;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/on;->$constraints:Lg/bho;

    iput-object p2, p0, Lg/on;->this$0:Lg/ehm;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/on;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/on;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/ayw;

    iget-object v1, p0, Lg/on;->$constraints:Lg/bho;

    invoke-virtual {v1}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    check-cast p1, Lg/dgs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, Lg/dgs;->_cl(Ljava/lang/Throwable;)Z

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_2
    new-instance v4, Lg/bqi;

    iget-object v5, p0, Lg/on;->this$0:Lg/ehm;

    invoke-direct {v4, v5, p1, v3}, Lg/bqi;-><init>(Lg/ehm;Lg/ayw;Lg/bdp;)V

    const/4 v5, 0x3

    invoke-static {p1, v3, v3, v4, v5}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    move-result-object v3

    new-instance v4, Lg/cjz;

    invoke-direct {v4, v3, p1}, Lg/cjz;-><init>(Lg/fe;Lg/ayw;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_4

    sget-object v3, Lg/aag;->a:Lg/aag;

    iget-object v5, p0, Lg/on;->this$0:Lg/ehm;

    iget-object v5, v5, Lg/ehm;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lg/aag;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lg/aag;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    sget v7, Lg/gx;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lg/ayr;->x(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v6

    new-instance v1, Lg/aps;

    invoke-direct {v1, v4, v5, v3}, Lg/aps;-><init>(Lg/cjz;Landroid/net/ConnectivityManager;Lg/aag;)V

    goto :goto_3

    :goto_1
    monitor-exit v6

    throw p1

    :cond_4
    sget v3, Lg/eze;->a:I

    iget-object v3, p0, Lg/on;->this$0:Lg/ehm;

    iget-object v3, v3, Lg/ehm;->d:Landroid/net/ConnectivityManager;

    new-instance v5, Lg/eze;

    invoke-direct {v5, v4}, Lg/eze;-><init>(Lg/cjz;)V

    new-instance v6, Lg/fka;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :try_start_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v7

    sget v8, Lg/gx;->a:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v2, v6, Lg/fka;->element:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TooManyRequestsException"

    invoke-static {v7, v8}, Lg/dmc;->by(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    sget v7, Lg/gx;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/das;

    const/4 v7, 0x7

    invoke-direct {v1, v7}, Lg/das;-><init>(I)V

    invoke-virtual {v4, v1}, Lg/cjz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v1, Lg/hdf;

    invoke-direct {v1, v6, v3, v5}, Lg/hdf;-><init>(Lg/fka;Landroid/net/ConnectivityManager;Lg/eze;)V

    :goto_3
    new-instance v3, Lg/fom;

    invoke-direct {v3, v1}, Lg/fom;-><init>(Lg/cvw;)V

    iput v2, p0, Lg/on;->label:I

    invoke-static {p1, v3, p0}, Lg/acw;->ao(Lg/ayw;Lg/cvw;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_6
    throw v1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/ayw;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/on;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/on;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/on;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 3

    new-instance v0, Lg/on;

    iget-object v1, p0, Lg/on;->$constraints:Lg/bho;

    iget-object v2, p0, Lg/on;->this$0:Lg/ehm;

    invoke-direct {v0, v1, v2, p2}, Lg/on;-><init>(Lg/bho;Lg/ehm;Lg/bdp;)V

    iput-object p1, v0, Lg/on;->L$0:Ljava/lang/Object;

    return-object v0
.end method
