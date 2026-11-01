.class public final Lg/ecp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ">>>>> Dispatching"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lg/fag;->l()Lg/fag;

    move-result-object v0

    iget-boolean v2, v0, Lg/fag;->d:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Lg/gnv;->b(J)V

    iput-boolean v1, v0, Lg/fag;->d:Z

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/fag;->f:J

    :try_start_0
    iget-object v1, v0, Lg/fag;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, p1}, Lg/fag;->n(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, v0, Lg/fag;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lg/eca;->c:Landroid/content/Context;

    goto :goto_0

    :cond_2
    const-string v0, "<<<<< Finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lg/fag;->l()Lg/fag;

    move-result-object v0

    iget-object v2, v0, Lg/fag;->i:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lg/fag;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v3, p1}, Lg/fag;->n(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, Lg/eca;->c:Landroid/content/Context;

    :cond_3
    :goto_0
    sget-object v0, Lg/fag;->c:Landroid/util/Printer;

    if-eqz v0, :cond_4

    sget-object v1, Lg/fag;->b:Lg/ecp;

    if-eq v0, v1, :cond_4

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
