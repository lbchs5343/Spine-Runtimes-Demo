.class public abstract Lg/cdy;
.super Lg/ghz;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public b:Lg/efc;

.field public c:Lg/fyl;

.field public d:Lg/fvy;

.field public e:Lg/cdy;

.field public f:Lg/bta;


# direct methods
.method public static g(Lg/elf;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x5dc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9c4

    if-gt p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "b"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 p1, p1, -0x7d0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x515

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120349

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lg/cdy;Lg/btp;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Lg/btp;->o(I)V

    return-void
.end method

.method public static i(Lg/cdy;Lg/btp;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lg/btp;->i(Lg/x;)V

    return-void
.end method

.method public static j(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x7d1

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x7d2

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/16 p0, 0x7d3

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/16 p0, 0x7d4

    return p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const/16 p0, 0x7d5

    return p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const/16 p0, 0x7d6

    return p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const/16 p0, 0x7d7

    return p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const/16 p0, 0x7d8

    return p0

    :cond_7
    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    const/16 p0, 0x7cf

    return p0

    :cond_8
    const/4 v0, -0x2

    if-ne p0, v0, :cond_9

    const/16 p0, 0x7ce

    return p0

    :cond_9
    const/4 v0, -0x3

    if-ne p0, v0, :cond_a

    const/16 p0, 0x7cd

    return p0

    :cond_a
    const/16 p0, 0x7d0

    return p0
.end method


# virtual methods
.method public final k(Lg/btp;)V
    .locals 6

    iget-object v0, p0, Lg/cdy;->b:Lg/efc;

    iget-object v1, v0, Lg/efc;->d:Lg/tq;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lg/efc;->c:Lg/cdy;

    new-instance v2, Lg/feb;

    invoke-direct {v2, v1}, Lg/feb;-><init>(Lg/cdy;)V

    iput-object v0, v2, Lg/feb;->c:Lg/eoy;

    new-instance v3, Lg/cuf;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/cuf;-><init>(I)V

    iput-object v3, v2, Lg/feb;->a:Lg/cuf;

    if-eqz v1, :cond_6

    iget-object v3, v2, Lg/feb;->c:Lg/eoy;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lg/feb;->a:Lg/cuf;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lg/feb;->a:Lg/cuf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/feb;->c:Lg/eoy;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lg/feb;->a:Lg/cuf;

    iget-object v4, v2, Lg/feb;->c:Lg/eoy;

    invoke-virtual {v2}, Lg/feb;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lg/bpy;

    invoke-direct {v5, v3, v1, v4, v2}, Lg/bpy;-><init>(Lg/cuf;Landroid/content/Context;Lg/eoy;Lg/feb;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lg/tq;

    invoke-direct {v5, v3, v1, v4, v2}, Lg/tq;-><init>(Lg/cuf;Landroid/content/Context;Lg/eoy;Lg/feb;)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lg/feb;->a:Lg/cuf;

    invoke-virtual {v2}, Lg/feb;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v5, Lg/bpy;

    invoke-direct {v5, v3, v1, v2}, Lg/bpy;-><init>(Lg/cuf;Landroid/content/Context;Lg/feb;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lg/tq;

    invoke-direct {v5, v3, v1, v2}, Lg/tq;-><init>(Lg/cuf;Landroid/content/Context;Lg/feb;)V

    :goto_0
    iput-object v5, v0, Lg/efc;->d:Lg/tq;

    new-instance v0, Lg/eie;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v0}, Lg/tq;->ap(Lg/eie;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pending purchases for one-time products must be supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid listener for purchases updates."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid Context."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lg/btp;)V
    .locals 13

    const/4 v1, 0x0

    const/16 v0, 0x2710

    invoke-static {v1, v0}, Lg/buj;->be(II)I

    move-result v0

    const v2, 0xd9d90

    add-int v7, v0, v2

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lg/vg;

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lg/vg;-><init>(Lg/cdy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;ILg/btp;)V

    iget-object p1, v4, Lg/cdy;->c:Lg/fyl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "a"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x44d

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-static {v3, v5, v6}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lg/fyl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lg/fyl;->f(Lg/btp;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lg/fyl;->b:Lg/cdy;

    if-eqz v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "dpa-ati"

    const-string v8, "TrineaAndroidCommon"

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lg/acr;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    :goto_0
    move-object v11, v6

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "dpa-ame"

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lg/acr;->aa(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lg/edm;

    const-string v12, "dpa-ack"

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v7, v0}, Lg/acr;->ah(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v0, v11, Lg/edm;->c:Ljava/lang/Object;

    iput-wide v9, v11, Lg/edm;->b:J

    iput-object v7, v11, Lg/edm;->a:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "is psd NumberFormatException"

    invoke-static {v7, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-eqz v11, :cond_5

    iget-object v0, v11, Lg/edm;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-wide v7, v11, Lg/edm;->b:J

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-ltz v12, :cond_5

    iget-object v7, v11, Lg/edm;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Lg/fpd;

    const/4 v8, 0x1

    invoke-direct {v7, p1, v3, v11, v8}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v7}, Lg/fyl;->h(Ljava/lang/String;Lg/btp;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x3e8

    invoke-static {v3, p1, v6}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    :goto_2
    iget-object p1, v4, Lg/cdy;->b:Lg/efc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3, v5}, Lg/vg;->o(I)V

    goto :goto_4

    :cond_6
    sget-object v0, Lg/efc;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, v6}, Lg/vg;->i(Lg/x;)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lg/efc;->d:Lg/tq;

    if-nez v0, :cond_8

    const/16 p1, 0x7c7

    invoke-virtual {v3, p1}, Lg/vg;->o(I)V

    goto :goto_4

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    sget-object v0, Lg/efc;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v6}, Lg/vg;->i(Lg/x;)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v0, p1, Lg/efc;->d:Lg/tq;

    new-instance v2, Lg/fdy;

    const/16 v5, 0xa

    invoke-direct {v2, v5, p1, v3, v1}, Lg/fdy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/fal;

    invoke-direct {v6, v0, v2}, Lg/fal;-><init>(Lg/tq;Lg/fdy;)V

    new-instance v9, Lg/efr;

    const/16 p1, 0x13

    invoke-direct {v9, p1, v0, v2, v1}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lg/tq;->ax()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v0}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    const-wide/16 v7, 0x7530

    invoke-static/range {v6 .. v11}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lg/tq;->au()Lg/ejd;

    move-result-object p1

    sget-object v1, Lg/hm;->zzy:Lg/hm;

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3, p1}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    invoke-virtual {v2, p1, v0}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/cdy;->f:Lg/bta;

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/cdy;->e:Lg/cdy;

    new-instance v0, Lg/efc;

    iget-object v1, p0, Lg/cdy;->e:Lg/cdy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/efc;->c:Lg/cdy;

    iput-object v0, p0, Lg/cdy;->b:Lg/efc;

    new-instance v0, Lg/fyl;

    iget-object v1, p0, Lg/cdy;->e:Lg/cdy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/fyl;->b:Lg/cdy;

    const-string v2, "com.eg.android.AlipayGphone"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lg/cux;->aj(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.taobao.taobao"

    invoke-static {v1, v2, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    iput-boolean v3, v0, Lg/fyl;->c:Z

    iput-object v0, p0, Lg/cdy;->c:Lg/fyl;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lg/cdy;->b:Lg/efc;

    iget-object v0, v0, Lg/efc;->d:Lg/tq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/tq;->bb()V

    :cond_0
    iget-object v0, p0, Lg/cdy;->c:Lg/fyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
