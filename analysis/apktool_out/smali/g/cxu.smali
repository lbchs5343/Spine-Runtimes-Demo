.class public final Lg/cxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/deg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/cxu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/cxu;->b:I

    iput-object p2, p0, Lg/cxu;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/ctt;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/cxu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cxu;->c:Ljava/lang/Object;

    iput p2, p0, Lg/cxu;->b:I

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, Lg/cxu;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/cxu;->c:Ljava/lang/Object;

    check-cast p1, Lg/ctt;

    iget p2, p1, Lg/ctt;->h:I

    iget v0, p0, Lg/cxu;->b:I

    if-ne v0, p2, :cond_1

    iget-object p2, p1, Lg/ctt;->i:Ljava/lang/Object;

    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Lg/ctt;->d:Z

    invoke-virtual {p1}, Lg/ctt;->k()V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lg/ctt;->m(J)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    iget p2, p0, Lg/cxu;->b:I

    invoke-static {p1, p2}, Lg/bew;->r(Lg/he;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lg/cxu;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lg/cxu;->c:Ljava/lang/Object;

    check-cast v0, Lg/ctt;

    iget v1, v0, Lg/ctt;->h:I

    iget-object v2, v0, Lg/ctt;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    iget v3, p0, Lg/cxu;->b:I

    if-ne v3, v1, :cond_a

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/ctt;->d:Z

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    const-string v4, "package"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "class"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lg/ctt;->l()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_5

    :cond_3
    iput-boolean v1, v0, Lg/ctt;->g:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bes;

    iget-object v6, v5, Lg/bes;->c:Lg/gpv;

    invoke-interface {v6}, Lg/gpv;->ac()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v1, v5, Lg/bes;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lg/bes;->b:J

    iget-object v6, v5, Lg/bes;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lg/bes;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    iput-object v4, v5, Lg/bes;->f:Ljava/lang/String;

    iput-object v3, v5, Lg/bes;->a:Ljava/lang/String;

    new-instance v6, Lg/ejn;

    invoke-direct {v6}, Lg/ejn;-><init>()V

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lg/ejn;->setEventType(I)V

    invoke-virtual {v6, v4}, Lg/ejn;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lg/ctt;->b:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    const v8, 0x7f12024f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v3

    :goto_3
    invoke-virtual {v6, v7}, Lg/ejn;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v7, v5, Lg/bes;->e:Lg/ejn;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lg/ejn;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_4

    :cond_7
    const-string v7, "title"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Lg/ejn;->setWindowTitle(Ljava/lang/CharSequence;)V

    iget-object v5, v5, Lg/bes;->c:Lg/gpv;

    invoke-interface {v5, v6}, Lg/gpv;->q(Lg/ejn;)V

    goto/16 :goto_2

    :cond_8
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lg/ctt;->m(J)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lg/ctt;->k()V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lg/ctt;->m(J)V

    :cond_a
    :goto_6
    return-void

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    sget p1, Lg/bew;->e:I

    iget v0, p0, Lg/cxu;->b:I

    if-eq v0, p1, :cond_c

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    :try_start_0
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    sput-object v4, Lg/bew;->g:Landroid/os/ParcelFileDescriptor;

    new-instance p1, Lg/hdn;

    invoke-direct {p1, v0}, Lg/hdn;-><init>(I)V

    sput-object p1, Lg/bew;->a:Lg/hdn;

    sget-object p1, Lg/bew;->f:Landroid/os/Handler;

    sget-object v0, Lg/bew;->a:Lg/hdn;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lg/cxu;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Lg/emy;

    iget v8, p0, Lg/cxu;->b:I

    invoke-direct/range {v3 .. v8}, Lg/emy;-><init>(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
