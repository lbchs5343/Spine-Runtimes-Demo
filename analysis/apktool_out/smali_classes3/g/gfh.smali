.class public final Lg/gfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/gfh;->b:I

    iput-object p2, p0, Lg/gfh;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/gfh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/ebs;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Lg/gfh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gfh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/gfh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/gfh;->b:I

    iput-object p1, p0, Lg/gfh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/gfh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 5

    iget-object v0, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/gmu;

    iget-object v0, v0, Lg/gmu;->i:Lg/fxb;

    iget-object v0, v0, Lg/fxb;->ax:Lg/egu;

    iget-object v1, p0, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/egu;->u(Ljava/lang/String;)Lg/fkj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fkj;->ab()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v1, Lg/gmu;

    iget-object v1, v1, Lg/gmu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/gmu;

    iget-object v2, v2, Lg/gmu;->l:Ljava/util/HashMap;

    invoke-static {v0}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/gmu;

    iget-object v3, v2, Lg/gmu;->c:Lg/vn;

    iget-object v4, v2, Lg/gmu;->k:Lg/ccc;

    check-cast v4, Lg/gkr;

    iget-object v4, v4, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v4, Lg/cpk;

    invoke-static {v3, v0, v4, v2}, Lg/gx;->b(Lg/vn;Lg/fkj;Lg/cpk;Lg/cdj;)Lg/fe;

    move-result-object v2

    iget-object v3, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v3, Lg/gmu;

    iget-object v3, v3, Lg/gmu;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ai;->a(Lcom/tencent/bugly/proguard/ai;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/bugly/proguard/ai;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ai;->b(Lcom/tencent/bugly/proguard/ai;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final f()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/bugly/proguard/aq;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/bugly/proguard/aq;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/aq;->b(Lcom/tencent/bugly/proguard/aq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    move-result-object v2

    iget-object v3, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v3, Lcom/tencent/bugly/proguard/aq;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/aq;)Landroid/content/IntentFilter;

    move-result-object v3

    const-string v4, "com.tencent.bugly.BuglyBroadcastReceiver.permission"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Lg/gfh;->b:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/bugly/proguard/c;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/c;->b:Lcom/tencent/bugly/proguard/ay;

    iget-object v4, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    const-string v5, "read trace first dump for create time!"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v4, v6}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-wide v8, v2

    :goto_0
    cmp-long v5, v8, v2

    if-nez v5, :cond_1

    const-string v2, "trace dump fail could not get time!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/tencent/bugly/proguard/ay;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v8, v9, v4}, Lcom/tencent/bugly/proguard/ay;->a(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const-string v2, "handle anr error %s"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    invoke-direct {v1}, Lg/gfh;->f()V

    return-void

    :pswitch_1
    invoke-direct {v1}, Lg/gfh;->e()V

    return-void

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/gk;

    iget-object v3, v2, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v3}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "debug"

    invoke-static {v3, v4, v3, v0}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v4, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v4, Lg/he;

    invoke-virtual {v4}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_6
    :try_start_1
    iget-object v3, v2, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v3, v4, v6}, Lg/he;->toXMLLayout(Landroid/content/Context;Lg/he;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0, v3, v6}, Lg/buj;->ag(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_7

    iget-object v3, v2, Lg/gk;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v2, Lg/gk;->f:Lg/eqi;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot write layout export"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    :try_start_3
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    iget-object v0, v2, Lg/gk;->f:Lg/eqi;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v2, Lg/gk;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_5
    return-void

    :goto_6
    iget-object v2, v2, Lg/gk;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_3
    invoke-direct {v1}, Lg/gfh;->d()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    iget-object v2, v0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    iget-object v3, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/a;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    :try_start_4
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    iget-object v2, v0, Lg/aqv;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    invoke-virtual {v0}, Lg/aqv;->f()V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v2, Lg/aqv;

    iget-object v2, v2, Lg/aqv;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v3, Lg/aqv;

    invoke-virtual {v3}, Lg/aqv;->f()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :pswitch_6
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/gsn;

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v2, Lg/cxj;

    invoke-virtual {v0, v2}, Lg/gsn;->t(Lg/cpk;)V

    return-void

    :pswitch_7
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/gmv;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lg/gmv;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/dbk;

    iget-object v3, v2, Lg/dbk;->h:Lg/cpk;

    :cond_8
    :try_start_8
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    sget-object v4, Lg/cgq;->a:Lg/cgq;

    invoke-static {v0, v4}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    :goto_7
    invoke-virtual {v2}, Lg/dbk;->m()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    iput-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    add-int/2addr v6, v7

    const/16 v0, 0x10

    if-lt v6, v0, :cond_8

    invoke-virtual {v3, v2}, Lg/cpk;->w(Lg/boj;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v2, v1}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    :goto_8
    return-void

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/ka;

    iget-object v3, v2, Lg/ka;->p:Lg/ka;

    invoke-static {v3}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "layout"

    invoke-static {v3, v4, v3, v0}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v4, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v4, Lg/he;

    invoke-virtual {v4}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lg/ka;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_9

    :cond_a
    sget-object v3, Lg/ka;->c:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_b
    :try_start_9
    iget-object v3, v2, Lg/ka;->p:Lg/ka;

    invoke-static {v3, v4, v6}, Lg/he;->toXMLLayout(Landroid/content/Context;Lg/he;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v0, v3, v6}, Lg/buj;->ag(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v3, :cond_c

    iget-object v3, v2, Lg/ka;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v2, Lg/ka;->r:Lg/eqi;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_c
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot write layout export"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_a
    :try_start_b
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    iget-object v0, v2, Lg/ka;->r:Lg/eqi;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object v0, v2, Lg/ka;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_b
    return-void

    :goto_c
    iget-object v2, v2, Lg/ka;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_a
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Lg/baq;->s:Lg/he;

    iget-object v3, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v3, Lg/he;

    if-eq v2, v3, :cond_d

    goto/16 :goto_e

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inspector_first_finish"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object v2, v0, Lg/baq;->p:Lc/b/ab;

    iget-object v3, v0, Lg/baq;->s:Lg/he;

    invoke-virtual {v2, v3}, Lg/jt;->s(Lg/he;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lg/eib;->bc:Lg/eib;

    const-string v3, "tips_click_zone"

    invoke-static {v2, v3}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v0, Lg/eib;->bc:Lg/eib;

    const v3, 0x7f120281

    invoke-static {v2, v3}, Lg/gm;->c(Landroid/content/Context;I)V

    iget-object v2, v0, Lg/eib;->bc:Lg/eib;

    const v3, 0x7f12027d

    invoke-static {v2, v3}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_e
    const-string v2, "com.tencent.mm"

    iget-object v3, v0, Lg/baq;->s:Lg/he;

    invoke-virtual {v3}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lg/baq;->s:Lg/he;

    invoke-virtual {v2}, Lg/he;->getChildCount()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, v0, Lg/baq;->s:Lg/he;

    invoke-virtual {v2}, Lg/he;->getChildNodeInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/he;

    sget-object v4, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_d

    :cond_10
    invoke-virtual {v3}, Lg/he;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Lg/ern;->k(Landroid/graphics/Rect;)Z

    move-result v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_11
    iget-object v0, v0, Lg/eib;->bc:Lg/eib;

    const v2, 0x7f1202a0

    invoke-static {v0, v2}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_12
    :goto_e
    return-void

    :pswitch_b
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/axu;

    invoke-static {v0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v0

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/bdp;->_z(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/gsn;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/drl;

    invoke-virtual {v0, v2}, Lg/gsn;->t(Lg/cpk;)V

    return-void

    :pswitch_d
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget v2, Lg/ehs;->a:I

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v2, Lg/fkj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/ehs;

    iget-object v0, v0, Lg/ehs;->c:Lg/dio;

    new-array v3, v7, [Lg/fkj;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Lg/dio;->r([Lg/fkj;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/fwj;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->g()V

    invoke-static {v5}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/a;

    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_13
    return-void

    :pswitch_f
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lg/ebs;->t(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v3, Lb/b/b;

    iget-object v8, v3, Lb/b/b;->k:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_14
    iget-object v8, v3, Lg/efx;->bb:Lg/efx;

    invoke-static {v8}, Lg/dha;->a(Lg/cms;)V

    :try_start_c
    sget-object v8, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v8, v3, Lg/efx;->bb:Lg/efx;

    const-string v9, "applist_decompile"

    invoke-static {v8, v6, v9}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    if-nez v8, :cond_15

    invoke-static {v3, v0, v2}, Lb/b/b;->n(Lb/b/b;Ljava/lang/String;Ljava/io/File;)Lg/ur;

    move-result-object v6

    iput-boolean v7, v6, Lg/ur;->ar:Z

    new-instance v8, Lg/cqc;

    invoke-direct {v8, v6}, Lg/cqc;-><init>(Lg/ur;)V

    new-instance v6, Lg/eie;

    invoke-direct {v6, v9, v3}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v6}, Lg/cqc;->aa(Lg/eie;)V

    new-instance v6, Lg/emr;

    invoke-direct {v6, v9, v3}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v6}, Lg/cqc;->u(Lg/emr;)V

    invoke-virtual {v8}, Lg/cqc;->close()V

    invoke-static {v3, v0, v2}, Lb/b/b;->n(Lb/b/b;Ljava/lang/String;Ljava/io/File;)Lg/ur;

    move-result-object v0

    iput-boolean v7, v0, Lg/ur;->g:Z

    invoke-static {v3, v0}, Lb/b/b;->m(Lb/b/b;Lg/ur;)V

    new-instance v6, Lg/cqc;

    invoke-direct {v6, v0}, Lg/cqc;-><init>(Lg/ur;)V

    new-instance v0, Lg/eie;

    invoke-direct {v0, v9, v3}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/cqc;->v(Lg/eie;)V

    new-instance v0, Lg/emr;

    invoke-direct {v0, v9, v3}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/cqc;->w(Lg/emr;)V

    invoke-virtual {v6}, Lg/cqc;->close()V

    invoke-static {v3, v2}, Lb/b/b;->p(Lb/b/b;Ljava/io/File;)V

    goto :goto_10

    :cond_15
    invoke-static {v3, v0, v2}, Lb/b/b;->n(Lb/b/b;Ljava/lang/String;Ljava/io/File;)Lg/ur;

    move-result-object v0

    if-ne v8, v7, :cond_16

    const/4 v10, 0x1

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    :goto_f
    iput-boolean v10, v0, Lg/ur;->g:Z

    if-ne v8, v5, :cond_17

    const/4 v6, 0x1

    :cond_17
    iput-boolean v6, v0, Lg/ur;->ar:Z

    if-eq v8, v7, :cond_18

    if-nez v8, :cond_19

    :cond_18
    invoke-static {v3, v0}, Lb/b/b;->m(Lb/b/b;Lg/ur;)V

    :cond_19
    new-instance v6, Lg/cqc;

    invoke-direct {v6, v0}, Lg/cqc;-><init>(Lg/ur;)V

    new-instance v0, Lg/eie;

    invoke-direct {v0, v9, v3}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/cqc;->v(Lg/eie;)V

    new-instance v0, Lg/emr;

    invoke-direct {v0, v9, v3}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/cqc;->w(Lg/emr;)V

    invoke-virtual {v6}, Lg/cqc;->close()V

    if-ne v8, v7, :cond_1a

    invoke-static {v3, v2}, Lb/b/b;->p(Lb/b/b;Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_1a
    :goto_10
    iget-object v0, v3, Lg/doq;->ah:Lg/eqi;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11

    :catch_2
    iget-object v0, v3, Lg/doq;->ah:Lg/eqi;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_11
    return-void

    :pswitch_11
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dzm;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v2}, Lg/dzm;->d(Landroid/graphics/Typeface;)V

    :cond_1b
    return-void

    :pswitch_12
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/dgx;

    iget-object v0, v0, Lg/dgx;->c:Lg/bwb;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lg/bwb;->d(Ljava/util/ArrayList;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/eax;

    iget-object v2, v0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Lg/auj;

    iget-object v2, v2, Lg/auj;->h:Ljava/lang/String;

    iget-object v3, v0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v3, Lg/bcq;

    iget-object v3, v3, Lg/bcq;->ak:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1c

    iget-object v0, v0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/bcq;

    iget-object v0, v0, Lg/bcq;->ak:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    return-void

    :pswitch_14
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lc/c/b;

    sget v3, Lc/c/b;->j:I

    iget-object v3, v2, Lg/doq;->ae:Lg/auj;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lg/efx;->bb:Lg/efx;

    invoke-static {v8}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "apk"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lg/doq;->ac:Ljava/text/SimpleDateFormat;

    sget-object v7, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Lg/dlb;->d(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1d
    :try_start_d
    iget-object v3, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lg/buj;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    iget-object v2, v2, Lg/doq;->ah:Lg/eqi;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    :catch_3
    move-exception v0

    iget-object v2, v2, Lg/doq;->ah:Lg/eqi;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "PullerA"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void

    :pswitch_15
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    :try_start_e
    sget-object v3, Lg/dfz;->a:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1e

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v7

    const-string v0, "AppCompat recreation"

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_7
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_14

    :cond_1e
    sget-object v3, Lg/dfz;->b:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_15

    :goto_13
    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while invoking performStopActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    if-ne v2, v3, :cond_20

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_15

    :cond_1f
    throw v0

    :cond_20
    :goto_15
    return-void

    :pswitch_16
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/frw;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_17
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/frw;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    iput-object v2, v0, Lg/frw;->d:Ljava/lang/Object;

    return-void

    :pswitch_18
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/csq;

    iget-object v2, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v2, Lg/esf;

    iget-object v3, v2, Lg/esf;->p:Lg/ftn;

    if-eqz v3, :cond_21

    iget-object v4, v3, Lg/ftn;->h:Lg/egz;

    if-eqz v4, :cond_21

    invoke-interface {v4, v3}, Lg/egz;->_cj(Lg/ftn;)V

    :cond_21
    iget-object v3, v2, Lg/esf;->i:Lg/eao;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Lg/byn;->n()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_16

    :cond_22
    iget-object v3, v0, Lg/byn;->d:Landroid/view/View;

    if-nez v3, :cond_23

    goto :goto_17

    :cond_23
    invoke-virtual {v0, v6, v6, v6, v6}, Lg/byn;->l(IIZZ)V

    :goto_16
    iput-object v0, v2, Lg/esf;->t:Lg/csq;

    :cond_24
    :goto_17
    const/4 v0, 0x0

    iput-object v0, v2, Lg/esf;->s:Lg/gfh;

    return-void

    :pswitch_19
    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v4, "settings put secure enabled_accessibility_services "

    invoke-static {v4, v0}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "settings put secure accessibility_enabled 1"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v2, v3}, Lg/ffb;->bb([Ljava/lang/String;ZJ)Lg/dsg;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lg/gfh;

    invoke-direct {v3, v5, v1, v0, v6}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1a
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Lg/gfh;

    iget-object v0, v0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v2, Lg/dsg;

    iget v2, v2, Lg/dsg;->d:I

    if-nez v2, :cond_25

    const v2, 0x7f12004a

    goto :goto_18

    :cond_25
    const v2, 0x7f120049

    :goto_18
    invoke-static {v0, v2}, Lg/gm;->c(Landroid/content/Context;I)V

    return-void

    :pswitch_1b
    const-string v0, ""

    const-string v2, "#%06X"

    iget-object v3, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v3, Lg/bid;

    iget-object v4, v3, Lg/fyx;->webView:La/a/ab;

    new-instance v5, Lg/doe;

    invoke-direct {v5, v7, v1}, Lg/doe;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lg/gc;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v4, "?skin=sons-of-obsidian"

    invoke-static {v3}, Lg/bid;->d(Lg/bid;)Z

    move-result v5

    const/high16 v8, -0x1000000

    const/4 v9, -0x1

    if-eqz v5, :cond_27

    const v5, 0x7f040134

    invoke-static {v3, v5, v9}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v5

    const v9, 0x7f04011d

    invoke-static {v3, v9, v8}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v9

    const v8, 0x7f04011f

    const v10, -0xbbbbbc

    invoke-static {v3, v8, v10}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v8

    const v10, 0x7f040126

    invoke-static {v3, v10, v9}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v10

    const v11, 0x7f04012f

    invoke-static {v3, v11, v10}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v11

    invoke-virtual {v3}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, 0x30

    const/16 v13, 0x20

    if-ne v12, v13, :cond_26

    goto :goto_19

    :cond_26
    move-object v4, v0

    :goto_19
    move/from16 v20, v8

    move v8, v5

    move/from16 v5, v20

    goto :goto_1a

    :cond_27
    const v5, -0x333334

    const/4 v10, -0x1

    const v11, -0x333334

    :goto_1a
    iget-object v12, v3, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v12, v8}, Landroid/view/View;->setBackgroundColor(I)V

    const v12, 0xffffff

    and-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v13, v14, v6

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    and-int/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v9, v14, v6

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    and-int/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v5, v14, v6

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    and-int/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v10, v14, v6

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    and-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v11, v12, v6

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lg/bid;->d(Lg/bid;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v0, "ol.linenums li{color:"

    const-string v6, " !important;background:"

    const-string v7, " !important;}pre.prettyprint .pln,pre.prettyprint .pun,pre.prettyprint .opn,pre.prettyprint .clo,pre.prettyprint .atn{color:"

    invoke-static {v0, v5, v6, v2, v7}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " !important;}pre.prettyprint .com{color:"

    const-string v6, " !important;}pre.prettyprint .kwd,pre.prettyprint .tag,pre.prettyprint .typ{color:"

    invoke-static {v0, v9, v2, v5, v6}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " !important;}pre.prettyprint .str,pre.prettyprint .atv,pre.prettyprint .lit,pre.prettyprint .dec,pre.prettyprint .var,pre.prettyprint .fun{color:"

    const-string v5, " !important;}"

    invoke-static {v0, v10, v2, v11, v5}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_28
    iget-object v14, v3, Lg/fyx;->webView:La/a/ab;

    const-string v15, "file:///android_asset/"

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><meta name=\"color-scheme\" content=\"light dark\" /><script src=\"run_prettify.js"

    const-string v3, "\"></script><style>html,body,pre.prettyprint{background:"

    const-string v5, " !important;color:"

    invoke-static {v2, v4, v3, v13, v5}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !important;}body{margin:0;padding:0 12px 12px;}pre.prettyprint{border:0 !important;margin:0 !important;}"

    const-string v4, "</style></head><body><pre class=\"prettyprint linenums\">"

    invoke-static {v2, v9, v3, v0, v4}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "</pre></body></html>"

    invoke-static {v2, v0, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "text/html"

    const-string v18, "UTF-8"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Lg/gfh;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/fkn;

    iget-object v0, v1, Lg/gfh;->c:Ljava/lang/Object;

    check-cast v0, Lg/gew;

    instance-of v3, v0, Lg/ang;

    if-eqz v3, :cond_2a

    move-object v3, v0

    check-cast v3, Lg/ang;

    invoke-virtual {v3}, Lg/ang;->s()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_29

    goto :goto_1b

    :cond_29
    invoke-virtual {v2, v3}, Lg/fkn;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    :cond_2a
    :goto_1b
    :try_start_f
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v3, :cond_2e

    :goto_1c
    :try_start_10
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-eqz v6, :cond_2b

    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_1d

    :catchall_8
    move-exception v0

    goto :goto_1f

    :catch_5
    move-exception v0

    goto :goto_20

    :cond_2b
    :goto_1d
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lg/fkn;->a:Ljava/lang/Object;

    check-cast v4, Lg/bpy;

    if-lez v3, :cond_2c

    iget v3, v2, Lg/fkn;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Billing override value was set by a license tester."

    invoke-static {v0, v5}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    sget-object v5, Lg/hm;->zzaO:Lg/hm;

    invoke-virtual {v4, v5, v3, v0}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    iget-object v2, v2, Lg/fkn;->c:Ljava/lang/Object;

    check-cast v2, Lg/dts;

    invoke-interface {v2, v0}, Lg/dts;->accept(Ljava/lang/Object;)V

    goto :goto_21

    :cond_2c
    iget-object v0, v2, Lg/fkn;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    :catchall_9
    move-exception v0

    if-nez v6, :cond_2d

    goto :goto_1e

    :cond_2d
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :goto_1e
    throw v0

    :catch_6
    const/4 v6, 0x1

    goto :goto_1c

    :cond_2e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "Future was expected to be done: %s"

    invoke-static {v0, v4}, Lg/eg;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :goto_1f
    invoke-virtual {v2, v0}, Lg/fkn;->e(Ljava/lang/Throwable;)V

    goto :goto_21

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/fkn;->e(Ljava/lang/Throwable;)V

    :goto_21
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/gfh;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Lg/fpd;

    const-class v1, Lg/gfh;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/fpd;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v1, Lg/fkn;

    new-instance v2, Lg/akj;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lg/akj;-><init>(I)V

    iget-object v3, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v3, Lg/akj;

    iput-object v2, v3, Lg/akj;->f:Ljava/lang/Object;

    iput-object v2, v0, Lg/fpd;->d:Ljava/lang/Object;

    iput-object v1, v2, Lg/akj;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/fpd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
