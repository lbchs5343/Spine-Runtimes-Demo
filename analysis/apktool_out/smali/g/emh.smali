.class public final Lg/emh;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $listener:Lg/edv;

.field final synthetic this$0:Lg/bvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bvw;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/bvw;Lg/edv;)V
    .locals 0

    iput-object p1, p0, Lg/emh;->this$0:Lg/bvw;

    iput-object p2, p0, Lg/emh;->$listener:Lg/edv;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/emh;->this$0:Lg/bvw;

    iget-object v0, v0, Lg/bvw;->d:Lg/cmh;

    iget-object v1, p0, Lg/emh;->$listener:Lg/edv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "listener"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lg/cmh;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/cmh;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    :goto_1
    monitor-exit v2

    throw v0
.end method
