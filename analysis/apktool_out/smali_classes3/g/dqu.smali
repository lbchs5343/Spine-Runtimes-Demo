.class public final Lg/dqu;
.super Lg/aiq;
.source "SourceFile"

# interfaces
.implements Lg/auz;


# instance fields
.field public final b:Lg/tl;

.field public final g:Lg/tl;

.field public final h:Lg/tl;

.field public final j:Lg/tl;

.field public final k:Lg/bgb;

.field public final o:Lg/arr;

.field public final p:Lg/tl;

.field public final q:Lg/tl;

.field public final r:Lg/tl;

.field public final s:Lg/tl;

.field public final t:Lg/tl;


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/aiq;-><init>(Lg/bsz;)V

    new-instance p1, Lg/tl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->p:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->t:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->g:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->b:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->q:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->s:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->r:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->h:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dqu;->j:Lg/tl;

    new-instance p1, Lg/arr;

    invoke-direct {p1, p0}, Lg/arr;-><init>(Lg/dqu;)V

    iput-object p1, p0, Lg/dqu;->o:Lg/arr;

    new-instance p1, Lg/bgb;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lg/bgb;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/dqu;->k:Lg/bgb;

    return-void
.end method

.method public static final u(Lg/clv;)Lg/tl;
    .locals 3

    new-instance v0, Lg/tl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    invoke-virtual {p0}, Lg/clv;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/chj;

    invoke-virtual {v1}, Lg/chj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lg/chj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final al(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/dqu;->b:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final am(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ap(Ljava/lang/String;)Lg/clv;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lg/clv;->f()Z

    move-result p1

    return p1
.end method

.method public final an(Ljava/lang/String;Lg/gou;)V
    .locals 12

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lg/tl;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/bcp;-><init>(I)V

    new-instance v4, Lg/tl;

    invoke-direct {v4, v3}, Lg/bcp;-><init>(I)V

    new-instance v5, Lg/tl;

    invoke-direct {v5, v3}, Lg/bcp;-><init>(I)V

    invoke-static {}, Lg/fui;->c()V

    iget-object v6, v0, Lg/cyg;->e:Lg/dsd;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    const/4 v7, 0x0

    sget-object v8, Lg/gad;->c:Lg/tw;

    invoke-virtual {v6, v7, v8}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/clv;

    invoke-virtual {v6}, Lg/clv;->k()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hbo;

    invoke-virtual {v7}, Lg/hbo;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget-object v7, p2, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/clv;

    invoke-virtual {v7}, Lg/clv;->o()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, p2, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/clv;

    invoke-virtual {v7, v6}, Lg/clv;->g(I)Lg/bzt;

    move-result-object v7

    invoke-virtual {v7}, Lg/cys;->ah()Lg/crf;

    move-result-object v7

    check-cast v7, Lg/esq;

    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v7, v0, Lg/bgm;->g:Lg/dvb;

    const-string v8, "EventConfig contained null event name"

    invoke-virtual {v7, v8}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lg/dyd;->i:[Ljava/lang/String;

    sget-object v11, Lg/dyd;->q:[Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, v7, Lg/crf;->i:Z

    if-eqz v10, :cond_2

    invoke-virtual {v7}, Lg/crf;->p()V

    iput-boolean v3, v7, Lg/crf;->i:Z

    :cond_2
    iget-object v10, v7, Lg/crf;->k:Lg/cys;

    check-cast v10, Lg/bzt;

    invoke-static {v10, v9}, Lg/bzt;->b(Lg/bzt;Ljava/lang/String;)V

    iget-boolean v9, p2, Lg/crf;->i:Z

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v3, p2, Lg/crf;->i:Z

    :cond_3
    iget-object v9, p2, Lg/crf;->k:Lg/cys;

    check-cast v9, Lg/clv;

    invoke-virtual {v7}, Lg/crf;->o()Lg/cys;

    move-result-object v10

    check-cast v10, Lg/bzt;

    invoke-static {v9, v6, v10}, Lg/clv;->e(Lg/clv;ILg/bzt;)V

    :cond_4
    iget-object v9, v7, Lg/crf;->k:Lg/cys;

    check-cast v9, Lg/bzt;

    invoke-virtual {v9}, Lg/bzt;->h()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Lg/crf;->k:Lg/cys;

    check-cast v9, Lg/bzt;

    invoke-virtual {v9}, Lg/bzt;->c()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v9}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bzt;

    invoke-virtual {v8}, Lg/bzt;->i()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bzt;

    invoke-virtual {v8}, Lg/bzt;->f()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v8, v9}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bzt;

    invoke-virtual {v8}, Lg/bzt;->e()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bzt;

    invoke-virtual {v8}, Lg/bzt;->d()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_8

    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bzt;

    invoke-virtual {v8}, Lg/bzt;->d()I

    move-result v8

    const v9, 0xffff

    if-le v8, v9, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/bzt;

    invoke-virtual {v7}, Lg/bzt;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    :goto_2
    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v0, Lg/bgm;->g:Lg/dvb;

    invoke-virtual {v7}, Lg/esq;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/bzt;

    invoke-virtual {v7}, Lg/bzt;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v8, v9, v10, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, Lg/dqu;->t:Lg/tl;

    invoke-virtual {p2, p1, v1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/dqu;->g:Lg/tl;

    invoke-virtual {p2, p1, v2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/dqu;->b:Lg/tl;

    invoke-virtual {p2, p1, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/dqu;->j:Lg/tl;

    invoke-virtual {p2, p1, v5}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ao(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lg/aiq;->n()V

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v1, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lg/af;->a:Lg/bsz;

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v0, "remote_config"

    const-string v5, "config_last_modified_time"

    const-string v6, "e_tag"

    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "apps"

    const-string v7, "app_id=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v5, v3

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lg/cyg;->e:Lg/dsd;

    sget-object v5, Lg/gad;->ah:Lg/tw;

    invoke-virtual {v0, v3, v5}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    move-object v8, v3

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Lg/fpd;

    const/16 v9, 0x11

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_3
    move-object v3, v4

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_4
    :try_start_3
    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Error querying remote config. appId"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    :goto_5
    iget-object v0, p0, Lg/dqu;->h:Lg/tl;

    iget-object v2, p0, Lg/dqu;->r:Lg/tl;

    iget-object v4, p0, Lg/dqu;->s:Lg/tl;

    iget-object v6, p0, Lg/dqu;->p:Lg/tl;

    if-nez v5, :cond_5

    invoke-virtual {v6, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lg/dqu;->g:Lg/tl;

    invoke-virtual {v5, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v5, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lg/dqu;->b:Lg/tl;

    invoke-virtual {v5, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/dqu;->j:Lg/tl;

    invoke-virtual {v0, p1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    iget-object v3, v5, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {p0, p1, v3}, Lg/dqu;->x(Ljava/lang/String;[B)Lg/clv;

    move-result-object v3

    invoke-virtual {v3}, Lg/cys;->ah()Lg/crf;

    move-result-object v3

    check-cast v3, Lg/gou;

    invoke-virtual {p0, p1, v3}, Lg/dqu;->an(Ljava/lang/String;Lg/gou;)V

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v7

    check-cast v7, Lg/clv;

    invoke-static {v7}, Lg/dqu;->u(Lg/clv;)Lg/tl;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v6

    check-cast v6, Lg/clv;

    invoke-virtual {v1, p1, v6}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/clv;

    invoke-virtual {p0, p1, v1}, Lg/dqu;->as(Ljava/lang/String;Lg/clv;)V

    iget-object v1, v3, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/clv;

    invoke-virtual {v1}, Lg/clv;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_6
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1

    :cond_7
    return-void
.end method

.method public final ap(Ljava/lang/String;)Lg/clv;
    .locals 1

    invoke-virtual {p0}, Lg/aiq;->n()V

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/clv;

    return-object p1
.end method

.method public final aq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1}, Lg/aiq;->n()V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-virtual {v1, v2, v5}, Lg/dqu;->x(Ljava/lang/String;[B)Lg/clv;

    move-result-object v0

    invoke-virtual {v0}, Lg/cys;->ah()Lg/crf;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/gou;

    invoke-virtual {v1, v2, v6}, Lg/dqu;->an(Ljava/lang/String;Lg/gou;)V

    invoke-virtual {v6}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/clv;

    invoke-virtual {v1, v2, v0}, Lg/dqu;->as(Ljava/lang/String;Lg/clv;)V

    invoke-virtual {v6}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/clv;

    iget-object v7, v1, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v7, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/clv;

    invoke-virtual {v0}, Lg/clv;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lg/dqu;->s:Lg/tl;

    invoke-virtual {v8, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lg/dqu;->r:Lg/tl;

    invoke-virtual {v0, v2, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lg/dqu;->h:Lg/tl;

    invoke-virtual {v0, v2, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/clv;

    invoke-static {v0}, Lg/dqu;->u(Lg/clv;)Lg/tl;

    move-result-object v0

    iget-object v8, v1, Lg/dqu;->p:Lg/tl;

    invoke-virtual {v8, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lg/af;->a:Lg/bsz;

    iget-object v9, v8, Lg/bsz;->l:Lg/ggz;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v6, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/clv;

    invoke-virtual {v0}, Lg/clv;->q()Lg/cwe;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v11, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v12, "event_filters"

    const-string v13, "property_filters"

    iget-object v14, v9, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v14, Lg/cyg;

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_d

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ham;

    invoke-virtual {v5}, Lg/cys;->ah()Lg/crf;

    move-result-object v5

    check-cast v5, Lg/gmg;

    move-object/from16 v16, v7

    iget-object v7, v5, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/ham;

    invoke-virtual {v7}, Lg/ham;->i()I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_1
    iget-object v4, v5, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/ham;

    invoke-virtual {v4}, Lg/ham;->i()I

    move-result v4

    if-ge v7, v4, :cond_8

    iget-object v4, v5, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/ham;

    invoke-virtual {v4, v7}, Lg/ham;->d(I)Lg/azv;

    move-result-object v4

    invoke-virtual {v4}, Lg/cys;->ah()Lg/crf;

    move-result-object v4

    check-cast v4, Lg/hae;

    invoke-virtual {v4}, Lg/crf;->n()Lg/crf;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lg/hae;

    move-object/from16 v17, v8

    iget-object v8, v4, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/azv;

    invoke-virtual {v8}, Lg/azv;->n()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lg/dyd;->i:[Ljava/lang/String;

    move-object/from16 v18, v6

    sget-object v6, Lg/dyd;->q:[Ljava/lang/String;

    invoke-static {v8, v1, v6}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v8, v3, Lg/crf;->i:Z

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lg/crf;->i:Z

    :cond_0
    iget-object v8, v3, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/azv;

    invoke-static {v8, v1}, Lg/azv;->c(Lg/azv;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v6, v4, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/azv;

    invoke-virtual {v6}, Lg/azv;->h()I

    move-result v6

    if-ge v8, v6, :cond_5

    iget-object v6, v4, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/azv;

    invoke-virtual {v6, v8}, Lg/azv;->f(I)Lg/cth;

    move-result-object v6

    move/from16 v20, v1

    invoke-virtual {v6}, Lg/cth;->d()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v4

    sget-object v4, Lg/egh;->f:[Ljava/lang/String;

    move-object/from16 v22, v6

    sget-object v6, Lg/egh;->g:[Ljava/lang/String;

    invoke-static {v1, v4, v6}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {v22 .. v22}, Lg/cys;->ah()Lg/crf;

    move-result-object v4

    check-cast v4, Lg/ffa;

    iget-boolean v6, v4, Lg/crf;->i:Z

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lg/crf;->i:Z

    :cond_2
    iget-object v6, v4, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/cth;

    invoke-static {v6, v1}, Lg/cth;->c(Lg/cth;Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/cth;

    iget-boolean v4, v3, Lg/crf;->i:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lg/crf;->i:Z

    :cond_3
    iget-object v4, v3, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/azv;

    invoke-static {v4, v8, v1}, Lg/azv;->d(Lg/azv;ILg/cth;)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move/from16 v1, v20

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v21

    goto :goto_3

    :cond_5
    move/from16 v20, v1

    if-eqz v20, :cond_7

    iget-boolean v1, v5, Lg/crf;->i:Z

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lg/crf;->i:Z

    :cond_6
    iget-object v1, v5, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/ham;

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v3

    check-cast v3, Lg/azv;

    invoke-static {v1, v7, v3}, Lg/ham;->c(Lg/ham;ILg/azv;)V

    invoke-virtual {v5}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/ham;

    invoke-virtual {v10, v15, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v8, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v17, v8

    iget-object v1, v5, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/ham;

    invoke-virtual {v1}, Lg/ham;->e()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_5
    iget-object v3, v5, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/ham;

    invoke-virtual {v3}, Lg/ham;->e()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v3, v5, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/ham;

    invoke-virtual {v3, v1}, Lg/ham;->h(I)Lg/dfx;

    move-result-object v3

    invoke-virtual {v3}, Lg/dfx;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lg/byh;->l:[Ljava/lang/String;

    sget-object v7, Lg/byh;->a:[Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lg/cys;->ah()Lg/crf;

    move-result-object v3

    check-cast v3, Lg/dvp;

    iget-boolean v6, v3, Lg/crf;->i:Z

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lg/crf;->i:Z

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    iget-object v7, v3, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/dfx;

    invoke-static {v7, v4}, Lg/dfx;->c(Lg/dfx;Ljava/lang/String;)V

    iget-boolean v4, v5, Lg/crf;->i:Z

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Lg/crf;->p()V

    iput-boolean v6, v5, Lg/crf;->i:Z

    :cond_a
    iget-object v4, v5, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/ham;

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v3

    check-cast v3, Lg/dfx;

    invoke-static {v4, v1, v3}, Lg/ham;->b(Lg/ham;ILg/dfx;)V

    invoke-virtual {v5}, Lg/crf;->o()Lg/cys;

    move-result-object v3

    check-cast v3, Lg/ham;

    invoke-virtual {v10, v15, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1f

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ham;

    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/ham;->g()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v5, :cond_e

    :try_start_2
    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Audience with no ID. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v24, v1

    goto/16 :goto_1a

    :cond_e
    :try_start_3
    invoke-virtual {v0}, Lg/ham;->f()I

    move-result v5

    invoke-virtual {v0}, Lg/ham;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_10

    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/azv;

    invoke-virtual {v7}, Lg/azv;->g()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_10
    :try_start_5
    invoke-virtual {v0}, Lg/ham;->k()Lg/cwe;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_12

    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/dfx;

    invoke-virtual {v7}, Lg/dfx;->j()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    :cond_12
    :try_start_7
    invoke-virtual {v0}, Lg/ham;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v19, -0x1

    const-string v15, "data"

    const-string v4, "session_scoped"

    const-string v8, "filter_id"

    move-object/from16 v23, v0

    const-string v0, "audience_id"

    move-object/from16 v24, v1

    const-string v1, "app_id"

    if-eqz v7, :cond_18

    :try_start_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/azv;

    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v7}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lg/azv;->n()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_14

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7}, Lg/azv;->g()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Lg/azv;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_9
    move-object/from16 v3, p0

    goto/16 :goto_1a

    :cond_13
    const/16 v21, 0x0

    :goto_a
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v6, v7}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v25, v3

    move/from16 v26, v5

    goto/16 :goto_12

    :cond_14
    move-object/from16 v25, v3

    invoke-virtual {v7}, Lg/cir;->z()[B

    move-result-object v3

    move/from16 v26, v5

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v7}, Lg/azv;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7}, Lg/azv;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "event_name"

    invoke-virtual {v7}, Lg/azv;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lg/azv;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v7}, Lg/azv;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v5, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    cmp-long v3, v0, v19

    if-nez v3, :cond_17

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to insert event filter (got -1). appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_17
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move/from16 v5, v26

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_a
    iget-object v1, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Error storing event filter. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_18
    move-object/from16 v25, v3

    move/from16 v26, v5

    invoke-virtual/range {v23 .. v23}, Lg/ham;->k()Lg/cwe;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/dfx;

    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v5}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lg/dfx;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5}, Lg/dfx;->j()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v5}, Lg/dfx;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_e

    :cond_19
    const/4 v5, 0x0

    :goto_e
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1a
    invoke-virtual {v5}, Lg/cir;->z()[B

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5}, Lg/dfx;->j()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v5}, Lg/dfx;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_1b
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "property_name"

    move-object/from16 v27, v0

    invoke-virtual {v5}, Lg/dfx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lg/dfx;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v5}, Lg/dfx;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v19

    if-nez v0, :cond_1d

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to insert property filter (got -1). appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :cond_1d
    move-object/from16 v1, v23

    move-object/from16 v0, v27

    goto/16 :goto_d

    :goto_11
    :try_start_c
    iget-object v1, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Error storing property filter. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_12
    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v1, v24

    move-object/from16 v3, v25

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v24, v1

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v24, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ham;

    invoke-virtual {v3}, Lg/ham;->g()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lg/ham;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_14

    :cond_20
    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v9}, Lg/aiq;->n()V

    invoke-virtual {v9}, Lg/bgf;->_e()V

    invoke-virtual {v9}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "select count(1) from audience_filter_values where app_id=?"

    invoke-virtual {v9, v4, v3}, Lg/ggz;->ar(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v5, v14, Lg/cyg;->e:Lg/dsd;

    sget-object v6, Lg/gad;->be:Lg/tw;

    invoke-virtual {v5, v2, v6}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v5

    const/16 v6, 0x7d0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    cmp-long v8, v3, v6

    if-gtz v8, :cond_22

    goto :goto_16

    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_23
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "audience_filter_values"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    :catch_2
    move-exception v0

    iget-object v1, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Database error querying filters. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_24
    :goto_16
    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, v18

    :try_start_f
    iget-boolean v0, v1, Lg/crf;->i:Z

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v1, Lg/crf;->i:Z

    :cond_25
    iget-object v0, v1, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/clv;

    invoke-static {v0}, Lg/clv;->b(Lg/clv;)V

    invoke-virtual {v1}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/clv;

    invoke-virtual {v0}, Lg/cir;->z()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    move-object/from16 v3, p0

    :goto_17
    move-object/from16 v4, v17

    goto :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->g:Lg/dvb;

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p4

    goto :goto_17

    :goto_18
    iget-object v4, v4, Lg/bsz;->l:Lg/ggz;

    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v5, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/bgf;->_e()V

    invoke-virtual {v4}, Lg/aiq;->n()V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "remote_config"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "config_last_modified_time"

    move-object/from16 v7, p2

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v5, Lg/cyg;->e:Lg/dsd;

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    sget-object v7, Lg/gad;->ah:Lg/tw;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "e_tag"

    move-object/from16 v7, p3

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :try_start_10
    invoke-virtual {v4}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "apps"

    const-string v8, "app_id = ?"

    invoke-virtual {v0, v7, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_27

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v5, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Failed to update remote config (got 0). appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_19

    :catch_4
    move-exception v0

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v5, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Error storing remote config. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    :goto_19
    invoke-virtual {v1}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/clv;

    move-object/from16 v1, v16

    invoke-virtual {v1, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1a
    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final ar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v0}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v0}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lg/dkq;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/dqu;->g:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final as(Ljava/lang/String;Lg/clv;)V
    .locals 4

    invoke-virtual {p2}, Lg/clv;->j()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "EES programs found"

    invoke-virtual {p2}, Lg/clv;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/clv;->l()Lg/cwe;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/kh;

    :try_start_0
    new-instance v0, Lg/eqg;

    invoke-direct {v0}, Lg/eqg;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Lg/apd;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lg/apd;-><init>(Lg/dqu;Ljava/lang/String;I)V

    iget-object v3, v0, Lg/eqg;->b:Lg/duw;

    iget-object v3, v3, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, Lg/gyf;

    iget-object v3, v3, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/apd;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lg/apd;-><init>(Lg/dqu;Ljava/lang/String;I)V

    const-string v2, "internal.appMetadata"

    iget-object v3, v0, Lg/eqg;->b:Lg/duw;

    iget-object v3, v3, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, Lg/gyf;

    iget-object v3, v3, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/gzm;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lg/gzm;-><init>(ILjava/lang/Object;)V

    const-string v2, "internal.logger"

    iget-object v3, v0, Lg/eqg;->b:Lg/duw;

    iget-object v3, v3, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, Lg/gyf;

    iget-object v3, v3, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lg/eqg;->e(Lg/kh;)V

    iget-object v1, p0, Lg/dqu;->o:Lg/arr;

    invoke-virtual {v1, p1, v0}, Lg/ctw;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "EES program loaded for appId, activities"

    invoke-virtual {p2}, Lg/kh;->b()Lg/gjt;

    move-result-object v2

    invoke-virtual {v2}, Lg/gjt;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lg/kh;->b()Lg/gjt;

    move-result-object p2

    invoke-virtual {p2}, Lg/gjt;->c()Lg/cwe;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/evv;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Lg/evv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lg/egg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    iget-object p2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Failed to load EES program. appId"

    invoke-virtual {p2, p1, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lg/dqu;->o:Lg/arr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Lg/cuf;

    monitor-enter v0

    :try_start_1
    iget-object v1, p2, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p2, Lg/ctw;->h:I

    invoke-static {p1, v1}, Lg/ctw;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    iput v2, p2, Lg/ctw;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dqu;->p:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dqu;->j:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dqu;->s:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final x(Ljava/lang/String;[B)Lg/clv;
    .locals 8

    const-string v0, "Unable to merge remote config. appId"

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    if-nez p2, :cond_0

    invoke-static {}, Lg/clv;->d()Lg/clv;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lg/clv;->c()Lg/gou;

    move-result-object v2

    invoke-static {v2, p2}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object p2

    check-cast p2, Lg/gou;

    invoke-virtual {p2}, Lg/crf;->o()Lg/cys;

    move-result-object p2

    check-cast p2, Lg/clv;

    iget-object v2, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Parsed config. version, gmp_app_id"

    invoke-virtual {p2}, Lg/clv;->i()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lg/clv;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {p2}, Lg/clv;->p()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lg/clv;->r()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v2, v4, v3, v5}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lg/drq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lg/clv;->d()Lg/clv;

    move-result-object p1

    return-object p1

    :goto_2
    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lg/clv;->d()Lg/clv;

    move-result-object p1

    return-object p1
.end method
