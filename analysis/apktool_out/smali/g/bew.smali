.class public abstract Lg/bew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/hdn;

.field public static final b:Ljava/util/ArrayList;

.field public static c:Landroid/content/Context;

.field public static d:Lg/bkq;

.field public static e:I

.field public static final f:Landroid/os/Handler;

.field public static g:Landroid/os/ParcelFileDescriptor;

.field public static h:Landroid/util/Pair;

.field public static final i:Ljava/util/ArrayList;

.field public static j:Z

.field public static k:Lg/he;

.field public static l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lg/bew;->f:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/bew;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/bew;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static m()Lg/he;
    .locals 2

    sget-object v0, Lg/bew;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/bew;->c:Landroid/content/Context;

    invoke-static {v0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v0

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/bew;->k:Lg/he;

    invoke-static {v0}, Lg/bew;->n(Lg/he;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/bew;->k:Lg/he;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static n(Lg/he;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    invoke-virtual {p0}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/he;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lg/ern;->k(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lg/gk;->d:Z

    invoke-virtual {p0}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lg/he;->getWindowId()I

    move-result p0

    sget v1, Lg/dyd;->p:I

    if-ltz v1, :cond_0

    if-ne v1, p0, :cond_1

    sget-object p0, Lg/dyd;->z:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static o()V
    .locals 6

    sget-object v0, Lg/bew;->d:Lg/bkq;

    sget-object v1, Lg/bew;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lg/bew;->d:Lg/bkq;

    sget-object v2, Lg/bew;->a:Lg/hdn;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sput-object v0, Lg/bew;->a:Lg/hdn;

    sget-object v1, Lg/bew;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    sput-object v0, Lg/bew;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lg/bew;->g:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_0
    sput-object v0, Lg/bew;->g:Landroid/os/ParcelFileDescriptor;

    sget-object v0, Lg/bew;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/elb;

    iget-object v3, v2, Lg/elb;->b:Landroid/view/Window;

    iget v4, v2, Lg/elb;->d:I

    iget v5, v2, Lg/elb;->a:I

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    iget v2, v2, Lg/elb;->c:I

    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static p(Landroid/content/Context;Lg/bky;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v1

    invoke-static {v0}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/ark;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/ark;->ab()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lg/ki;

    invoke-direct {v2, p0, p1, v0}, Lg/ki;-><init>(Landroid/content/Context;Lg/bky;Landroid/content/Context;)V

    iget-object p0, v1, Lg/ark;->m:Landroid/os/Handler;

    new-instance p1, Lg/dsf;

    const/16 v0, 0xa

    invoke-direct {p1, v1, v0, v2}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {p0, p1}, Lg/bew;->s(Landroid/content/Context;Lg/bky;)V

    return-void
.end method

.method public static q()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lg/bew;->k:Lg/he;

    sget v1, Lg/bew;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lg/bew;->e:I

    invoke-static {}, Lg/bew;->o()V

    sput-object v0, Lg/bew;->h:Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lg/bew;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bky;

    invoke-interface {v3, v0, v2}, Lg/bky;->d(Lg/he;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static r(Lg/he;I)V
    .locals 7

    sget v0, Lg/bew;->e:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 p1, 0x1

    add-int/2addr v0, p1

    sput v0, Lg/bew;->e:I

    invoke-static {}, Lg/bew;->o()V

    sget-boolean v0, Lg/ern;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sput-object v1, Lg/ern;->f:Lg/he;

    :cond_1
    invoke-static {}, Lg/ern;->m()Lg/he;

    move-result-object v0

    sget-object v2, Lg/bew;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget v4, Lg/bus;->a:I

    const-string v4, "shizuku_compatibility_mode_enabled"

    invoke-static {v2, v4, v3}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lg/bew;->c:Landroid/content/Context;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v4

    invoke-virtual {v4}, Lg/ark;->w()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    sget-boolean v4, Lg/gk;->d:Z

    sget v4, Lg/dyd;->p:I

    if-ltz v4, :cond_6

    sget-object v4, Lg/dyd;->z:Ljava/lang/String;

    invoke-static {v4}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lg/dyd;->z:Ljava/lang/String;

    sget v6, Lg/dyd;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, v1

    :goto_4
    sget-object v5, Lg/bew;->h:Landroid/util/Pair;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-static {p0}, Lg/bew;->n(Lg/he;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move-object p0, v1

    :goto_5
    sput-object p0, Lg/bew;->k:Lg/he;

    if-eqz v3, :cond_c

    invoke-static {v0}, Lg/bew;->n(Lg/he;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lg/he;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {p0}, Lg/bew;->n(Lg/he;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, p0

    goto :goto_6

    :cond_b
    invoke-static {v0}, Lg/bew;->n(Lg/he;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    sput-object v1, Lg/bew;->h:Landroid/util/Pair;

    new-instance p0, Ljava/util/ArrayList;

    sget-object v1, Lg/bew;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bky;

    invoke-interface {v1, v0, p1}, Lg/bky;->d(Lg/he;Z)V

    goto :goto_7

    :cond_d
    :goto_8
    return-void
.end method

.method public static s(Landroid/content/Context;Lg/bky;)V
    .locals 11

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1, v1, v2}, Lg/bky;->d(Lg/he;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lg/bew;->c:Landroid/content/Context;

    sget-boolean v0, Lg/gk;->d:Z

    sget v0, Lg/dyd;->p:I

    if-ltz v0, :cond_3

    sget-object v0, Lg/dyd;->z:Ljava/lang/String;

    invoke-static {v0}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/Pair;

    sget-object v3, Lg/dyd;->z:Ljava/lang/String;

    sget v4, Lg/dyd;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v8, v1

    :goto_1
    instance-of v0, p0, Lg/baq;

    const/4 v3, 0x0

    if-nez v0, :cond_5

    instance-of v0, p0, Lg/edx;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x1

    :goto_3
    sget-object v0, Lg/bew;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lg/bew;->h:Landroid/util/Pair;

    sget-boolean v5, Lg/bew;->j:Z

    if-ne v5, v9, :cond_7

    if-nez v4, :cond_6

    if-nez v8, :cond_7

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v8}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lg/bew;->q()V

    :cond_8
    :goto_4
    sget-boolean v4, Lg/ern;->a:Z

    if-eqz v4, :cond_9

    sput-object v1, Lg/ern;->f:Lg/he;

    :cond_9
    invoke-static {}, Lg/ern;->m()Lg/he;

    move-result-object v4

    sget-object v5, Lg/bew;->c:Landroid/content/Context;

    invoke-static {v5}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v7

    sget-object v5, Lg/bew;->c:Landroid/content/Context;

    invoke-static {v5}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v7}, Lg/ark;->w()Z

    move-result v6

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    invoke-static {v4}, Lg/bew;->n(Lg/he;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_b

    invoke-static {v4}, Lg/bew;->n(Lg/he;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Lg/he;->getChildCount()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    sget p0, Lg/bew;->e:I

    invoke-static {v1, p0}, Lg/bew;->r(Lg/he;I)V

    :cond_c
    invoke-interface {p1, v4, v3}, Lg/bky;->d(Lg/he;Z)V

    return-void

    :cond_d
    :goto_6
    sput-object v1, Lg/bew;->k:Lg/he;

    if-nez v5, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {}, Lg/bew;->q()V

    :cond_e
    invoke-interface {p1, v1, v3}, Lg/bky;->d(Lg/he;Z)V

    return-void

    :cond_f
    if-eqz v9, :cond_12

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget-object v1, Lg/bew;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/elb;

    iget-object v4, v4, Lg/elb;->b:Landroid/view/Window;

    if-ne v4, p0, :cond_10

    goto :goto_7

    :cond_11
    new-instance v3, Lg/elb;

    invoke-direct {v3, p0}, Lg/elb;-><init>(Landroid/view/Window;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v2, :cond_13

    return-void

    :cond_13
    sput-object v8, Lg/bew;->h:Landroid/util/Pair;

    sput-boolean v9, Lg/bew;->j:Z

    sget p0, Lg/bew;->e:I

    add-int/lit8 v6, p0, 0x1

    sput v6, Lg/bew;->e:I

    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v10, Lg/bew;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Lg/bkq;

    invoke-direct/range {v5 .. v10}, Lg/bkq;-><init>(ILg/ark;Landroid/util/Pair;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    sput-object v5, Lg/bew;->d:Lg/bkq;

    if-eqz v9, :cond_14

    const-wide/16 p0, 0x96

    goto :goto_8

    :cond_14
    const-wide/16 p0, 0x0

    :goto_8
    sget-object v0, Lg/bew;->f:Landroid/os/Handler;

    invoke-virtual {v0, v5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
