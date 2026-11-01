.class public final Lg/csp;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public h:Z

.field public j:Z

.field public final k:Lg/bzv;

.field public l:Lg/rs;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public n:I

.field public o:Lg/eoa;

.field public p:Lg/ffm;

.field public final q:Ljava/lang/Object;

.field public r:I

.field public final s:Lg/bgb;

.field public t:J

.field public final u:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 3

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lg/csp;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/csp;->q:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/csp;->h:Z

    new-instance v0, Lg/bgb;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/bgb;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/csp;->s:Lg/bgb;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lg/rs;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/rs;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lg/csp;->l:Lg/rs;

    const/16 v0, 0x64

    iput v0, p0, Lg/csp;->n:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lg/csp;->t:J

    iput v0, p0, Lg/csp;->r:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lg/csp;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lg/bzv;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lg/bzv;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/csp;->k:Lg/bzv;

    return-void
.end method

.method public static v(Lg/csp;Lg/rs;IJZZ)V
    .locals 4

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-wide v1, p0, Lg/csp;->t:J

    cmp-long v3, p3, v1

    if-gtz v3, :cond_0

    iget v1, p0, Lg/csp;->r:I

    sget-object v2, Lg/rs;->a:Lg/rs;

    if-gt v1, p2, :cond_0

    iget-object p0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p0, p0, Lg/bgm;->p:Lg/dvb;

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p1, p2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1, p2}, Lg/gmr;->aq(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "consent_settings"

    invoke-virtual {p1}, Lg/rs;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lg/csp;->t:J

    iput p2, p0, Lg/csp;->r:I

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object p0

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    invoke-virtual {p0}, Lg/os;->zza()V

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/cyg;->an()Lg/efm;

    move-result-object p1

    invoke-virtual {p1}, Lg/efm;->j()V

    :cond_1
    invoke-virtual {p0}, Lg/dbb;->w()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object p1

    new-instance p2, Lg/bqs;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lg/bqs;-><init>(Lg/dbb;Lg/afh;I)V

    invoke-virtual {p0, p2}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lg/dbb;->r(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_3
    return-void

    :cond_4
    iget-object p0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p0, p0, Lg/bgm;->p:Lg/dvb;

    const-string p1, "Lower precedence consent source ignored, proposed source"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w(Lg/csp;Lg/rs;Lg/rs;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lg/gxx;

    sget-object v2, Lg/gxx;->zzb:Lg/gxx;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/gxx;->zza:Lg/gxx;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {p2, v5}, Lg/rs;->g(Lg/gxx;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v5}, Lg/rs;->g(Lg/gxx;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-array v0, v0, [Lg/gxx;

    sget-object v2, Lg/gxx;->zzb:Lg/gxx;

    aput-object v2, v0, v3

    sget-object v2, Lg/gxx;->zza:Lg/gxx;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Lg/rs;->i(Lg/rs;[Lg/gxx;)Z

    move-result p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p0, Lg/cyg;

    invoke-virtual {p0}, Lg/cyg;->at()Lg/fqh;

    move-result-object p0

    invoke-virtual {p0}, Lg/fqh;->w()V

    return-void
.end method


# virtual methods
.method public final al()V
    .locals 9

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lg/cyg;

    iget-object v1, v6, Lg/cyg;->b:Lg/gmr;

    iget-object v7, v6, Lg/cyg;->z:Lg/bgm;

    iget-object v2, v6, Lg/cyg;->ab:Lg/czz;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->al:Lg/dxb;

    invoke-virtual {v1}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    const-string v3, "unset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "app"

    const/4 v4, 0x0

    const-string v5, "_npa"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v8, v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "app"

    const-string v5, "_npa"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Lg/cyg;->as()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lg/csp;->h:Z

    if-eqz v1, :cond_4

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v7, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/csp;->am()V

    sget-object v1, Lg/blm;->a:Lg/blm;

    iget-object v1, v1, Lg/blm;->b:Lg/dvf;

    invoke-interface {v1}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dkg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lg/cyg;->e:Lg/dsd;

    const/4 v2, 0x0

    sget-object v3, Lg/gad;->j:Lg/tw;

    invoke-virtual {v1, v2, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v6, Lg/cyg;->n:Lg/cjv;

    invoke-static {v1}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v1, Lg/cjv;->j:Lg/bzv;

    invoke-virtual {v1}, Lg/bzv;->zza()V

    :cond_3
    iget-object v1, v6, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v2, Lg/djg;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/djg;-><init>(Lg/csp;I)V

    invoke-virtual {v1, v2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v7, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Updating Scion state (FE)"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    invoke-virtual {v1, v8}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v2

    new-instance v3, Lg/bqs;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lg/bqs;-><init>(Lg/dbb;Lg/afh;I)V

    invoke-virtual {v1, v3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final am()V
    .locals 8

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->au()Z

    move-result v1

    iget-object v2, v0, Lg/cyg;->e:Lg/dsd;

    if-eqz v1, :cond_2

    sget-object v1, Lg/gad;->af:Lg/tw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    invoke-virtual {v2, v1}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v2, Lg/djg;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lg/djg;-><init>(Lg/csp;I)V

    invoke-virtual {v1, v2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v2

    iget-object v4, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Lg/cyg;->an()Lg/efm;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    new-array v7, v6, [B

    invoke-virtual {v4, v5, v7}, Lg/efm;->l(I[B)Z

    new-instance v4, Lg/bqs;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v5}, Lg/bqs;-><init>(Lg/dbb;Lg/afh;I)V

    invoke-virtual {v1, v4}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lg/csp;->h:Z

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "previous_os_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->ar()Lg/auk;

    move-result-object v3

    invoke-virtual {v3}, Lg/bkw;->an()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lg/cyg;->ar()Lg/auk;

    move-result-object v0

    invoke-virtual {v0}, Lg/bkw;->an()V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_po"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v1, v2, v0}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final an(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v11}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lg/cyg;

    invoke-virtual {v13}, Lg/cyg;->as()Z

    move-result v0

    iget-object v2, v13, Lg/cyg;->v:Landroid/content/Context;

    iget-object v14, v13, Lg/cyg;->n:Lg/cjv;

    iget-object v15, v13, Lg/cyg;->h:Lg/bcm;

    iget-object v3, v13, Lg/cyg;->af:Lg/ebl;

    iget-object v4, v13, Lg/cyg;->b:Lg/gmr;

    iget-object v5, v13, Lg/cyg;->ab:Lg/czz;

    iget-object v6, v13, Lg/cyg;->z:Lg/bgm;

    move-object/from16 v16, v14

    iget-object v14, v13, Lg/cyg;->m:Lg/dkq;

    if-eqz v0, :cond_2c

    invoke-virtual {v13}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    iget-object v0, v0, Lg/fqh;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v6, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v8, v2, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, v1, Lg/csp;->j:Z

    const/16 v18, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_3

    iput-boolean v12, v1, Lg/csp;->j:Z

    :try_start_0
    iget-boolean v0, v13, Lg/cyg;->t:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v12, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v12, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-array v12, v1, [Ljava/lang/Class;

    const-class v19, Landroid/content/Context;

    aput-object v19, v12, v18

    const-string v1, "initialize"

    invoke-virtual {v0, v1, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v2, v12, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v6, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v6, Lg/bgm;->p:Lg/dvb;

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v3

    move-object v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v12, v2

    const-string v2, "auto"

    move-object/from16 v20, v6

    const-string v6, "_lgclid"

    move-object/from16 v21, v5

    move-object/from16 v22, v20

    move-object v5, v0

    move-object/from16 v20, v12

    move-object v12, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v1, p0

    move-object v12, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    :goto_3
    if-eqz p6, :cond_5

    sget-object v0, Lg/dkq;->b:[Ljava/lang/String;

    aget-object v0, v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static/range {v20 .. v20}, Lg/cyg;->ai(Lg/bgf;)V

    move-object/from16 v2, v20

    iget-object v0, v2, Lg/gmr;->w:Lg/dpa;

    invoke-virtual {v0}, Lg/dpa;->p()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v14, v11, v0}, Lg/dkq;->bf(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_5
    move-object/from16 v2, v20

    :goto_4
    iget-object v0, v1, Lg/csp;->s:Lg/bgb;

    const/16 v3, 0x28

    if-nez p8, :cond_a

    const-string v4, "_iap"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v4, "event"

    invoke-virtual {v14, v4, v8}, Lg/dkq;->ba(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_5
    const/4 v4, 0x2

    goto :goto_6

    :cond_6
    sget-object v5, Lg/dyd;->i:[Ljava/lang/String;

    sget-object v6, Lg/dyd;->h:[Ljava/lang/String;

    invoke-virtual {v14, v4, v5, v6, v8}, Lg/dkq;->bn(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v4, 0xd

    goto :goto_6

    :cond_7
    iget-object v5, v14, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v3, v4, v8}, Lg/dkq;->aw(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_a

    invoke-static/range {v22 .. v22}, Lg/cyg;->ak(Lg/bkw;)V

    move-object/from16 v5, v22

    iget-object v2, v5, Lg/bgm;->m:Lg/dvb;

    const-string v5, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v12, v8}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v2, 0x1

    invoke-static {v3, v8, v2}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v3, 0x0

    const-string v5, "_ev"

    move-object/from16 p1, v0

    move-object/from16 p5, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p6, v12

    invoke-static/range {p1 .. p6}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_a
    move-object/from16 v5, v22

    invoke-static {v15}, Lg/cyg;->aj(Lg/os;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v6

    const-string v4, "_sc"

    if-eqz v6, :cond_b

    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    const/4 v3, 0x1

    iput-boolean v3, v6, Lg/ein;->a:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    invoke-static {v6, v11, v3}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    const-string v3, "am"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v8}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v6

    if-eqz p6, :cond_f

    move-object/from16 v22, v0

    iget-object v0, v1, Lg/csp;->p:Lg/ffm;

    if-eqz v0, :cond_10

    if-nez v6, :cond_10

    if-eqz v3, :cond_d

    const/16 v23, 0x1

    goto :goto_a

    :cond_d
    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v5, Lg/bgm;->o:Lg/dvb;

    invoke-virtual {v12, v8}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v11}, Lg/ebl;->j(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v2, v4, v3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lg/csp;->p:Lg/ffm;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/csp;->p:Lg/ffm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v0, v2, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v0, Lg/aad;

    check-cast v0, Lg/etv;

    invoke-virtual {v0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v3, v11}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lg/ob;->i(Landroid/os/Parcel;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_e
    :goto_9
    move-object v6, v1

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    iget-object v2, v2, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->g:Lg/dvb;

    const-string v3, "Event interceptor threw exception"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object/from16 v22, v0

    :cond_10
    move/from16 v23, v3

    :goto_a
    invoke-virtual {v13}, Lg/cyg;->au()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v14, v8}, Lg/dkq;->bl(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v5, Lg/bgm;->m:Lg/dvb;

    const-string v3, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v12, v8}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    const/16 v2, 0x28

    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    :goto_b
    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v3, "_ev"

    const/4 v4, 0x0

    move/from16 p3, v0

    move-object/from16 p5, v2

    move-object/from16 p4, v3

    move-object/from16 p2, v4

    move/from16 p6, v12

    move-object/from16 p1, v22

    invoke-static/range {p1 .. p6}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_12
    const-string v0, "_sn"

    const-string v3, "_si"

    const-string v12, "_o"

    filled-new-array {v12, v0, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    move/from16 v3, p8

    invoke-virtual {v14, v8, v11, v0, v3}, Lg/dkq;->bi(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {v15}, Lg/cyg;->aj(Lg/os;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v3

    move-object/from16 p6, v12

    const-string v4, "_ae"

    if-eqz v3, :cond_13

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static/range {v16 .. v16}, Lg/cyg;->aj(Lg/os;)V

    move-object/from16 v3, v16

    iget-object v6, v3, Lg/cjv;->k:Lg/fcw;

    const-wide/16 v24, 0x0

    iget-object v11, v6, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v11, Lg/cjv;

    iget-object v11, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v11, Lg/cyg;

    iget-object v11, v11, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v9, v6, Lg/fcw;->e:J

    sub-long v9, v11, v9

    iput-wide v11, v6, Lg/fcw;->e:J

    cmp-long v6, v9, v24

    if-lez v6, :cond_14

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v14, v0, v9, v10}, Lg/dkq;->bs(Landroid/os/Bundle;J)V

    goto :goto_c

    :cond_13
    move-object/from16 v3, v16

    const-wide/16 v24, 0x0

    :cond_14
    :goto_c
    sget-object v6, Lg/ear;->a:Lg/ear;

    iget-object v6, v6, Lg/ear;->b:Lg/dvf;

    invoke-interface {v6}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gbh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v13, Lg/cyg;->e:Lg/dsd;

    sget-object v9, Lg/gad;->q:Lg/tw;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "auto"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "_ffr"

    if-nez v6, :cond_1a

    const-string v6, "_ssr"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v14, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v11, Lg/gje;->a:I

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_d

    :cond_15
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_16
    :goto_d
    move-object v9, v10

    :cond_17
    :goto_e
    iget-object v11, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v11}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v11, v11, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {v11}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v11

    if-eq v9, v11, :cond_19

    if-eqz v9, :cond_18

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    goto :goto_f

    :cond_18
    iget-object v6, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v6, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {v6, v9}, Lg/dxb;->l(Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    :goto_f
    iget-object v0, v6, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v14, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v6, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v6, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {v6}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    invoke-virtual {v0, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v2, Lg/gmr;->k:Lg/fou;

    invoke-virtual {v6}, Lg/fou;->f()J

    move-result-wide v11

    cmp-long v6, v11, v24

    if-lez v6, :cond_1d

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    move-wide/from16 v11, p3

    invoke-virtual {v2, v11, v12}, Lg/gmr;->au(J)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v2, Lg/gmr;->x:Lg/avz;

    invoke-virtual {v2}, Lg/avz;->g()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v5, Lg/bgm;->c:Lg/dvb;

    const-string v6, "Current session is expired, remove the session number, ID, and engagement time"

    invoke-virtual {v2, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v3

    move-object v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v6, v2

    const-string v2, "auto"

    move-object/from16 v20, v5

    const/4 v5, 0x0

    move-object/from16 v17, v6

    const-string v6, "_sid"

    move-object/from16 p5, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v2, "auto"

    const-string v6, "_sno"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v2, "auto"

    const-string v6, "_se"

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_12

    :cond_1c
    :goto_11
    move-object v6, v1

    move-object/from16 p5, v3

    move-object v10, v4

    move-object/from16 v20, v5

    goto :goto_12

    :cond_1d
    move-wide/from16 v11, p3

    goto :goto_11

    :goto_12
    const-string v1, "extend_session"

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    invoke-static/range {v20 .. v20}, Lg/cyg;->ak(Lg/bkw;)V

    move-object/from16 v5, v20

    iget-object v1, v5, Lg/bgm;->c:Lg/dvb;

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lg/cyg;->aj(Lg/os;)V

    move-object/from16 v1, p5

    iget-object v2, v1, Lg/cjv;->j:Lg/bzv;

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v12, v3}, Lg/bzv;->g(JZ)V

    goto :goto_13

    :cond_1e
    move-object/from16 v1, p5

    :goto_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_24

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_22

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    move-object/from16 v16, v1

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p5, v2

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    move/from16 p8, v3

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    const/16 v18, 0x0

    aput-object v1, v3, v18

    move-object v1, v3

    goto :goto_15

    :cond_1f
    move/from16 p8, v3

    instance-of v2, v1, [Landroid/os/Parcelable;

    if-eqz v2, :cond_20

    check-cast v1, [Landroid/os/Parcelable;

    array-length v2, v1

    const-class v3, [Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    goto :goto_15

    :cond_20
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_23

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_16

    :cond_22
    move-object/from16 v16, v1

    move-object/from16 p5, v2

    move/from16 p8, v3

    :cond_23
    :goto_16
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p5

    move/from16 v3, p8

    move-object/from16 v1, v16

    goto :goto_14

    :cond_24
    move-object/from16 v16, v1

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v1, :cond_25

    const-string v2, "_ep"

    :goto_18
    move-object/from16 v3, p6

    goto :goto_19

    :cond_25
    move-object v2, v8

    goto :goto_18

    :goto_19
    invoke-virtual {v0, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_26

    invoke-static {v14}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v14, v0}, Lg/dkq;->bu(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_26
    move-object v4, v0

    new-instance v28, Lg/ctf;

    move v5, v1

    move-object v1, v2

    new-instance v2, Lg/cde;

    invoke-direct {v2, v4}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v16

    move-object/from16 v16, v3

    move-object v3, v7

    move-object v7, v0

    move-object/from16 v0, v28

    move-wide/from16 v30, v11

    move-object v12, v4

    move v11, v5

    move-wide/from16 v4, v30

    invoke-direct/range {v0 .. v5}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    invoke-virtual {v13}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lg/cyg;->an()Lg/efm;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p5, v9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move/from16 p6, v11

    const/4 v11, 0x0

    invoke-static {v0, v9, v11}, Lg/fbe;->b(Lg/ctf;Landroid/os/Parcel;I)V

    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v11

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    array-length v9, v11

    const/high16 v0, 0x20000

    if-le v9, v0, :cond_27

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v2, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    const/16 v27, 0x0

    :goto_1a
    const/4 v2, 0x1

    goto :goto_1b

    :cond_27
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v11}, Lg/efm;->l(I[B)Z

    move-result v0

    move/from16 v27, v0

    goto :goto_1a

    :goto_1b
    invoke-virtual {v1, v2}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v26

    new-instance v24, Lg/edg;

    const/16 v29, 0x1

    move-object/from16 v25, v1

    invoke-direct/range {v24 .. v29}, Lg/edg;-><init>(Lg/dbb;Lg/afh;ZLg/exk;I)V

    move-object/from16 v1, v24

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    if-nez v23, :cond_29

    iget-object v0, v6, Lg/csp;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/ebc;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v9, v2, Lg/ebc;->a:Lg/aad;

    check-cast v9, Lg/etv;

    invoke-virtual {v9}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v11, v0}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v11, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 p8, v1

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {v9, v11, v1}, Lg/ob;->i(Landroid/os/Parcel;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1e

    :catch_3
    move-exception v0

    goto :goto_1d

    :catch_4
    move-exception v0

    move-object/from16 p8, v1

    :goto_1d
    iget-object v1, v2, Lg/ebc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Event listener threw exception"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    :goto_1e
    move-object/from16 v1, p8

    goto :goto_1c

    :cond_29
    add-int/lit8 v1, p6, 0x1

    move-object/from16 v9, p5

    move-wide v11, v4

    move-object/from16 p6, v16

    move-object/from16 v16, v7

    move-object v7, v3

    goto/16 :goto_17

    :cond_2a
    move-object/from16 v7, v16

    invoke-static {v15}, Lg/cyg;->aj(Lg/os;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {v7}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, v7, Lg/cjv;->k:Lg/fcw;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3, v3}, Lg/fcw;->f(JZZ)Z

    :cond_2b
    :goto_1f
    return-void

    :cond_2c
    move-object v5, v6

    move-object v6, v1

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v5, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final ao(Ljava/lang/Boolean;Z)V
    .locals 4

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Setting app measurement enabled (FE)"

    invoke-virtual {v1, p1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "measurement_enabled"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_2

    iget-object p2, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {p2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {p2}, Lg/bgf;->_e()V

    invoke-virtual {p2}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "measurement_enabled_from_api"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object p2, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p2}, Lg/fth;->_e()V

    iget-boolean p2, v0, Lg/cyg;->i:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lg/csp;->al()V

    return-void
.end method

.method public final ap(Landroid/os/Bundle;IJ)V
    .locals 7

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p0}, Lg/os;->zza()V

    sget-object v1, Lg/rs;->a:Lg/rs;

    invoke-static {}, Lg/gxx;->values()[Lg/gxx;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    iget-object v6, v5, Lg/gxx;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, v5, Lg/gxx;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "granted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-string v6, "denied"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v5

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->h:Lg/dvb;

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v4, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Lg/rs;->c(Landroid/os/Bundle;)Lg/rs;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lg/csp;->as(Lg/rs;IJ)V

    return-void
.end method

.method public final aq()V
    .locals 2

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/csp;->o:Lg/eoa;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lg/csp;->o:Lg/eoa;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final ar(Lg/rs;)V
    .locals 5

    invoke-virtual {p0}, Lg/acn;->_e()V

    sget-object v0, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {p1, v0}, Lg/rs;->g(Lg/gxx;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {p1, v0}, Lg/rs;->g(Lg/gxx;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    invoke-virtual {p1}, Lg/cyg;->ao()Lg/dbb;

    move-result-object p1

    invoke-virtual {p1}, Lg/dbb;->w()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v3, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-boolean v0, v0, Lg/cyg;->i:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v3, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iput-boolean p1, v0, Lg/cyg;->i:Z

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lg/csp;->ao(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final as(Lg/rs;IJ)V
    .locals 10

    invoke-virtual {p0}, Lg/os;->zza()V

    const/16 v8, -0xa

    if-eq p2, v8, :cond_1

    iget-object v0, p1, Lg/rs;->b:Ljava/util/EnumMap;

    sget-object v1, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p1, Lg/rs;->b:Ljava/util/EnumMap;

    sget-object v1, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->h:Lg/dvb;

    const-string v0, "Discarding empty consent settings"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lg/csp;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v7, p0, Lg/csp;->l:Lg/rs;

    iget v0, p0, Lg/csp;->n:I

    sget-object v2, Lg/rs;->a:Lg/rs;

    const/4 v2, 0x0

    if-gt p2, v0, :cond_3

    iget-object v0, p1, Lg/rs;->b:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v4, v2, [Lg/gxx;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gxx;

    invoke-virtual {p1, v7, v0}, Lg/rs;->i(Lg/rs;[Lg/gxx;)Z

    move-result v0

    sget-object v4, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {p1, v4}, Lg/rs;->g(Lg/gxx;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lg/csp;->l:Lg/rs;

    invoke-virtual {v5, v4}, Lg/rs;->g(Lg/gxx;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object v4, p0, Lg/csp;->l:Lg/rs;

    invoke-virtual {p1, v4}, Lg/rs;->e(Lg/rs;)Lg/rs;

    move-result-object p1

    iput-object p1, p0, Lg/csp;->l:Lg/rs;

    iput p2, p0, Lg/csp;->n:I

    move v8, v2

    :goto_2
    move-object v2, p1

    const/16 p1, -0xa

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->p:Lg/dvb;

    const-string v0, "Ignoring lower-priority consent settings, proposed settings"

    invoke-virtual {p1, v2, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lg/csp;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    if-eqz v0, :cond_5

    iget-object p1, p0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/dlh;

    move-object v1, p0

    move-object v9, v7

    move-wide v6, v4

    move v5, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v9}, Lg/dlh;-><init>(Lg/csp;Lg/rs;JIJZLg/rs;)V

    invoke-virtual {p1, v0}, Lg/fth;->o(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    move v6, v8

    new-instance v0, Lg/fyp;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lg/fyp;-><init>(Lg/csp;Lg/rs;IJZLg/rs;)V

    const/16 v1, 0x1e

    if-eq p2, v1, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p1, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_4
    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p1, v0}, Lg/fth;->o(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final at(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    :goto_1
    const-string v0, "screen_view"

    const/4 v4, 0x0

    if-eq v3, v0, :cond_b

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_2
    const/4 v0, 0x1

    if-eqz p5, :cond_3

    iget-object v6, v1, Lg/csp;->p:Lg/ffm;

    if-eqz v6, :cond_3

    invoke-static {v3}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Landroid/os/Bundle;

    if-eqz v9, :cond_6

    new-instance v9, Landroid/os/Bundle;

    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v9, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    instance-of v5, v7, [Landroid/os/Parcelable;

    if-eqz v5, :cond_8

    check-cast v7, [Landroid/os/Parcelable;

    const/4 v5, 0x0

    :goto_4
    array-length v9, v7

    if-ge v5, v9, :cond_5

    aget-object v9, v7, v5

    instance-of v10, v9, Landroid/os/Bundle;

    if-eqz v10, :cond_7

    new-instance v10, Landroid/os/Bundle;

    check-cast v9, Landroid/os/Bundle;

    invoke-direct {v10, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v10, v7, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    instance-of v5, v7, Ljava/util/List;

    if-eqz v5, :cond_5

    check-cast v7, Ljava/util/List;

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroid/os/Bundle;

    if-eqz v10, :cond_9

    new-instance v10, Landroid/os/Bundle;

    check-cast v9, Landroid/os/Bundle;

    invoke-direct {v10, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v7, v5, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v10, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/gau;

    move/from16 v9, p4

    move/from16 v7, p5

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v9}, Lg/gau;-><init>(Lg/csp;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    invoke-virtual {v10, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v2, v0, Lg/bcm;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lg/bcm;->k:Z

    if-nez v3, :cond_c

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Cannot log screen view event when the app is in the background."

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_c
    const-string v3, "screen_name"

    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x64

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v8, Lg/cyg;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v7, v6, :cond_e

    :cond_d
    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v4, "Invalid screen name length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_e
    const-string v7, "screen_class"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v9, Lg/cyg;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v8, v6, :cond_10

    :cond_f
    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Invalid screen class length for screen view. Length"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_10
    if-nez v7, :cond_12

    iget-object v6, v0, Lg/bcm;->g:Landroid/app/Activity;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Lg/bcm;->v(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_11
    const-string v7, "Activity"

    :cond_12
    :goto_6
    iget-object v6, v0, Lg/bcm;->m:Lg/ein;

    iget-boolean v8, v0, Lg/bcm;->o:Z

    if-eqz v8, :cond_13

    if-eqz v6, :cond_13

    iput-boolean v4, v0, Lg/bcm;->o:Z

    iget-object v4, v6, Lg/ein;->e:Ljava/lang/String;

    invoke-static {v4, v7}, Lg/ffb;->cg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v6, Lg/ein;->c:Ljava/lang/String;

    invoke-static {v6, v3}, Lg/ffb;->cg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v4, :cond_13

    if-eqz v6, :cond_13

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Ignoring call to log screen view event with duplicate parameters."

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    if-nez v3, :cond_14

    const-string v4, "null"

    goto :goto_7

    :cond_14
    move-object v4, v3

    :goto_7
    if-nez v7, :cond_15

    const-string v6, "null"

    goto :goto_8

    :cond_15
    move-object v6, v7

    :goto_8
    const-string v8, "Logging screen view with name, class"

    invoke-virtual {v2, v4, v8, v6}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lg/bcm;->m:Lg/ein;

    if-nez v2, :cond_16

    iget-object v2, v0, Lg/bcm;->n:Lg/ein;

    goto :goto_9

    :cond_16
    iget-object v2, v0, Lg/bcm;->m:Lg/ein;

    :goto_9
    new-instance v11, Lg/ein;

    iget-object v4, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->m:Lg/dkq;

    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4}, Lg/dkq;->by()J

    move-result-wide v13

    const/4 v12, 0x1

    move-wide/from16 v15, p6

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lg/ein;-><init>(ZJJLjava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Lg/bcm;->m:Lg/ein;

    iput-object v2, v0, Lg/bcm;->n:Lg/ein;

    iput-object v11, v0, Lg/bcm;->j:Lg/ein;

    iget-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v12, v3, Lg/cyg;->j:Lg/fth;

    invoke-static {v12}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v3, Lg/sc;

    const/4 v10, 0x3

    move-object v4, v0

    move-object v7, v2

    move-object v6, v11

    invoke-direct/range {v3 .. v10}, Lg/sc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v12, v3}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :goto_a
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final av(Landroid/os/Bundle;J)V
    .locals 12

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->g:Lg/dvb;

    const-string v3, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    invoke-static {v1, p1, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    invoke-static {v1, v4, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    const-string v6, "value"

    invoke-static {v1, v6, v5, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "trigger_event_name"

    invoke-static {v1, v5, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "trigger_timeout"

    const-class v9, Ljava/lang/Long;

    invoke-static {v1, v8, v9, v7}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    invoke-static {v1, v10, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_params"

    const-class v11, Landroid/os/Bundle;

    invoke-static {v1, v10, v11, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    invoke-static {v1, v10, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_params"

    invoke-static {v1, v10, v11, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    invoke-static {v1, v10, v9, v7}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "expired_event_name"

    invoke-static {v1, v7, v2, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "expired_event_params"

    invoke-static {v1, v2, v11, v3}, Lg/dyd;->ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, v0, Lg/cyg;->m:Lg/dkq;

    iget-object v2, v0, Lg/cyg;->m:Lg/dkq;

    iget-object v3, v0, Lg/cyg;->af:Lg/ebl;

    iget-object v4, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p3}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {p3, p1}, Lg/dkq;->bp(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2, p2, p1}, Lg/dkq;->bw(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_6

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2, p2, p1}, Lg/dkq;->bj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p3, v4, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Unable to normalize conditional user property value"

    invoke-virtual {v3, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p3, v1}, Lg/dyd;->bf(Ljava/lang/Object;Landroid/os/Bundle;)V

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v5, 0x1

    const-wide v7, 0x39ef8b000L

    if-nez v2, :cond_3

    cmp-long v2, p2, v7

    if-gtz v2, :cond_2

    cmp-long v2, p2, v5

    if-gez v2, :cond_3

    :cond_2
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v4, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v3, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    invoke-virtual {v0, p1, p3, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long v2, p2, v7

    if-gtz v2, :cond_5

    cmp-long v2, p2, v5

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance p2, Lg/aiy;

    const/4 p3, 0x1

    invoke-direct {p2, p0, v1, p3}, Lg/aiy;-><init>(Lg/csp;Landroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v4, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v3, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    invoke-virtual {v0, p1, p3, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p3, v4, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Invalid conditional user property value"

    invoke-virtual {v3, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, v4, Lg/bgm;->b:Lg/dvb;

    const-string p3, "Invalid conditional user property name"

    invoke-virtual {v3, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final aw(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance p2, Lg/aiy;

    const/4 p3, 0x2

    invoke-direct {p2, p0, v3, p3}, Lg/aiy;-><init>(Lg/csp;Landroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-static/range {p1 .. p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    const-string v3, "allow_personalized_ads"

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    instance-of v3, v0, Ljava/lang/String;

    const-string v6, "_npa"

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x1

    if-eq v5, v0, :cond_0

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v4, v2, Lg/cyg;->b:Lg/gmr;

    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v4, v4, Lg/gmr;->al:Lg/dxb;

    cmp-long v11, v9, v7

    if-nez v11, :cond_1

    const-string v3, "true"

    :cond_1
    invoke-virtual {v4, v3}, Lg/dxb;->l(Ljava/lang/String;)V

    :goto_1
    move-object v11, v0

    move-object v8, v6

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    iget-object v3, v2, Lg/cyg;->b:Lg/gmr;

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v3, v3, Lg/gmr;->al:Lg/dxb;

    const-string v4, "unset"

    invoke-virtual {v3, v4}, Lg/dxb;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v11, v0

    move-object v8, v4

    :goto_2
    invoke-virtual {v2}, Lg/cyg;->as()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v2}, Lg/cyg;->au()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v16, Lg/cmd;

    move-object/from16 v12, p1

    move-wide/from16 v9, p2

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v12}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v13

    invoke-virtual {v13}, Lg/acn;->_e()V

    iget-object v0, v13, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v13}, Lg/os;->zza()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/cyg;->an()Lg/efm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v7, v2}, Lg/cqu;->b(Lg/cmd;Landroid/os/Parcel;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    array-length v2, v3

    const/high16 v4, 0x20000

    if-le v2, v4, :cond_6

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v2, "User property too long for local database. Sending directly to service"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5, v3}, Lg/efm;->l(I[B)Z

    move-result v0

    move v15, v0

    :goto_3
    invoke-virtual {v13, v5}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v14

    new-instance v12, Lg/edg;

    const/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lg/edg;-><init>(Lg/dbb;Lg/afh;ZLg/exk;I)V

    invoke-virtual {v13, v12}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final az(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 12

    iget-object v2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    if-nez p1, :cond_0

    const-string v4, "app"

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x18

    if-eqz p4, :cond_1

    iget-object v7, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v7, p2}, Lg/dkq;->bp(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_1
    iget-object v7, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v8, "user property"

    invoke-virtual {v7, v8, p2}, Lg/dkq;->ba(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x6

    if-nez v9, :cond_2

    :goto_1
    const/4 v7, 0x6

    goto :goto_2

    :cond_2
    sget-object v9, Lg/byh;->l:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v11, p2}, Lg/dkq;->bn(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v7, 0xf

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v9, Lg/cyg;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6, v8, p2}, Lg/dkq;->aw(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lg/csp;->s:Lg/bgb;

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    iget-object v0, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static {v6, p2, v9}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    :cond_5
    iget-object v2, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v2, 0x0

    const-string v3, "_ev"

    move-object/from16 p5, v0

    move-object p2, v2

    move-object/from16 p4, v3

    move/from16 p6, v5

    move p3, v7

    move-object p1, v8

    invoke-static/range {p1 .. p6}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    move-object v7, v8

    if-eqz p3, :cond_b

    iget-object v8, v2, Lg/cyg;->m:Lg/dkq;

    iget-object v10, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v8}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v8, p3, p2}, Lg/dkq;->bw(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v10}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static {v6, p2, v9}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_7

    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_8
    invoke-static {v10}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v0, 0x0

    const-string v3, "_ev"

    move-object p2, v0

    move-object/from16 p5, v2

    move-object/from16 p4, v3

    move/from16 p6, v5

    move-object p1, v7

    move p3, v8

    invoke-static/range {p1 .. p6}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    invoke-static {v10}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v10, p3, p2}, Lg/dkq;->bj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v8, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    move-object v2, v4

    move-object v4, v0

    new-instance v0, Lg/sc;

    const/4 v7, 0x2

    move-object v1, p0

    move-object v3, p2

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lg/sc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v8, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    :cond_b
    iget-object v8, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/sc;

    const/4 v7, 0x2

    move-object v2, v4

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lg/sc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v8, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v1, p0, Lg/csp;->p:Lg/ffm;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v1, p4

    move-object v2, p5

    invoke-virtual/range {v0 .. v8}, Lg/csp;->an(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    return-void
.end method

.method public final x(JZ)V
    .locals 10

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lg/cyg;->n:Lg/cjv;

    invoke-static {v1}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v1}, Lg/acn;->_e()V

    iget-object v2, v1, Lg/cjv;->k:Lg/fcw;

    iget-object v3, v2, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v3, Lg/rd;

    invoke-virtual {v3}, Lg/emo;->i()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lg/fcw;->d:J

    iput-wide v3, v2, Lg/fcw;->e:J

    invoke-static {}, Lg/eur;->c()V

    iget-object v2, v0, Lg/cyg;->e:Lg/dsd;

    sget-object v5, Lg/gad;->az:Lg/tw;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v5

    invoke-virtual {v5}, Lg/fqh;->w()V

    :cond_0
    invoke-virtual {v0}, Lg/cyg;->as()Z

    move-result v5

    iget-object v7, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v8, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v8, Lg/cyg;

    iget-object v9, v7, Lg/gmr;->ap:Lg/fou;

    invoke-virtual {v9, p1, p2}, Lg/fou;->g(J)V

    iget-object p1, v8, Lg/cyg;->b:Lg/gmr;

    iget-object p2, v8, Lg/cyg;->e:Lg/dsd;

    invoke-static {p1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object p1, p1, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {p1}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v7, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {p1, v6}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lg/blm;->a:Lg/blm;

    iget-object v8, p1, Lg/blm;->b:Lg/dvf;

    invoke-interface {v8}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/dkg;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lg/gad;->j:Lg/tw;

    invoke-virtual {p2, v6, v8}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v7, Lg/gmr;->k:Lg/fou;

    invoke-virtual {v9, v3, v4}, Lg/fou;->g(J)V

    :cond_2
    invoke-virtual {p2}, Lg/dsd;->m()Z

    move-result p2

    if-nez p2, :cond_3

    xor-int/lit8 p2, v5, 0x1

    invoke-virtual {v7, p2}, Lg/gmr;->at(Z)V

    :cond_3
    iget-object p2, v7, Lg/gmr;->p:Lg/dxb;

    invoke-virtual {p2, v6}, Lg/dxb;->l(Ljava/lang/String;)V

    iget-object p2, v7, Lg/gmr;->j:Lg/fou;

    invoke-virtual {p2, v3, v4}, Lg/fou;->g(J)V

    iget-object p2, v7, Lg/gmr;->w:Lg/dpa;

    invoke-virtual {p2, v6}, Lg/dpa;->r(Landroid/os/Bundle;)V

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object p2

    invoke-virtual {p2}, Lg/acn;->_e()V

    iget-object p3, p2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p3, Lg/cyg;

    invoke-virtual {p2}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lg/cyg;->an()Lg/efm;

    move-result-object p3

    invoke-virtual {p3}, Lg/efm;->j()V

    new-instance p3, Lg/bqs;

    const/4 v3, 0x0

    invoke-direct {p3, p2, v0, v3}, Lg/bqs;-><init>(Lg/dbb;Lg/afh;I)V

    invoke-virtual {p2, p3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p1, Lg/blm;->b:Lg/dvf;

    invoke-interface {p1}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dkg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v8}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lg/cyg;->aj(Lg/os;)V

    iget-object p1, v1, Lg/cjv;->j:Lg/bzv;

    invoke-virtual {p1}, Lg/bzv;->zza()V

    :cond_5
    xor-int/lit8 p1, v5, 0x1

    iput-boolean p1, p0, Lg/csp;->h:Z

    return-void
.end method
