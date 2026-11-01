.class public final Lg/aoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/caf;
.implements Lg/apv;
.implements Lg/ghx;
.implements Lg/jn;
.implements Lg/bcz;
.implements Lg/bmm;
.implements Lg/btp;
.implements Lg/awd;
.implements Lg/hdb;
.implements Lg/hax;
.implements Lg/gpv;
.implements Lcom/google/android/gms/internal/ads/zzabi;
.implements Lcom/google/android/gms/internal/ads/zzaqk;
.implements Lcom/google/android/gms/internal/ads/zzapt;
.implements Lg/bic;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/bez;
.implements Lcom/google/android/gms/internal/ads/zzbsl;


# static fields
.field public static final d:Ljava/lang/Object;

.field public static volatile f:Lg/aoy;

.field public static volatile g:Lg/aoy;


# instance fields
.field public h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/aoy;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m()Lg/aoy;
    .locals 3

    sget-object v0, Lg/aoy;->f:Lg/aoy;

    if-nez v0, :cond_1

    sget-object v0, Lg/aoy;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/aoy;->f:Lg/aoy;

    if-nez v1, :cond_0

    new-instance v1, Lg/aoy;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/aoy;-><init>(I)V

    sput-object v1, Lg/aoy;->f:Lg/aoy;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg/aoy;->f:Lg/aoy;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static n(Lg/efx;)Lg/aoy;
    .locals 8

    sget-object v0, Lg/aoy;->g:Lg/aoy;

    if-nez v0, :cond_1

    const-class v1, Lg/aoy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lg/aoy;->g:Lg/aoy;

    if-nez v0, :cond_0

    new-instance v0, Lg/aoy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lg/vh;

    const-string v4, "dt.db"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lg/vh;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iput-object p0, v0, Lg/aoy;->h:Ljava/lang/Object;

    sput-object v0, Lg/aoy;->g:Lg/aoy;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/aoy;->g:Lg/aoy;

    return-object p0
.end method


