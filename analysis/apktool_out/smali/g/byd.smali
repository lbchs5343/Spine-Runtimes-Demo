.class public final Lg/byd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/byd;->a:I

    iput-object p2, p0, Lg/byd;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 4

    iget-object v0, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a;

    iget-object v0, v0, Landroidx/lifecycle/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/a;

    iget-object v1, v1, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    iget-object v2, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/a;

    sget-object v3, Landroidx/lifecycle/a;->a:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->q(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final e()V
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/amr;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lg/amr;->n()Lg/fyg;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lg/fyg;->i:Lg/gfw;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v2, Lg/amr;

    sget-object v3, Lg/amr;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-string v6, "starting"

    invoke-static {v1, v0, v6}, Lg/egh;->aa(Lg/fyg;Lg/gfw;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    :goto_1
    :try_start_1
    invoke-static {v2, v1}, Lg/amr;->j(Lg/amr;Lg/fyg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lg/egh;->x(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finished run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lg/egh;->aa(Lg/fyg;Lg/gfw;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    iget-object v2, v2, Lg/amr;->e:Lg/evf;

    iget-object v2, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Lg/egh;->x(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed a run in "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lg/egh;->aa(Lg/fyg;Lg/gfw;Ljava/lang/String;)V

    :cond_3
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public c()Lg/dra;
    .locals 5

    iget-object v0, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    new-instance v1, Lg/dra;

    invoke-direct {v1}, Lg/dra;-><init>()V

    iget-object v0, v0, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v2, Lg/abq;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lg/abq;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/dra;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    invoke-virtual {v1}, Lg/dra;->c()Lg/dra;

    move-result-object v0

    invoke-virtual {v0}, Lg/dra;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v1, Lg/dbe;

    iget-object v1, v1, Lg/dbe;->b:Lg/cap;

    const-string v2, "Required value was null."

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/byd;->b:Ljava/lang/Object;

    check-cast v1, Lg/dbe;

    iget-object v1, v1, Lg/dbe;->b:Lg/cap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/cap;->h()I

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0

    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lg/byd;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/cc;

    iget-object v0, v0, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lg/fdi;

    iget-object v2, v0, Lg/fdi;->b:Lg/edx;

    sget-object v3, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    invoke-static {v2}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/fdi;->b:Lg/edx;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v2, v3}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v0, Lg/fdi;->b:Lg/edx;

    invoke-virtual {v0}, Lg/edx;->z()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/fdi;->b:Lg/edx;

    invoke-virtual {v2}, Lg/edx;->an()Z

    iget-object v2, v0, Lg/fdi;->b:Lg/edx;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    invoke-static {v2}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lg/fdi;->b:Lg/edx;

    invoke-virtual {v0}, Lg/edx;->at()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/anh;

    iget-object v0, v0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v0, Lg/ms;

    iget-object v0, v0, Lg/ms;->an:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_1
    invoke-direct {v1}, Lg/byd;->e()V

    return-void

    :pswitch_2
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/axs;

    iget-boolean v2, v0, Lg/axs;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lg/axs;->c()V

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->br()Z

    return-void

    :pswitch_4
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-boolean v2, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v4, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    :cond_3
    return-void

    :pswitch_5
    :try_start_0
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Executor"

    const-string v3, "Background execution failure."

    invoke-static {v2, v3, v0}, Lg/baf;->bd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_6
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_7
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/dj;

    iget-object v0, v3, Lg/dj;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lc/b/b;

    :try_start_1
    invoke-static {v6}, Lc/b/b;->o(Lc/b/b;)Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f120395

    invoke-static {v0, v7}, Lg/gm;->c(Landroid/content/Context;I)V

    iget-object v0, v6, Lc/b/b;->g:Landroid/view/Menu;

    const v7, 0x7f090397

    invoke-interface {v0, v7, v4}, Landroid/view/Menu;->performIdentifierAction(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget v3, v3, Lg/dj;->c:I

    if-gt v3, v2, :cond_4

    add-int/2addr v3, v5

    sget v0, Lc/b/b;->d:I

    invoke-virtual {v6, v3}, Lc/b/b;->z(I)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_8
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-static {v0}, Lg/gkb;->f(Lg/gkb;)I

    invoke-static {v0}, Lg/gkb;->fw(Lg/gkb;)I

    invoke-static {v0}, Lg/gkb;->f(Lg/gkb;)I

    move-result v2

    invoke-static {v0}, Lg/gkb;->fw(Lg/gkb;)I

    move-result v4

    if-le v2, v4, :cond_5

    invoke-static {v0}, Lg/gkb;->cd(Lg/gkb;)I

    invoke-static {v0}, Lg/gkb;->gh(Lg/gkb;)Lg/fis;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lg/gkb;->f(Lg/gkb;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/fis;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lg/gkb;->invalidate()V

    invoke-static {v0}, Lg/gkb;->jy(Lg/gkb;)V

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lg/gkb;->r(Lg/gkb;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-static {v0}, Lg/gkb;->i(Lg/gkb;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-static {v0}, Lg/gkb;->r(Lg/gkb;)I

    invoke-virtual {v0}, Lg/gkb;->dq()V

    invoke-static {v0}, Lg/gkb;->r(Lg/gkb;)I

    move-result v2

    invoke-virtual {v0, v2}, Lg/gkb;->setFrame(I)V

    new-instance v2, Lg/zl;

    invoke-direct {v2, v3, v1}, Lg/zl;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lg/gkb;->dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lg/gkb;->r(Lg/gkb;)I

    invoke-static {v0}, Lg/gkb;->i(Lg/gkb;)I

    :goto_3
    invoke-static {v0}, Lg/gkb;->le(Lg/gkb;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lg/gkb;->k(Lg/gkb;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Lg/gkb;->k(Lg/gkb;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    :cond_7
    invoke-static {v0}, Lg/gkb;->kk(Lg/gkb;)Lg/bdg;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Lg/gkb;->kk(Lg/gkb;)Lg/bdg;

    move-result-object v2

    invoke-static {v0}, Lg/gkb;->le(Lg/gkb;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lg/gkb;->k(Lg/gkb;)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v2, Lg/eie;

    invoke-virtual {v2, v3, v0}, Lg/eie;->n(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_8
    :goto_4
    return-void

    :pswitch_9
    invoke-direct {v1}, Lg/byd;->d()V

    return-void

    :pswitch_a
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lg/bus;->a:I

    const-string v2, "shizuku_compatibility_mode_enabled"

    invoke-static {v0, v2, v4}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v2

    invoke-virtual {v2}, Lg/ark;->w()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lg/baq;->ab()V

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lg/eib;->bb:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lg/baq;->ab()V

    :cond_a
    :goto_5
    return-void

    :pswitch_b
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/cc;

    iget-object v0, v0, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    check-cast v0, Lg/azj;

    iget-object v2, v0, Lg/azj;->b:Lg/baq;

    sget-object v3, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    invoke-static {v2}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lg/azj;->b:Lg/baq;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v2, v3}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v0, Lg/azj;->b:Lg/baq;

    invoke-virtual {v0}, Lg/baq;->z()V

    goto :goto_6

    :cond_b
    iget-object v2, v0, Lg/azj;->b:Lg/baq;

    invoke-static {v2}, Lg/baq;->an(Lg/baq;)Z

    iget-object v2, v0, Lg/azj;->b:Lg/baq;

    iget-object v2, v2, Lg/eib;->bc:Lg/eib;

    invoke-static {v2}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, v0, Lg/azj;->b:Lg/baq;

    invoke-static {v0}, Lg/baq;->am(Lg/baq;)V

    :cond_c
    :goto_6
    return-void

    :pswitch_c
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    iget-object v0, v0, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Lg/gac;->aa:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    const-string v0, "readWriteLock.readLock()"

    invoke-static {v2, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    invoke-virtual {v0}, Lg/dbe;->p()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_d

    :goto_7
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_e

    :cond_d
    :try_start_3
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    iget-object v0, v0, Lg/dbe;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    iget-object v0, v0, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0}, Lg/crd;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbe;

    iget-object v0, v0, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v3

    invoke-virtual {v3}, Lg/crd;->n()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Lg/byd;->c()Lg/dra;

    move-result-object v0

    invoke-virtual {v3}, Lg/crd;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3}, Lg/crd;->g()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Lg/crd;->g()V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    :try_start_7
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lg/gpk;->a:Lg/gpk;

    goto :goto_8

    :goto_a
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lg/gpk;->a:Lg/gpk;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :goto_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v2, Lg/dbe;

    iget-object v3, v2, Lg/dbe;->l:Lg/cfx;

    monitor-enter v3

    :try_start_8
    iget-object v2, v2, Lg/dbe;->l:Lg/cfx;

    invoke-virtual {v2}, Lg/cfx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    move-object v4, v2

    check-cast v4, Lg/cwl;

    invoke-virtual {v4}, Lg/cwl;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lg/cwl;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gyp;

    invoke-virtual {v4, v0}, Lg/gyp;->e(Ljava/util/Set;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_10
    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3

    throw v0

    :cond_11
    :goto_e
    return-void

    :goto_f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_d
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/anh;

    iget-object v0, v0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v0, Lg/gfg;

    iget-object v0, v0, Lg/gfg;->an:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_e
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/v;->ci(Z)Z

    return-void

    :pswitch_f
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()V

    return-void

    :pswitch_10
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/dt;

    iget-object v0, v0, Lg/dt;->b:Lg/epi;

    iget-object v0, v0, Lg/epi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void

    :pswitch_11
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/eiu;

    iget-object v6, v0, Lg/eiu;->d:Landroid/animation/ValueAnimator;

    iget v7, v0, Lg/eiu;->aa:I

    if-eq v7, v5, :cond_12

    if-eq v7, v3, :cond_13

    goto :goto_10

    :cond_12
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    iput v2, v0, Lg/eiu;->aa:I

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v2, v3, [F

    aput v0, v2, v4

    const/4 v0, 0x0

    aput v0, v2, v5

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v2, v0

    invoke-virtual {v6, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    :goto_10
    return-void

    :pswitch_12
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/bgv;

    const/4 v2, 0x0

    iput-object v2, v0, Lg/bgv;->e:Lg/byd;

    invoke-virtual {v0}, Lg/bgv;->drawableStateChanged()V

    return-void

    :pswitch_13
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/fam;

    invoke-virtual {v0, v5}, Lg/cpy;->o(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_14
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/b;

    invoke-static {v0}, Landroidx/fragment/app/b;->access$100(Landroidx/fragment/app/b;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-static {v0}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_15
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;

    invoke-static {v0}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->g(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_11

    :cond_14
    invoke-static {v0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v0}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->e(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)V

    invoke-static {v0, v4}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, 0x7f1201bf

    invoke-static {v0, v2}, Lg/gm;->c(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11

    :cond_15
    invoke-static {v0}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->f(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_11
    return-void

    :pswitch_16
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/cf;

    iget-boolean v2, v0, Lg/cf;->j:Z

    if-nez v2, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {v0, v5}, Lg/cf;->k(Z)V

    iget-object v2, v0, Lg/cf;->g:Lg/cgn;

    iget v2, v2, Lg/cgn;->a:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_18

    goto :goto_12

    :cond_18
    iget-object v0, v0, Lg/cf;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12
    return-void

    :pswitch_17
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lg/hbv;->c(ILjava/util/ArrayList;)V

    return-void

    :pswitch_18
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/bfp;

    iget-object v2, v0, Lg/bfp;->c:Landroid/view/ViewGroup;

    iget-object v3, v0, Lg/bfp;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v0, Lg/bfp;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->g()V

    return-void

    :pswitch_19
    :try_start_9
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_15

    :cond_19
    throw v0

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_15
    return-void

    :cond_1a
    throw v0

    :pswitch_1a
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/cpq;

    iput-boolean v4, v0, Lg/cpq;->e:Z

    iget-object v2, v0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bh:Lg/dfv;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lg/dfv;->ae()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget v2, v0, Lg/cpq;->d:I

    invoke-virtual {v0, v2}, Lg/cpq;->g(I)V

    goto :goto_16

    :cond_1b
    iget v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    if-ne v4, v3, :cond_1c

    iget v0, v0, Lg/cpq;->d:I

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cd(I)V

    :cond_1c
    :goto_16
    return-void

    :pswitch_1b
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    iget-object v2, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v2, Lg/cc;

    iget-object v2, v2, Lg/cc;->b:Landroid/content/DialogInterface$OnClickListener;

    check-cast v2, Lg/gdc;

    iget-object v3, v2, Lg/gdc;->b:Lg/guy;

    invoke-static {v3}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v2, v2, Lg/gdc;->b:Lg/guy;

    invoke-interface {v2, v0}, Lg/fcd;->onDenied(Ljava/lang/String;)V

    goto :goto_17

    :cond_1d
    iget-object v2, v2, Lg/gdc;->b:Lg/guy;

    invoke-interface {v2, v0}, Lg/fcd;->h(Ljava/lang/String;)V

    :goto_17
    return-void

    :pswitch_1c
    iget-object v0, v1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/fbo;

    iget-object v2, v0, Lg/fbo;->g:Lg/bgv;

    iget-object v3, v0, Lg/fbo;->l:Lg/ftj;

    iget-boolean v5, v0, Lg/fbo;->e:Z

    if-nez v5, :cond_1e

    goto/16 :goto_19

    :cond_1e
    iget-boolean v5, v0, Lg/fbo;->q:Z

    if-eqz v5, :cond_1f

    iput-boolean v4, v0, Lg/fbo;->q:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lg/ftj;->c:J

    const-wide/16 v7, -0x1

    iput-wide v7, v3, Lg/ftj;->i:J

    iput-wide v5, v3, Lg/ftj;->e:J

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v3, Lg/ftj;->a:F

    :cond_1f
    iget-wide v5, v3, Lg/ftj;->i:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_20

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v3, Lg/ftj;->i:J

    iget v11, v3, Lg/ftj;->f:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    cmp-long v11, v5, v9

    if-lez v11, :cond_20

    goto :goto_18

    :cond_20
    invoke-virtual {v0}, Lg/fbo;->u()Z

    move-result v5

    if-nez v5, :cond_21

    :goto_18
    iput-boolean v4, v0, Lg/fbo;->e:Z

    goto :goto_19

    :cond_21
    iget-boolean v5, v0, Lg/fbo;->o:Z

    if-eqz v5, :cond_22

    iput-boolean v4, v0, Lg/fbo;->o:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v11, v9

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/bgv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_22
    iget-wide v4, v3, Lg/ftj;->e:J

    cmp-long v6, v4, v7

    if-eqz v6, :cond_23

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lg/ftj;->j(J)F

    move-result v6

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float v7, v7, v6

    mul-float v7, v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v6, v6, v8

    add-float/2addr v6, v7

    iget-wide v7, v3, Lg/ftj;->e:J

    sub-long v7, v4, v7

    iput-wide v4, v3, Lg/ftj;->e:J

    long-to-float v4, v7

    mul-float v4, v4, v6

    iget v3, v3, Lg/ftj;->b:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    iget-object v0, v0, Lg/fbo;->p:Lg/bgv;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_19
    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

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
