.class public final Lg/fup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/dbb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lg/afh;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/fup;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fup;->f:Ljava/lang/Object;

    iput-object p2, p0, Lg/fup;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/fup;->e:Ljava/lang/String;

    iput-object p4, p0, Lg/fup;->a:Ljava/lang/String;

    iput-object p5, p0, Lg/fup;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lg/fup;->d:I

    iput-object p2, p0, Lg/fup;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/fup;->a:Ljava/lang/String;

    iput-object p4, p0, Lg/fup;->b:Ljava/lang/Object;

    iput-object p5, p0, Lg/fup;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/fup;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/fup;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    iget-object v1, p0, Lg/fup;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/fup;->e:Ljava/lang/String;

    iget-object v3, p0, Lg/fup;->c:Ljava/lang/Object;

    check-cast v3, Lg/brv;

    iget-object v4, p0, Lg/fup;->f:Ljava/lang/Object;

    check-cast v4, Lg/dbb;

    iget-object v5, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v7, v4, Lg/dbb;->l:Lg/ake;

    if-nez v7, :cond_0

    iget-object v0, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Failed to get conditional properties; not connected to service"

    invoke-virtual {v0, v2, v4, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, v5, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0, v3, v6}, Lg/dkq;->bz(Lg/brv;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v7, v2, v1, v0}, Lg/ake;->e(Ljava/lang/String;Ljava/lang/String;Lg/afh;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/dkq;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4}, Lg/dbb;->x()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v4, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Failed to get conditional properties; remote exception"

    invoke-virtual {v4, v7, v2, v1, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, v5, Lg/cyg;->m:Lg/dkq;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1, v3, v6}, Lg/dkq;->bz(Lg/brv;Ljava/util/ArrayList;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lg/fup;->f:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    iget-object v3, v2, Lg/dbb;->l:Lg/ake;

    if-nez v3, :cond_1

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Lg/fup;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/fup;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_1
    :try_start_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/fup;->c:Ljava/lang/Object;

    check-cast v2, Lg/afh;

    iget-object v4, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lg/fup;->e:Ljava/lang/String;

    iget-object v6, p0, Lg/fup;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v2}, Lg/ake;->e(Ljava/lang/String;Ljava/lang/String;Lg/afh;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lg/fup;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/fup;->a:Ljava/lang/String;

    invoke-interface {v3, v1, v4, v5}, Lg/ake;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_3
    iget-object v2, p0, Lg/fup;->f:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    invoke-virtual {v2}, Lg/dbb;->x()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_7
    iget-object v3, p0, Lg/fup;->f:Ljava/lang/Object;

    check-cast v3, Lg/dbb;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v5, p0, Lg/fup;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_4

    :goto_6
    monitor-exit v0

    :goto_7
    return-void

    :goto_8
    iget-object v2, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    :pswitch_1
    iget-object v0, p0, Lg/fup;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "internal"

    iget-object v2, p0, Lg/fup;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "event"

    const-string v4, "precacheCanceled"

    invoke-static {v3, v4}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "src"

    iget-object v5, p0, Lg/fup;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lg/fup;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "cachedSrc"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    const-string v4, "noCacheDir"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    goto/16 :goto_b

    :sswitch_1
    const-string v4, "expireFailed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    goto/16 :goto_b

    :sswitch_2
    const-string v4, "error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_b

    :sswitch_3
    const-string v4, "noop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    goto :goto_b

    :sswitch_4
    const-string v4, "externalAbort"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    goto :goto_b

    :sswitch_5
    const-string v4, "sizeExceeded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xb

    goto :goto_b

    :sswitch_6
    const-string v4, "playerFailed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    goto :goto_b

    :sswitch_7
    const-string v4, "contentLengthMissing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_b

    :sswitch_8
    const-string v4, "downloadTimeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x9

    goto :goto_b

    :sswitch_9
    const-string v4, "inProgress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    goto :goto_b

    :sswitch_a
    const-string v4, "badUrl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    goto :goto_b

    :sswitch_b
    const-string v4, "interrupted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    goto :goto_b

    :cond_4
    :goto_a
    const/4 v4, -0x1

    :goto_b
    packed-switch v4, :pswitch_data_1

    goto :goto_c

    :pswitch_2
    const-string v1, "policy"

    goto :goto_c

    :pswitch_3
    const-string v1, "network"

    goto :goto_c

    :pswitch_4
    const-string v1, "io"

    :goto_c
    const-string v4, "type"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "message"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lg/fup;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzcdr;->d(Lcom/google/android/gms/internal/ads/zzcdr;Ljava/util/HashMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7416d1be -> :sswitch_b
        -0x533f68d6 -> :sswitch_a
        -0x5049c18e -> :sswitch_9
        -0x36c40c47 -> :sswitch_8
        -0x274d4859 -> :sswitch_7
        -0x26475182 -> :sswitch_6
        -0x151a598c -> :sswitch_5
        -0x1e989db -> :sswitch_4
        0x33af62 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x2293ea3c -> :sswitch_1
        0x2b3e368c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
