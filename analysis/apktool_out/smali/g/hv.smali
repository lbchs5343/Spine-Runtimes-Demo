.class public final synthetic Lg/hv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/hv;->a:I

    iput-object p2, p0, Lg/hv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lg/hv;->a:I

    sget-object v1, Lg/dgi;->a:Lg/dgi;

    iget-object v2, p0, Lg/hv;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lg/fxb;

    iget-object v0, v2, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    iget-object v4, v2, Lg/fxb;->bc:Landroid/content/Context;

    sget-object v5, Lg/eyp;->a:Ljava/lang/String;

    const/16 v5, 0x22

    if-lt v3, v5, :cond_0

    invoke-static {v4}, Lg/dlm;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    const-string v3, "jobscheduler"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    invoke-static {v4, v3}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-static {v3, v5}, Lg/eyp;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v3

    iget-object v4, v3, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Lg/gac;->al()V

    iget-object v3, v3, Lg/gg;->d:Lg/bnh;

    invoke-virtual {v3}, Lg/fze;->i()Lg/cap;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Lg/cap;->h()I

    invoke-virtual {v4}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Lg/gac;->am()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3, v5}, Lg/fze;->h(Lg/cap;)V

    iget-object v3, v2, Lg/fxb;->aw:Lg/flk;

    iget-object v2, v2, Lg/fxb;->ay:Ljava/util/List;

    invoke-static {v3, v0, v2}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Lg/gac;->am()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v3, v5}, Lg/fze;->h(Lg/cap;)V

    throw v0

    :pswitch_0
    check-cast v2, Lg/pc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lg/dna;->b(Lg/pc;)V

    return-object v1

    :pswitch_1
    check-cast v2, Landroidx/activity/ComponentActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