# virtual methods
.method public _bl(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg/iz;

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/b;

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroidx/fragment/app/b;->access$200(Landroidx/fragment/app/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v6, p0

    iget-object v0, v6, Lg/aoy;->h:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lg/dgk;

    invoke-virtual {v7}, Lg/dgk;->getCopyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, ""

    const/4 v9, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Lg/dgk;->getCopyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0, v9}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    :cond_0
    invoke-virtual {v7}, Lg/dgk;->getToast()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lg/dgk;->getToast()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v10}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    invoke-static {}, Lg/byh;->bc()Z

    move-result v0

    const-string v11, "alipay"

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lg/dgk;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "783653502"

    invoke-virtual {v7, v0}, Lg/dgk;->setCopyText(Ljava/lang/String;)V

    invoke-virtual {v7}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "836477706"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lg/dgk;->setPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7}, Lg/dgk;->getPathType()I

    move-result v0

    if-ne v10, v0, :cond_3

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v12, v1

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v7}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/16 v17, 0x0

    move-object v15, v14

    move-object/from16 v16, v14

    invoke-static/range {v12 .. v17}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-static {v1, v7}, Lg/ffi;->f(Landroid/content/Context;Lg/dgk;)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lg/dgk;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Lg/dgk;->getCopyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0, v9}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-static {v1, v2, v10}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f1203d5

    goto :goto_0

    :cond_4
    const v3, 0x7f1203d6

    :goto_0
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v10}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    :cond_5
    :goto_1
    invoke-static {v7}, Lg/ffi;->e(Lg/dgk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lg/ert;->c:Z

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lg/dgk;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_1"

    invoke-static {v0, v2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_16"

    invoke-static {v0, v3}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_256"

    invoke-static {v0, v4}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ert;

    if-eqz v2, :cond_8

    iput-boolean v9, v2, Lg/ert;->c:Z

    goto :goto_3

    :cond_9
    invoke-static {v7}, Lg/ffi;->e(Lg/dgk;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.trinea.android.lib.ACTION_TOOL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_a
    return v10
.end method

.method public aa(ILg/cyb;)V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/p;

    invoke-virtual {v0, p1, p2}, Lg/p;->u(ILg/cyb;)V

    return-void
.end method

.method public ab(Ljava/io/Serializable;)V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public ac()Z
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    iget-boolean v0, v0, Lc/a/a;->j:Z

    return v0
.end method

.method public ad(Lg/czh;Lg/anx;)V
    .locals 1

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/gsn;

    iget-object v0, p2, Lg/anx;->a:Lg/enb;

    invoke-virtual {v0}, Lg/enb;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lg/anx;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lg/hbk;

    invoke-direct {v0, p2}, Lg/hbk;-><init>(Lg/anx;)V

    invoke-static {v0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public ae()V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lc/a/a;->j:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc/a/a;->w()Z

    :cond_0
    return-void
.end method

.method public af(IJ)V
    .locals 4

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/p;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lg/p;->o(IJ)V

    return-void
.end method

.method public ag(Lg/ebh;Lg/ebh;Lg/bfb;)V
    .locals 3

    instance-of v0, p1, Lg/cci;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/cci;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object v0

    :goto_0
    instance-of v1, p2, Lg/cci;

    if-eqz v1, :cond_1

    check-cast p2, Lg/cci;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lg/cci;->bd()Lg/cci;

    move-result-object v1

    invoke-virtual {p2}, Lg/cci;->bd()Lg/cci;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lg/cci;->g:Lg/hbb;

    iget-object v1, p2, Lg/cci;->g:Lg/hbb;

    invoke-virtual {v0, v1}, Lg/hbb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-interface {p1}, Lg/gut;->ay()Lg/gqc;

    move-result-object p2

    invoke-virtual {p2}, Lg/gqc;->al()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lg/bfb;->f(Lg/gut;I)V

    :cond_4
    invoke-interface {p1}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_5
    new-instance v0, Lg/iq;

    invoke-direct {v0, p0, p2, p3}, Lg/iq;-><init>(Lg/aoy;Lg/cci;Lg/bfb;)V

    :cond_6
    invoke-virtual {v0, p1}, Lg/iq;->accept(Ljava/lang/Object;)V

    invoke-interface {p1}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_7
    :goto_2
    return-void
.end method

.method public ah(ILjava/lang/Object;Lg/ciw;)V
    .locals 3

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/p;

    check-cast p2, Lg/cir;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lg/p;->r(I)V

    move-object p1, p2

    check-cast p1, Lg/cys;

    iget v1, p1, Lg/cys;->zzd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p3, p2}, Lg/ciw;->zza(Ljava/lang/Object;)I

    move-result v1

    iput v1, p1, Lg/cys;->zzd:I

    :cond_0
    invoke-virtual {v0, v1}, Lg/p;->r(I)V

    iget-object p1, v0, Lg/p;->f:Lg/aoy;

    invoke-interface {p3, p2, p1}, Lg/ciw;->e(Ljava/lang/Object;Lg/aoy;)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public c(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/aoy;->e()V

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/core/widget/NestedScrollView;->aj(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lg/o;->ad(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public i(Lg/x;)V
    .locals 1

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/dmr;->k(Lg/dmr;Z)V

    iget-object p1, p1, Lg/dmr;->d:Lg/elf;

    const-string v0, "vs"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public j(Lg/ftn;Lg/far;)V
    .locals 9

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/ezq;

    iget-object v1, v0, Lg/ezq;->ao:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/ezq;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/czb;

    iget-object v6, v6, Lg/czb;->b:Lg/ftn;

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/czb;

    :cond_3
    move-object v5, v2

    new-instance v3, Lg/chq;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v7, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v4, 0xc8

    add-long/2addr p1, v4

    invoke-virtual {v1, v3, v7, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 5

    iget-object p1, p2, Lg/anp;->b:Lg/dif;

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lg/anp;

    invoke-static {v1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lg/anp;

    invoke-virtual {p2}, Lg/anp;->e()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Lg/dif;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lg/eu;

    iget-object v3, v3, Lg/eu;->h:Lg/dip;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lg/dif;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2
.end method

.method public l(Lg/ftn;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p2, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p2, Lg/ezq;

    iget-object p2, p2, Lg/ezq;->ao:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lg/dmr;->j(Lg/dmr;ZI)V

    iget-object p1, v0, Lg/dmr;->d:Lg/elf;

    const-string v0, "vf"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public p(II)V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/p;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lg/p;->r(I)V

    invoke-virtual {v0, p2}, Lg/p;->r(I)V

    return-void
.end method

.method public q(Lg/ejn;)V
    .locals 5

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    iget-object v1, v0, Lc/a/a;->t:Lg/czf;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "alternative_window_event"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accessibility_event_simple"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/czf;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public r(Lg/ftn;)Z
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/dre;

    iget-object v0, v0, Lg/dre;->au:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public s(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    instance-of v1, p2, Lg/enc;

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :cond_0
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public t(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v3, "query = ?"

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v7
.end method

.method public u(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z
    .locals 7

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {p1}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lg/ccb;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    return v2

    :catch_0
    nop

    :cond_1
    :goto_0
    instance-of v1, p4, Lg/enc;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    if-eq p4, v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v2

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 p2, 0x2

    aput-object v1, v5, p2

    const-string p2, "Duplicate binding with the same ServiceConnection: %s, %s, %s."

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    if-nez p6, :cond_3

    move-object p6, v4

    :cond_3
    :try_start_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_4

    if-eqz p6, :cond_4

    invoke-static {p1, p3, p5, p6, p4}, Lg/doa;->x(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p1

    :cond_6
    if-nez p6, :cond_7

    move-object p6, v4

    :cond_7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_8

    if-eqz p6, :cond_8

    invoke-static {p1, p3, p5, p6, p4}, Lg/doa;->x(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    goto :goto_2

    :cond_8
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public v(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    check-cast p1, Lg/etm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/etm;->getData()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    sget v3, Lg/gbs;->a:I

    sget-object v3, Lg/hm;->zzbv:Lg/hm;

    invoke-virtual {v3}, Lg/hm;->zza()I

    move-result v3

    const-string v4, "INTERNAL_LOG_ERROR_REASON"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "External offer flow finished with error resultCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "ProxyBillingActivityV2"

    invoke-static {v1, p1}, Lg/gbs;->d(Landroid/content/Intent;Ljava/lang/String;)Lg/ejd;

    move-result-object p1

    iget p1, p1, Lg/ejd;->a:I

    iget-object v1, v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->h:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/gsn;

    invoke-static {p2}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public x(Lg/ftn;Z)V
    .locals 0

    iget-object p2, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p2, Lg/dre;

    invoke-virtual {p2, p1}, Lg/dre;->cq(Lg/ftn;)V

    return-void
.end method

.method public declared-synchronized y(Lg/ego;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "route"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z(ILjava/lang/Object;Lg/ciw;)V
    .locals 2

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/p;

    check-cast p2, Lg/cir;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lg/p;->n(II)V

    iget-object v1, v0, Lg/p;->f:Lg/aoy;

    invoke-interface {p3, p2, v1}, Lg/ciw;->e(Ljava/lang/Object;Lg/aoy;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lg/p;->n(II)V

    return-void
.end method

.method public zza()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public zza(IIII)V
    .locals 0

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpm;->p:Lcom/google/android/gms/internal/ads/zzcxt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxt;->zzc()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzabl;)V
    .locals 2

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaai;->i:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaai;->u:Lcom/google/android/gms/internal/ads/zzabf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabf;->zzq(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaai;->n:Z

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzapy;)V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcav;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcav;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public zzb()V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpm;->p:Lcom/google/android/gms/internal/ads/zzcxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxt;->zza()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzabl;)V
    .locals 2

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaai;->i:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaai;->bg(II)V

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcav;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcav;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public zzc()V
    .locals 1

    iget-object v0, p0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpm;->k:Lcom/google/android/gms/internal/ads/zzdaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaz;->zza()V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzci;)V
    .locals 0

    return-void
.end method
