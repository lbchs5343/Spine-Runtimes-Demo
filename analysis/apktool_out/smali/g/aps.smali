.class public final Lg/aps;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $connManager:Landroid/net/ConnectivityManager;

.field final synthetic $onConstraintState:Lg/and;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/and;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lg/aag;


# direct methods
.method public constructor <init>(Lg/cjz;Landroid/net/ConnectivityManager;Lg/aag;)V
    .locals 0

    iput-object p1, p0, Lg/aps;->$onConstraintState:Lg/and;

    iput-object p2, p0, Lg/aps;->$connManager:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lg/aps;->this$0:Lg/aag;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lg/aag;->b:Ljava/lang/Object;

    iget-object v1, p0, Lg/aps;->$onConstraintState:Lg/and;

    iget-object v2, p0, Lg/aps;->$connManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lg/aps;->this$0:Lg/aag;

    monitor-enter v0

    :try_start_0
    sget-object v4, Lg/aag;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    sget v4, Lg/gx;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    :goto_1
    monitor-exit v0

    throw v1
.end method
