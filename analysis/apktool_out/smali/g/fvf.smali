.class public final Lg/fvf;
.super Lcom/bytedance/sdk/component/o/p/ox;


# instance fields
.field public a:Ljava/lang/Process;

.field public b:J


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lg/fvf;->b:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lg/fvf;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-void
.end method
