.class public final Lg/exe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;


# virtual methods
.method public final fail(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    sput-boolean p1, Lg/eku;->a:Z

    return-void
.end method

.method public final success()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lg/eku;->a:Z

    :cond_0
    :goto_0
    sget-object v0, Lg/eku;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fiy;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/fiy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dms;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/dms;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dms;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/dms;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lg/fiy;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method
