.class public final synthetic Lg/fvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fvi;->a:I

    iput-object p2, p0, Lg/fvi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    move-object/from16 v1, p0

    iget v0, v1, Lg/fvi;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/dqe;

    invoke-static {v0}, Lg/dqe;->d(Lg/dqe;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/gk;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    sget-object v3, Lg/bli;->n:Lg/ert;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "com.android.settings"

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/fkn;

    iget-object v2, v0, Lg/fkn;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowManager;

    iget-object v0, v0, Lg/fkn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/fuo;

    :try_start_0
    iget-object v0, v2, Lg/fuo;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ehk;

    iget-object v5, v3, Lg/ehk;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v2, Lg/fuo;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, v3, Lg/ehk;->a:Lg/cct;

    sget-object v7, Lg/cct;->SEQUENTIAL:Lg/cct;

    if-eq v6, v7, :cond_5

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "task-p"

    sget-object v7, Lg/evh;->a:Ljava/lang/String;

    new-instance v7, Lg/cjr;

    invoke-direct {v7, v6}, Lg/cjr;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v3, v3, Lg/ehk;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    new-instance v7, Lg/dsf;

    const/16 v8, 0xe

    invoke-direct {v7, v2, v8, v6}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-interface {v5, v6, v7, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lg/gck;

    const-string v5, "Executor timeout"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v3, v3, Lg/ehk;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Lg/fuo;->j(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v3, v2, Lg/fuo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :cond_7
    invoke-virtual {v2}, Lg/fuo;->m()V

    return-void

    :goto_4
    invoke-virtual {v2}, Lg/fuo;->m()V

    throw v0

    :pswitch_4
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/cpq;

    iput-boolean v3, v0, Lg/cpq;->e:Z

    iget-object v3, v0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v4, v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ac:Lg/dfv;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lg/dfv;->ae()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v2, v0, Lg/cpq;->d:I

    invoke-virtual {v0, v2}, Lg/cpq;->g(I)V

    goto :goto_5

    :cond_8
    iget v4, v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:I

    if-ne v4, v2, :cond_9

    iget v0, v0, Lg/cpq;->d:I

    invoke-virtual {v3, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->an(I)V

    :cond_9
    :goto_5
    return-void

    :pswitch_5
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/fsr;

    iget-object v2, v0, Lg/fsr;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    iget-object v5, v0, Lg/fsr;->b:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-static {v0}, Lg/doo;->b(Lg/fsr;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/aco;

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    iput-object v5, v2, Lg/ark;->n:Lg/anf;

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    iput-boolean v3, v2, Lg/ark;->c:Z

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    iget-object v3, v2, Lg/ark;->m:Landroid/os/Handler;

    iget-object v2, v2, Lg/ark;->e:Lg/hdk;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    const-string v3, "disconnected"

    invoke-virtual {v2, v3, v5}, Lg/ark;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    invoke-virtual {v0}, Lg/ark;->s()V

    return-void

    :pswitch_7
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/gdi;

    const-string v2, "unsupported_tool"

    invoke-virtual {v0, v2, v5}, Lg/gdi;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/dah;

    invoke-virtual {v0}, Lg/dah;->b()V

    return-void

    :pswitch_9
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/btk;

    invoke-virtual {v0}, Lg/btk;->b()V

    return-void

    :pswitch_a
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/wa;

    invoke-virtual {v0}, Lg/wa;->am()V

    return-void

    :pswitch_b
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lcom/google/android/material/button/MaterialButton;->af(Lcom/google/android/material/button/MaterialButton;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_d
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/dta;

    if-eqz v0, :cond_b

    invoke-interface {v0, v5}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_b
    return-void

    :pswitch_e
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v4, v3}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object v2

    iput-object v2, v0, Lg/baq;->s:Lg/he;

    sput-boolean v4, Lg/ern;->b:Z

    if-eqz v2, :cond_c

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lg/gfh;

    const/16 v6, 0x12

    invoke-direct {v5, v6, v0, v2, v3}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void

    :pswitch_f
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/chp;

    iget-object v2, v0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Lg/chp;->am(Z)V

    iput-boolean v2, v0, Lg/chp;->i:Z

    return-void

    :pswitch_10
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/fao;

    iput-boolean v3, v2, Lg/fao;->c:Z

    :try_start_3
    invoke-virtual {v2}, Lg/fao;->o()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const v0, 0x7f120228

    invoke-virtual {v2, v0, v3}, Lg/fao;->t(IZ)V

    :goto_7
    return-void

    :pswitch_11
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/yb;

    sget v2, Lg/yb;->a:I

    invoke-virtual {v0}, Lg/yb;->o()V

    return-void

    :pswitch_12
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/btt;

    invoke-static {v0}, Lg/btt;->h(Lg/btt;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/a;

    iget-object v2, v0, Landroidx/activity/a;->d:Ljava/lang/Runnable;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v5, v0, Landroidx/activity/a;->d:Ljava/lang/Runnable;

    :cond_d
    return-void

    :pswitch_14
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void

    :pswitch_15
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/azm;

    invoke-virtual {v0, v4}, Lg/azm;->r(Z)V

    return-void

    :pswitch_16
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->em()V

    return-void

    :pswitch_17
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/efx;

    iget-object v2, v0, Lg/efx;->au:Lg/gwf;

    if-eqz v2, :cond_e

    iget-object v0, v0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/gwf;->l(Ljava/lang/String;)V

    :cond_e
    return-void

    :pswitch_18
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/atk;

    iget-object v0, v3, Lg/atk;->s:Lg/hbj;

    iget-object v6, v3, Lg/atk;->h:Lg/eqi;

    if-nez v0, :cond_f

    iput-object v5, v3, Lg/atk;->p:Lg/coz;

    :try_start_4
    iget-object v0, v3, Lg/atk;->r:Lg/atk;

    iget-object v5, v3, Lg/atk;->f:Ljava/lang/String;

    invoke-static {v0, v5}, Lg/bwa;->g(Lg/atk;Ljava/lang/String;)Lg/hbj;

    move-result-object v0

    iput-object v0, v3, Lg/atk;->s:Lg/hbj;
    :try_end_4
    .catch Lg/coz; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    iput-object v0, v3, Lg/atk;->p:Lg/coz;

    :cond_f
    :goto_8
    iget-object v0, v3, Lg/atk;->s:Lg/hbj;

    if-nez v0, :cond_10

    invoke-virtual {v3}, Lg/dms;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    :cond_10
    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, v3, Lg/atk;->o:Lg/bhc;

    invoke-virtual {v0, v2, v5}, Lg/hbj;->l(Ljava/lang/CharSequence;Lg/bhc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lg/atk;->z:Ljava/lang/String;

    invoke-virtual {v3}, Lg/dms;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    :goto_9
    return-void

    :pswitch_19
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/ebw;

    invoke-virtual {v0}, Lg/ebw;->j()V

    return-void

    :pswitch_1a
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/cpp;

    iget-object v0, v0, Lg/cpp;->h:Lg/eie;

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/cpp;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v2, v0, Lg/cpp;->g:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_20

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/eov;

    if-nez v11, :cond_13

    :cond_12
    :goto_b
    move-wide/from16 v26, v6

    move-wide/from16 v17, v8

    goto/16 :goto_15

    :cond_13
    iget-object v12, v0, Lg/cpp;->e:Lg/bcp;

    invoke-virtual {v12, v11}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v15, v13, v8

    if-gez v15, :cond_12

    invoke-virtual {v12, v11}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-wide v12, v11, Lg/eov;->s:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_15

    iput-wide v6, v11, Lg/eov;->s:J

    iget v12, v11, Lg/eov;->p:F

    invoke-virtual {v11, v12}, Lg/eov;->w(F)V

    goto :goto_b

    :cond_15
    sub-long v12, v6, v12

    iput-wide v6, v11, Lg/eov;->s:J

    invoke-static {}, Lg/eov;->t()Lg/cpp;

    move-result-object v14

    iget v14, v14, Lg/cpp;->i:F

    const/4 v15, 0x0

    cmpl-float v17, v14, v15

    if-nez v17, :cond_16

    const-wide/32 v12, 0x7fffffff

    :goto_d
    move-wide/from16 v22, v12

    goto :goto_e

    :cond_16
    long-to-float v12, v12

    div-float/2addr v12, v14

    float-to-long v12, v12

    goto :goto_d

    :goto_e
    iget-boolean v12, v11, Lg/eov;->n:Z

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    const v14, -0x800001

    if-eqz v12, :cond_18

    iget v12, v11, Lg/eov;->j:F

    cmpl-float v17, v12, v13

    if-eqz v17, :cond_17

    iget-object v4, v11, Lg/eov;->h:Lg/ceq;

    move-wide/from16 v26, v6

    float-to-double v5, v12

    iput-wide v5, v4, Lg/ceq;->f:D

    iput v13, v11, Lg/eov;->j:F

    goto :goto_f

    :cond_17
    move-wide/from16 v26, v6

    :goto_f
    iget-object v4, v11, Lg/eov;->h:Lg/ceq;

    iget-wide v4, v4, Lg/ceq;->f:D

    double-to-float v4, v4

    iput v4, v11, Lg/eov;->p:F

    iput v15, v11, Lg/eov;->l:F

    iput-boolean v3, v11, Lg/eov;->n:Z

    move-wide/from16 v17, v8

    :goto_10
    const/4 v3, 0x1

    goto/16 :goto_12

    :cond_18
    move-wide/from16 v26, v6

    iget v4, v11, Lg/eov;->j:F

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_19

    iget-object v4, v11, Lg/eov;->h:Lg/ceq;

    iget v5, v11, Lg/eov;->p:F

    float-to-double v5, v5

    iget v7, v11, Lg/eov;->l:F

    move-object/from16 v28, v4

    float-to-double v3, v7

    const-wide/16 v17, 0x2

    div-long v33, v22, v17

    move-wide/from16 v31, v3

    move-wide/from16 v29, v5

    invoke-virtual/range {v28 .. v34}, Lg/ceq;->m(DDJ)Lg/akp;

    move-result-object v3

    iget-object v4, v11, Lg/eov;->h:Lg/ceq;

    iget v5, v11, Lg/eov;->j:F

    float-to-double v5, v5

    iput-wide v5, v4, Lg/ceq;->f:D

    iput v13, v11, Lg/eov;->j:F

    iget v5, v3, Lg/akp;->a:F

    float-to-double v5, v5

    iget v3, v3, Lg/akp;->b:F

    float-to-double v12, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v5

    move-wide/from16 v34, v33

    move-wide/from16 v32, v12

    invoke-virtual/range {v29 .. v35}, Lg/ceq;->m(DDJ)Lg/akp;

    move-result-object v3

    iget v4, v3, Lg/akp;->a:F

    iput v4, v11, Lg/eov;->p:F

    iget v3, v3, Lg/akp;->b:F

    iput v3, v11, Lg/eov;->l:F

    goto :goto_11

    :cond_19
    iget-object v3, v11, Lg/eov;->h:Lg/ceq;

    iget v4, v11, Lg/eov;->p:F

    float-to-double v4, v4

    iget v6, v11, Lg/eov;->l:F

    float-to-double v12, v6

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    invoke-virtual/range {v17 .. v23}, Lg/ceq;->m(DDJ)Lg/akp;

    move-result-object v3

    iget v4, v3, Lg/akp;->a:F

    iput v4, v11, Lg/eov;->p:F

    iget v3, v3, Lg/akp;->b:F

    iput v3, v11, Lg/eov;->l:F

    :goto_11
    iget v3, v11, Lg/eov;->p:F

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v11, Lg/eov;->p:F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v11, Lg/eov;->p:F

    iget v4, v11, Lg/eov;->l:F

    iget-object v5, v11, Lg/eov;->h:Lg/ceq;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v12, v4

    move-wide/from16 v17, v8

    iget-wide v7, v5, Lg/ceq;->c:D

    cmpg-double v6, v12, v7

    if-gez v6, :cond_1a

    iget-wide v6, v5, Lg/ceq;->f:D

    double-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    iget-wide v8, v5, Lg/ceq;->b:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1a

    iget-object v3, v11, Lg/eov;->h:Lg/ceq;

    iget-wide v5, v3, Lg/ceq;->f:D

    double-to-float v3, v5

    iput v3, v11, Lg/eov;->p:F

    iput v15, v11, Lg/eov;->l:F

    goto/16 :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_12
    iget v5, v11, Lg/eov;->p:F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v11, Lg/eov;->p:F

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v11, Lg/eov;->p:F

    invoke-virtual {v11, v4}, Lg/eov;->w(F)V

    if-eqz v3, :cond_1f

    iget-object v3, v11, Lg/eov;->o:Ljava/util/ArrayList;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lg/eov;->m:Z

    invoke-static {}, Lg/eov;->t()Lg/cpp;

    move-result-object v4

    iget-object v5, v4, Lg/cpp;->e:Lg/bcp;

    invoke-virtual {v5, v11}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lg/cpp;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lg/cpp;->f:Z

    :cond_1b
    const-wide/16 v4, 0x0

    iput-wide v4, v11, Lg/eov;->s:J

    const/4 v12, 0x0

    iput-boolean v12, v11, Lg/eov;->r:Z

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1c

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1c
    invoke-static {v4, v3}, Lg/tn;->w(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v24, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_14
    if-ltz v4, :cond_1f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_1f
    :goto_15
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v17

    move-wide/from16 v6, v26

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_20
    iget-boolean v3, v0, Lg/cpp;->f:Z

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v24, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_16
    if-ltz v3, :cond_22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_23

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_23

    iget-object v3, v0, Lg/cpp;->b:Lg/gtb;

    iget-object v4, v3, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v4, Lg/cji;

    invoke-static {v4}, Lg/hce;->b(Lg/cji;)Z

    const/4 v7, 0x0

    iput-object v7, v3, Lg/gtb;->d:Ljava/lang/Object;

    :cond_23
    const/4 v12, 0x0

    iput-boolean v12, v0, Lg/cpp;->f:Z

    :cond_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_25

    iget-object v2, v0, Lg/cpp;->d:Lg/fdy;

    iget-object v0, v0, Lg/cpp;->c:Lg/fvi;

    iget-object v2, v2, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/Choreographer;

    new-instance v3, Lg/fie;

    invoke-direct {v3, v0}, Lg/fie;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_25
    return-void

    :pswitch_1b
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/eku;

    sget-boolean v2, Lg/eku;->e:Z

    iget-object v2, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v2, :cond_27

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;->destroy()V

    :cond_26
    const/4 v7, 0x0

    iput-object v7, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    goto :goto_17

    :cond_27
    const/4 v7, 0x0

    :goto_17
    iget-object v2, v0, Lg/eku;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lg/eku;->n:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lg/eku;->r(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_28
    return-void

    :pswitch_1c
    iget-object v0, v1, Lg/fvi;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v4, Lg/dfz;->g:Landroid/os/Handler;

    sget-object v0, Lg/dfz;->d:Ljava/lang/reflect/Method;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_29

    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_1d

    :cond_29
    const/16 v6, 0x1b

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_2a

    if-ne v5, v6, :cond_2b

    :cond_2a
    if-nez v0, :cond_2b

    goto/16 :goto_1c

    :cond_2b
    sget-object v8, Lg/dfz;->b:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2c

    sget-object v8, Lg/dfz;->a:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2c

    goto/16 :goto_1c

    :cond_2c
    :try_start_5
    sget-object v8, Lg/dfz;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2d

    goto :goto_1c

    :cond_2d
    sget-object v9, Lg/dfz;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2e

    goto :goto_1c

    :cond_2e
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    new-instance v11, Lg/frw;

    invoke-direct {v11, v3}, Lg/frw;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v10, v11}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v13, Lg/gfh;

    const/4 v14, 0x5

    invoke-direct {v13, v11, v14, v8}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v5, v7, :cond_30

    if-ne v5, v6, :cond_2f

    goto :goto_18

    :cond_2f
    const/16 v28, 0x0

    goto :goto_19

    :cond_30
    :goto_18
    const/16 v28, 0x1

    :goto_19
    const/4 v5, 0x6

    if-eqz v28, :cond_31

    const/4 v12, 0x0

    :try_start_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v12

    const/16 v24, 0x1

    const/16 v25, 0x0

    aput-object v25, v7, v24

    aput-object v25, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x4

    aput-object v2, v7, v6

    aput-object v25, v7, v14

    aput-object v25, v7, v5

    const/4 v6, 0x7

    aput-object v2, v7, v6

    const/16 v6, 0x8

    aput-object v2, v7, v6

    invoke-virtual {v0, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_1
    move-exception v0

    goto :goto_1b

    :cond_31
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1a
    :try_start_7
    new-instance v0, Lg/gfh;

    invoke-direct {v0, v10, v5, v11}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    :goto_1b
    new-instance v2, Lg/gfh;

    invoke-direct {v2, v10, v5, v11}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :goto_1c
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    :cond_32
    :goto_1d
    return-void

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
