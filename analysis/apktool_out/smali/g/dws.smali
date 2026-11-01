.class public final Lg/dws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lg/adj;

.field public final b:Lg/gxm;


# direct methods
.method public constructor <init>(Lg/adj;Lg/gxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dws;->a:Lg/adj;

    iput-object p2, p0, Lg/dws;->b:Lg/gxm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg/dws;->a:Lg/adj;

    iget-object v0, v0, Lg/adj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dws;->a:Lg/adj;

    iget-object v1, v1, Lg/adj;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lg/dws;->b:Lg/gxm;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dws;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/dws;->a:Lg/adj;

    iget-object v1, v1, Lg/adj;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lg/dws;->b:Lg/gxm;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fme;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lg/dws;->b:Lg/gxm;

    check-cast v1, Lg/ggk;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lg/ggk;->b:Lg/aqv;

    new-instance v3, Lg/dki;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lg/dki;-><init>(Lg/ggk;I)V

    invoke-virtual {v2, v3}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    iget-object v2, p0, Lg/dws;->b:Lg/gxm;

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
