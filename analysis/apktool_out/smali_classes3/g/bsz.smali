.class public final Lg/bsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gan;


# static fields
.field public static volatile a:Lg/bsz;


# instance fields
.field public aa:Z

.field public ab:Ljava/nio/channels/FileChannel;

.field public final ac:Ljava/util/HashMap;

.field public ad:I

.field public ae:Z

.field public af:Lg/dqg;

.field public b:Lg/fit;

.field public c:Ljava/util/ArrayList;

.field public d:Z

.field public final e:Lg/fit;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/nio/channels/FileLock;

.field public h:J

.field public i:Ljava/lang/String;

.field public final j:Lg/ahd;

.field public k:Lg/ein;

.field public l:Lg/ggz;

.field public final m:Lg/cyg;

.field public n:Lg/yh;

.field public o:Z

.field public p:Z

.field public q:Lg/gwx;

.field public final r:Lg/ecv;

.field public s:Lg/uk;

.field public t:I

.field public final u:Lg/dqu;

.field public v:J

.field public w:Ljava/util/ArrayList;

.field public final x:Ljava/util/HashMap;

.field public y:Lg/aaq;

.field public final z:Lg/fit;


# direct methods
.method public constructor <init>(Lg/gyf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bsz;->ae:Z

    new-instance v0, Lg/ecv;

    invoke-direct {v0, p0}, Lg/ecv;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/bsz;->r:Lg/ecv;

    iget-object v0, p1, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iput-object v0, p0, Lg/bsz;->m:Lg/cyg;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg/bsz;->v:J

    new-instance v0, Lg/ahd;

    invoke-direct {v0, p0}, Lg/af;-><init>(Lg/bsz;)V

    iput-object v0, p0, Lg/bsz;->j:Lg/ahd;

    new-instance v0, Lg/fit;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/fit;-><init>(Lg/bsz;I)V

    invoke-virtual {v0}, Lg/aiq;->m()V

    iput-object v0, p0, Lg/bsz;->e:Lg/fit;

    new-instance v0, Lg/fit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fit;-><init>(Lg/bsz;I)V

    invoke-virtual {v0}, Lg/aiq;->m()V

    iput-object v0, p0, Lg/bsz;->z:Lg/fit;

    new-instance v0, Lg/dqu;

    invoke-direct {v0, p0}, Lg/dqu;-><init>(Lg/bsz;)V

    invoke-virtual {v0}, Lg/aiq;->m()V

    iput-object v0, p0, Lg/bsz;->u:Lg/dqu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/bsz;->ac:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/bsz;->x:Ljava/util/HashMap;

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    new-instance v1, Lg/aku;

    invoke-direct {v1, p0, p1}, Lg/aku;-><init>(Lg/bsz;Lg/gyf;)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final ag(Lg/aiq;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lg/aiq;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ah(Lg/afh;)Z
    .locals 1

    iget-object v0, p0, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg/afh;->zzq:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ai(Landroid/content/Context;)Lg/bsz;
    .locals 2

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v0, Lg/bsz;->a:Lg/bsz;

    if-nez v0, :cond_1

    const-class v0, Lg/bsz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bsz;->a:Lg/bsz;

    if-nez v1, :cond_0

    new-instance v1, Lg/gyf;

    invoke-direct {v1, p0}, Lg/gyf;-><init>(Landroid/content/Context;)V

    new-instance p0, Lg/bsz;

    invoke-direct {p0, v1}, Lg/bsz;-><init>(Lg/gyf;)V

    sput-object p0, Lg/bsz;->a:Lg/bsz;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/bsz;->a:Lg/bsz;

    return-object p0
.end method

.method public static final aj(Lg/btw;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0}, Lg/kk;->q()Lg/cwe;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "_err"

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v3}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/asm;->i()Lg/bd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg/bd;->a(Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lg/bd;->c(J)V

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object p1

    check-cast p1, Lg/asm;

    invoke-static {}, Lg/asm;->i()Lg/bd;

    move-result-object v0

    const-string v2, "_ev"

    invoke-virtual {v0, v2}, Lg/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lg/bd;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object p2

    check-cast p2, Lg/asm;

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/crf;->p()V

    iput-boolean v1, p0, Lg/crf;->i:Z

    :cond_2
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {v0, p1}, Lg/kk;->d(Lg/kk;Lg/asm;)V

    iget-boolean p1, p0, Lg/crf;->i:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lg/crf;->p()V

    iput-boolean v1, p0, Lg/crf;->i:Z

    :cond_3
    iget-object p0, p0, Lg/crf;->k:Lg/cys;

    check-cast p0, Lg/kk;

    invoke-static {p0, p2}, Lg/kk;->d(Lg/kk;Lg/asm;)V

    return-void
.end method

.method public static final ak(Lg/btw;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0}, Lg/kk;->q()Lg/cwe;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/asm;

    invoke-virtual {v2}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lg/btw;->b(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final al(J)Z
    .locals 49

    move-object/from16 v1, p0

    const-string v0, "_npa"

    const-string v2, "1"

    const-string v3, "_ai"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/ggz;->ap()V

    :try_start_0
    new-instance v13, Lg/dkh;

    invoke-direct {v13, v1}, Lg/dkh;-><init>(Lg/bsz;)V

    iget-object v8, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v8}, Lg/bsz;->ag(Lg/aiq;)V

    iget-wide v11, v1, Lg/bsz;->v:J

    move-wide/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lg/ggz;->ao(JJLg/dkh;)V

    iget-object v7, v13, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-eqz v7, :cond_6d

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3d

    :cond_0
    iget-object v7, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v7, Lg/fzb;

    invoke-virtual {v7}, Lg/cys;->ah()Lg/crf;

    move-result-object v7

    check-cast v7, Lg/epg;

    iget-boolean v9, v7, Lg/crf;->i:Z

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lg/crf;->p()V

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_1
    iget-object v9, v7, Lg/crf;->k:Lg/cys;

    check-cast v9, Lg/fzb;

    invoke-static {v9}, Lg/fzb;->i(Lg/fzb;)V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget-object v8, v13, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "_et"

    const-string v4, "_fr"

    const-string v5, "_e"

    move/from16 v21, v12

    iget-object v12, v1, Lg/bsz;->m:Lg/cyg;

    move-object/from16 v22, v12

    iget-object v12, v1, Lg/bsz;->u:Lg/dqu;

    move-object/from16 v23, v14

    iget-object v14, v1, Lg/bsz;->e:Lg/fit;

    move-object/from16 v24, v6

    if-ge v11, v8, :cond_28

    :try_start_1
    iget-object v8, v13, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/kk;

    invoke-virtual {v8}, Lg/cys;->ah()Lg/crf;

    move-result-object v8

    check-cast v8, Lg/btw;

    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v6, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v14

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v6, v14}, Lg/dqu;->ar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "_err"

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->x()Lg/dvb;

    move-result-object v4

    const-string v5, "Dropping blocked raw event. appId"

    iget-object v6, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v9

    move/from16 v27, v11

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v5, v9}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v4, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v4, Lg/fzb;

    invoke-virtual {v4}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    const-string v5, "measurement.upload.blacklist_internal"

    invoke-virtual {v12, v4, v5}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v4, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v4, Lg/fzb;

    invoke-virtual {v4}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    const-string v5, "measurement.upload.blacklist_public"

    invoke-virtual {v12, v4, v5}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v4, v1, Lg/bsz;->r:Lg/ecv;

    iget-object v5, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v29

    const-string v31, "_ev"

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v30, 0xb

    move-object/from16 v28, v4

    invoke-static/range {v28 .. v33}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3e

    :cond_3
    :goto_1
    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v12, v21

    move-object/from16 v14, v23

    move/from16 v5, v27

    const/4 v3, -0x1

    goto/16 :goto_18

    :cond_4
    move/from16 v27, v11

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lg/dyd;->q:[Ljava/lang/String;

    move-object/from16 v28, v2

    sget-object v2, Lg/dyd;->i:[Ljava/lang/String;

    invoke-static {v3, v11, v2}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8, v3}, Lg/btw;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    const-string v6, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    iget-object v6, v8, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/kk;

    invoke-virtual {v6}, Lg/kk;->r()I

    move-result v6

    if-ge v2, v6, :cond_6

    const-string v6, "ad_platform"

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v11

    invoke-virtual {v11}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v6

    invoke-virtual {v6}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "admob"

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v11

    invoke-virtual {v11}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v6

    iget-object v6, v6, Lg/bgm;->h:Lg/dvb;

    const-string v11, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v6, v11}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v2, Lg/fzb;

    invoke-virtual {v2}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v2, v6}, Lg/dqu;->al(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "_c"

    if-nez v2, :cond_c

    :try_start_3
    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v29, v2

    const v2, 0x171c4

    move-object/from16 v30, v3

    const/4 v3, 0x2

    if-eq v12, v2, :cond_9

    const v2, 0x17331

    if-eq v12, v2, :cond_8

    const v2, 0x17333

    if-eq v12, v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "_ui"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const-string v2, "_ug"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    goto :goto_4

    :cond_9
    const-string v2, "_in"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v2, :cond_b

    const/4 v11, 0x1

    if-eq v2, v11, :cond_b

    if-eq v2, v3, :cond_b

    move/from16 v31, v15

    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_b
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_6

    :cond_c
    move/from16 v29, v2

    move-object/from16 v30, v3

    goto :goto_5

    :goto_6
    :try_start_4
    iget-object v12, v8, Lg/crf;->k:Lg/cys;

    check-cast v12, Lg/kk;

    invoke-virtual {v12}, Lg/kk;->r()I

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v31, v3

    const-string v3, "_r"

    if-ge v2, v12, :cond_f

    :try_start_5
    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v12

    invoke-virtual {v12}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v3

    invoke-virtual {v3}, Lg/cys;->ah()Lg/crf;

    move-result-object v3

    check-cast v3, Lg/bd;

    move/from16 v32, v11

    const-wide/16 v11, 0x1

    invoke-virtual {v3, v11, v12}, Lg/bd;->c(J)V

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v8, v2, v3}, Lg/btw;->d(ILg/asm;)V

    move/from16 v11, v32

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    move/from16 v32, v11

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v11

    invoke-virtual {v11}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v8, v2}, Lg/btw;->g(I)Lg/asm;

    move-result-object v3

    invoke-virtual {v3}, Lg/cys;->ah()Lg/crf;

    move-result-object v3

    check-cast v3, Lg/bd;

    const-wide/16 v11, 0x1

    invoke-virtual {v3, v11, v12}, Lg/bd;->c(J)V

    invoke-virtual {v3}, Lg/crf;->o()Lg/cys;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v8, v2, v3}, Lg/btw;->d(ILg/asm;)V

    move/from16 v3, v31

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    move/from16 v3, v31

    move/from16 v11, v32

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    move/from16 v32, v11

    if-nez v31, :cond_10

    if-eqz v29, :cond_10

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    const-string v11, "Marking event as conversion"

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v12

    move/from16 v31, v15

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/asm;->i()Lg/bd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lg/bd;->a(Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    invoke-virtual {v2, v11, v12}, Lg/bd;->c(J)V

    invoke-virtual {v8, v2}, Lg/btw;->e(Lg/bd;)V

    goto :goto_8

    :cond_10
    move/from16 v31, v15

    :goto_8
    if-nez v32, :cond_11

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    const-string v11, "Marking event as real-time"

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v12

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/asm;->i()Lg/bd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lg/bd;->a(Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    invoke-virtual {v2, v11, v12}, Lg/bd;->c(J)V

    invoke-virtual {v8, v2}, Lg/btw;->e(Lg/bd;)V

    :cond_11
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/bsz;->bs()J

    move-result-wide v33

    iget-object v11, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v11, Lg/fzb;

    invoke-virtual {v11}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v35

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x1

    const-wide/16 v36, 0x1

    const/16 v38, 0x0

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v42}, Lg/ggz;->v(JLjava/lang/String;JZZZZZ)Lg/fyy;

    move-result-object v2

    iget-wide v11, v2, Lg/fyy;->b:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v2

    iget-object v15, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v15, Lg/fzb;

    invoke-virtual {v15}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v32, v11

    sget-object v11, Lg/gad;->k:Lg/tw;

    invoke-virtual {v2, v15, v11}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v32, v11

    if-lez v2, :cond_12

    invoke-static {v8, v3}, Lg/bsz;->ak(Lg/btw;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/16 v17, 0x1

    :goto_9
    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/dkq;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v29, :cond_19

    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/bsz;->bs()J

    move-result-wide v33

    iget-object v3, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v3, Lg/fzb;

    invoke-virtual {v3}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v35

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v40, 0x1

    const/16 v42, 0x0

    const-wide/16 v36, 0x1

    const/16 v38, 0x0

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v42}, Lg/ggz;->v(JLjava/lang/String;JZZZZZ)Lg/fyy;

    move-result-object v2

    iget-wide v2, v2, Lg/fyy;->e:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v11

    iget-object v12, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v12, Lg/fzb;

    invoke-virtual {v12}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lg/gad;->s:Lg/tw;

    invoke-virtual {v11, v12, v15}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v15, v2, v11

    if-lez v15, :cond_19

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->x()Lg/dvb;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v11, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v11, Lg/fzb;

    invoke-virtual {v11}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_a
    iget-object v15, v8, Lg/crf;->k:Lg/cys;

    check-cast v15, Lg/kk;

    invoke-virtual {v15}, Lg/kk;->r()I

    move-result v15

    if-ge v3, v15, :cond_15

    invoke-virtual {v8, v3}, Lg/btw;->g(I)Lg/asm;

    move-result-object v15

    move-object/from16 v22, v2

    invoke-virtual {v15}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v15}, Lg/cys;->ah()Lg/crf;

    move-result-object v2

    check-cast v2, Lg/bd;

    move v12, v3

    goto :goto_b

    :cond_13
    invoke-virtual {v15}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v2, v22

    const/4 v11, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v2, v22

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    move-object/from16 v22, v2

    if-eqz v11, :cond_17

    if-eqz v22, :cond_16

    invoke-virtual {v8, v12}, Lg/btw;->b(I)V

    goto :goto_c

    :cond_16
    const/16 v22, 0x0

    :cond_17
    if-eqz v22, :cond_18

    invoke-virtual/range {v22 .. v22}, Lg/crf;->n()Lg/crf;

    move-result-object v2

    check-cast v2, Lg/bd;

    invoke-virtual {v2, v14}, Lg/bd;->a(Ljava/lang/String;)V

    const-wide/16 v14, 0xa

    invoke-virtual {v2, v14, v15}, Lg/bd;->c(J)V

    invoke-virtual {v2}, Lg/crf;->o()Lg/cys;

    move-result-object v2

    check-cast v2, Lg/asm;

    invoke-virtual {v8, v12, v2}, Lg/btw;->d(ILg/asm;)V

    goto :goto_c

    :cond_18
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v11, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v11, Lg/fzb;

    invoke-virtual {v11}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_c
    if-eqz v29, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v8, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/kk;

    invoke-virtual {v3}, Lg/kk;->q()Lg/cwe;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v15, "currency"

    move-object/from16 v29, v13

    const-string v13, "value"

    if-ge v3, v14, :cond_1c

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/asm;

    invoke-virtual {v14}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move v11, v3

    goto :goto_e

    :cond_1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/asm;

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    move v12, v3

    :cond_1b
    :goto_e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v29

    goto :goto_d

    :cond_1c
    const/4 v3, -0x1

    if-ne v11, v3, :cond_1d

    goto/16 :goto_12

    :cond_1d
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v3}, Lg/asm;->v()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v3}, Lg/asm;->r()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lg/btw;->b(I)V

    invoke-static {v8, v6}, Lg/bsz;->ak(Lg/btw;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v8, v2, v13}, Lg/bsz;->aj(Lg/btw;ILjava/lang/String;)V

    :goto_f
    const/4 v3, -0x1

    goto :goto_12

    :cond_1e
    const/4 v3, -0x1

    if-ne v12, v3, :cond_1f

    goto :goto_11

    :cond_1f
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/asm;

    invoke-virtual {v2}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_20

    const/4 v12, 0x0

    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_22

    invoke-virtual {v2, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_10

    :cond_20
    :goto_11
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->h:Lg/dvb;

    const-string v12, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v12}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lg/btw;->b(I)V

    invoke-static {v8, v6}, Lg/bsz;->ak(Lg/btw;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v8, v2, v15}, Lg/bsz;->aj(Lg/btw;ILjava/lang/String;)V

    goto :goto_12

    :cond_21
    move-object/from16 v29, v13

    goto :goto_f

    :cond_22
    :goto_12
    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_25

    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v8}, Lg/crf;->o()Lg/cys;

    move-result-object v2

    check-cast v2, Lg/kk;

    invoke-static {v4, v2}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v16, :cond_23

    invoke-virtual/range {v16 .. v16}, Lg/btw;->c()J

    move-result-wide v11

    invoke-virtual {v8}, Lg/btw;->c()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v5

    if-gtz v2, :cond_23

    invoke-virtual/range {v16 .. v16}, Lg/crf;->n()Lg/crf;

    move-result-object v2

    check-cast v2, Lg/btw;

    invoke-virtual {v1, v8, v2}, Lg/bsz;->av(Lg/btw;Lg/btw;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v7, v10, v2}, Lg/epg;->f(ILg/btw;)V

    move/from16 v15, v31

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_13
    move-object/from16 v13, v29

    goto/16 :goto_17

    :cond_23
    move-object v14, v8

    move/from16 v15, v21

    goto :goto_13

    :cond_24
    move/from16 v9, v31

    goto :goto_16

    :cond_25
    const-string v2, "_vs"

    invoke-virtual {v8}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v8}, Lg/crf;->o()Lg/cys;

    move-result-object v2

    check-cast v2, Lg/kk;

    invoke-static {v9, v2}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v23, :cond_27

    invoke-virtual/range {v23 .. v23}, Lg/btw;->c()J

    move-result-wide v11

    invoke-virtual {v8}, Lg/btw;->c()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v5

    if-gtz v2, :cond_27

    invoke-virtual/range {v23 .. v23}, Lg/crf;->n()Lg/crf;

    move-result-object v2

    check-cast v2, Lg/btw;

    invoke-virtual {v1, v2, v8}, Lg/bsz;->av(Lg/btw;Lg/btw;)Z

    move-result v4

    if-eqz v4, :cond_26

    move/from16 v9, v31

    invoke-virtual {v7, v9, v2}, Lg/epg;->f(ILg/btw;)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_14

    :cond_26
    move/from16 v9, v31

    move-object/from16 v16, v8

    move/from16 v10, v21

    move-object/from16 v14, v23

    :goto_14
    move v15, v9

    goto :goto_13

    :cond_27
    move/from16 v9, v31

    move-object/from16 v16, v8

    move v15, v9

    move/from16 v10, v21

    :goto_15
    move-object/from16 v14, v23

    goto :goto_13

    :goto_16
    move v15, v9

    goto :goto_15

    :goto_17
    iget-object v2, v13, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lg/crf;->o()Lg/cys;

    move-result-object v4

    check-cast v4, Lg/kk;

    move/from16 v5, v27

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v21, 0x1

    invoke-virtual {v7, v8}, Lg/epg;->ag(Lg/btw;)V

    :goto_18
    add-int/lit8 v11, v5, 0x1

    move-object/from16 v6, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    const-wide/16 v4, 0x1

    goto/16 :goto_0

    :cond_28
    move-object/from16 v26, v14

    const-wide/16 v2, 0x0

    move-wide v10, v2

    move/from16 v8, v21

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v8, :cond_2c

    iget-object v14, v7, Lg/crf;->k:Lg/cys;

    check-cast v14, Lg/fzb;

    invoke-virtual {v14, v6}, Lg/fzb;->df(I)Lg/kk;

    move-result-object v14

    invoke-virtual {v14}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v4, v14}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v15

    if-eqz v15, :cond_2a

    invoke-virtual {v7, v6}, Lg/epg;->aq(I)V

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_29
    :goto_1a
    const/16 v25, 0x1

    goto :goto_1c

    :cond_2a
    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v9, v14}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v14

    if-eqz v14, :cond_29

    invoke-virtual {v14}, Lg/asm;->v()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-virtual {v14}, Lg/asm;->n()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_1b

    :cond_2b
    const/4 v14, 0x0

    :goto_1b
    if-eqz v14, :cond_29

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v18, v15, v2

    if-lez v18, :cond_29

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v10, v14

    goto :goto_1a

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v7, v10, v11, v4}, Lg/bsz;->bq(Lg/epg;JZ)V

    iget-object v4, v7, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/fzb;

    invoke-virtual {v4}, Lg/fzb;->cd()Lg/cwe;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v6, "_se"

    if-eqz v5, :cond_2e

    :try_start_7
    const-string v5, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/kk;

    invoke-virtual {v8}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v4, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    const-string v4, "_sid"

    invoke-static {v4, v7}, Lg/fit;->q(Ljava/lang/String;Lg/epg;)I

    move-result v4

    if-ltz v4, :cond_2f

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v10, v11, v4}, Lg/bsz;->bq(Lg/epg;JZ)V

    goto :goto_1d

    :cond_2f
    invoke-static {v6, v7}, Lg/fit;->q(Ljava/lang/String;Lg/epg;)I

    move-result v4

    if-ltz v4, :cond_31

    iget-boolean v5, v7, Lg/crf;->i:Z

    if-eqz v5, :cond_30

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v5, 0x0

    iput-boolean v5, v7, Lg/crf;->i:Z

    :cond_30
    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-static {v5, v4}, Lg/fzb;->v(Lg/fzb;I)V

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->v()Lg/dvb;

    move-result-object v4

    const-string v5, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_31
    :goto_1d
    invoke-static/range {v26 .. v26}, Lg/bsz;->ag(Lg/aiq;)V

    move-object/from16 v4, v26

    iget-object v5, v4, Lg/af;->a:Lg/bsz;

    iget-object v6, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    invoke-virtual {v6}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v8

    invoke-virtual {v8}, Lg/bgm;->w()Lg/dvb;

    move-result-object v8

    const-string v9, "Checking account type status for ad personalization signals"

    invoke-virtual {v8, v9}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v8, v5, Lg/bsz;->u:Lg/dqu;

    invoke-static {v8}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lg/dqu;->am(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    iget-object v5, v5, Lg/bsz;->l:Lg/ggz;

    invoke-static {v5}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lg/cyo;->bg()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v6}, Lg/cyg;->ar()Lg/auk;

    move-result-object v5

    invoke-virtual {v5}, Lg/auk;->m()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v6}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v5

    iget-object v5, v5, Lg/bgm;->o:Lg/dvb;

    const-string v8, "Turning off ad personalization due to account type"

    invoke-virtual {v5, v8}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-static {}, Lg/ne;->b()Lg/eft;

    move-result-object v5

    invoke-virtual {v5, v0}, Lg/eft;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/cyg;->ar()Lg/auk;

    move-result-object v6

    invoke-virtual {v6}, Lg/auk;->j()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lg/eft;->b(J)V

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Lg/eft;->c(J)V

    invoke-virtual {v5}, Lg/crf;->o()Lg/cys;

    move-result-object v5

    check-cast v5, Lg/ne;

    const/4 v6, 0x0

    :goto_1e
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/fzb;

    invoke-virtual {v8}, Lg/fzb;->bs()I

    move-result v8

    if-ge v6, v8, :cond_34

    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/fzb;

    invoke-virtual {v8, v6}, Lg/fzb;->dc(I)Lg/ne;

    move-result-object v8

    invoke-virtual {v8}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_32

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_32
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0, v6, v5}, Lg/fzb;->b(Lg/fzb;ILg/ne;)V

    goto :goto_1f

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_34
    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_35

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_35
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0, v5}, Lg/fzb;->bc(Lg/fzb;Lg/ne;)V

    :cond_36
    :goto_1f
    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_37

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_37
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v0, v5, v6}, Lg/fzb;->bq(Lg/fzb;J)V

    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_38

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_38
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v0, v5, v6}, Lg/fzb;->at(Lg/fzb;J)V

    const/4 v0, 0x0

    :goto_20
    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->cs()I

    move-result v5

    if-ge v0, v5, :cond_3d

    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5, v0}, Lg/fzb;->df(I)Lg/kk;

    move-result-object v5

    invoke-virtual {v5}, Lg/kk;->k()J

    move-result-wide v8

    iget-object v6, v7, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->dz()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_3a

    invoke-virtual {v5}, Lg/kk;->k()J

    move-result-wide v8

    iget-boolean v6, v7, Lg/crf;->i:Z

    if-eqz v6, :cond_39

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v6, 0x0

    iput-boolean v6, v7, Lg/crf;->i:Z

    :cond_39
    iget-object v6, v7, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/fzb;

    invoke-static {v6, v8, v9}, Lg/fzb;->bq(Lg/fzb;J)V

    :cond_3a
    invoke-virtual {v5}, Lg/kk;->k()J

    move-result-wide v8

    iget-object v6, v7, Lg/crf;->k:Lg/cys;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->dy()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_3c

    invoke-virtual {v5}, Lg/kk;->k()J

    move-result-wide v5

    iget-boolean v8, v7, Lg/crf;->i:Z

    if-eqz v8, :cond_3b

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_3b
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/fzb;

    invoke-static {v8, v5, v6}, Lg/fzb;->at(Lg/fzb;J)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    invoke-virtual {v7}, Lg/epg;->aw()V

    invoke-virtual {v7}, Lg/epg;->bd()V

    iget-object v0, v1, Lg/bsz;->af:Lg/dqg;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v27

    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->cd()Lg/cwe;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    invoke-virtual {v7}, Lg/epg;->ax()Ljava/util/List;

    move-result-object v29

    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->dz()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    iget-object v5, v7, Lg/crf;->k:Lg/cys;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->dy()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v31}, Lg/dqg;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Lg/epg;->ap(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    iget-object v5, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v5, Lg/fzb;

    invoke-virtual {v5}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lg/dsd;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    :goto_21
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->cs()I

    move-result v0

    if-ge v9, v0, :cond_56

    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0, v9}, Lg/fzb;->df(I)Lg/kk;

    move-result-object v0

    invoke-virtual {v0}, Lg/cys;->ah()Lg/crf;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lg/btw;

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v0

    const-string v11, "_ep"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v11, "_efs"

    const-string v14, "_sr"

    if-eqz v0, :cond_44

    :try_start_8
    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    const-string v15, "_en"

    invoke-static {v15, v0}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/bwz;

    if-nez v15, :cond_3e

    iget-object v15, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v15}, Lg/bsz;->ag(Lg/aiq;)V

    move-wide/from16 v26, v2

    iget-object v2, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v2, Lg/fzb;

    invoke-virtual {v2}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v15, v2, v0}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v15

    if-eqz v15, :cond_3f

    invoke-virtual {v5, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3e
    move-wide/from16 v26, v2

    :cond_3f
    :goto_22
    if-eqz v15, :cond_43

    iget-object v0, v15, Lg/bwz;->g:Ljava/lang/Long;

    if-nez v0, :cond_43

    iget-object v0, v15, Lg/bwz;->i:Ljava/lang/Long;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v19, 0x1

    cmp-long v0, v2, v19

    if-lez v0, :cond_41

    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v15, Lg/bwz;->i:Ljava/lang/Long;

    invoke-static {v10, v14, v0}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    :cond_40
    const-wide/16 v19, 0x1

    :cond_41
    :goto_23
    iget-object v0, v15, Lg/bwz;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    move-object/from16 v2, v24

    invoke-static {v10, v11, v2}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_24

    :cond_42
    move-object/from16 v2, v24

    :goto_24
    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_43
    move-object/from16 v2, v24

    const-wide/16 v19, 0x1

    :goto_25
    invoke-virtual {v7, v9, v10}, Lg/epg;->f(ILg/btw;)V

    move-object/from16 v24, v2

    move-object/from16 v18, v4

    :goto_26
    move-object/from16 v16, v12

    goto/16 :goto_31

    :cond_44
    move-wide/from16 v26, v2

    move-object/from16 v2, v24

    const-wide/16 v19, 0x1

    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {v12, v3, v0}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v15, :cond_45

    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v18, v4

    goto :goto_28

    :catch_0
    move-exception v0

    :try_start_a
    iget-object v15, v12, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v15, Lg/cyg;

    invoke-virtual {v15}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v15

    invoke-virtual {v15}, Lg/bgm;->x()Lg/dvb;

    move-result-object v15

    move-object/from16 v16, v3

    const-string v3, "Unable to parse timezone offset. appId"

    move-object/from16 v18, v4

    invoke-static/range {v16 .. v16}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v15, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_27
    move-wide/from16 v15, v26

    goto :goto_28

    :cond_45
    move-object/from16 v18, v4

    goto :goto_27

    :goto_28
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    invoke-virtual {v10}, Lg/btw;->c()J

    move-result-wide v3

    const-wide/32 v23, 0xea60

    mul-long v15, v15, v23

    add-long/2addr v3, v15

    const-wide/32 v23, 0x5265c00

    div-long v3, v3, v23

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    move-wide/from16 v28, v3

    const-string v3, "_dbg"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v0}, Lg/kk;->q()Lg/cwe;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/asm;

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual/range {v21 .. v21}, Lg/asm;->n()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_29

    :cond_47
    const/4 v0, 0x1

    goto :goto_2a

    :cond_48
    :goto_29
    invoke-static {v12}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Lg/dqu;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2a
    if-gtz v0, :cond_49

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->x()Lg/dvb;

    move-result-object v3

    const-string v4, "Sample rate must be positive. event, rate"

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v11, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9, v10}, Lg/epg;->f(ILg/btw;)V

    move-object/from16 v24, v2

    goto/16 :goto_26

    :cond_49
    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bwz;

    if-nez v3, :cond_4b

    iget-object v3, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v4, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v4, Lg/fzb;

    invoke-virtual {v4}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v30, v15

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v4, v15}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v3

    if-nez v3, :cond_4a

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->x()Lg/dvb;

    move-result-object v3

    const-string v4, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v15, Lg/fzb;

    invoke-virtual {v15}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v15, v4, v12}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v32, Lg/bwz;

    iget-object v3, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v3, Lg/fzb;

    invoke-virtual {v3}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Lg/btw;->c()J

    move-result-wide v41

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    const-wide/16 v39, 0x1

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-direct/range {v32 .. v48}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v3, v32

    goto :goto_2c

    :cond_4a
    :goto_2b
    move-object/from16 v16, v12

    goto :goto_2c

    :cond_4b
    move-wide/from16 v30, v15

    goto :goto_2b

    :goto_2c
    invoke-static/range {v18 .. v18}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v4

    check-cast v4, Lg/kk;

    const-string v12, "_eid"

    invoke-static {v12, v4}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_4c

    const/4 v12, 0x1

    :goto_2d
    const/4 v15, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v12, 0x0

    goto :goto_2d

    :goto_2e
    if-ne v0, v15, :cond_4f

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_4e

    iget-object v0, v3, Lg/bwz;->g:Ljava/lang/Long;

    if-nez v0, :cond_4d

    iget-object v0, v3, Lg/bwz;->i:Ljava/lang/Long;

    if-nez v0, :cond_4d

    iget-object v0, v3, Lg/bwz;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_4e

    :cond_4d
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4}, Lg/bwz;->l(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lg/bwz;

    move-result-object v0

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    invoke-virtual {v7, v9, v10}, Lg/epg;->f(ILg/btw;)V

    move-object/from16 v24, v2

    goto/16 :goto_31

    :cond_4f
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_51

    invoke-static/range {v18 .. v18}, Lg/bsz;->ag(Lg/aiq;)V

    move v15, v12

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v10, v14, v0}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v4

    check-cast v4, Lg/kk;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_50

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v4}, Lg/bwz;->l(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lg/bwz;

    move-result-object v3

    :cond_50
    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lg/btw;->c()J

    move-result-wide v41

    new-instance v30, Lg/bwz;

    iget-object v4, v3, Lg/bwz;->e:Ljava/lang/String;

    iget-object v11, v3, Lg/bwz;->h:Ljava/lang/String;

    iget-wide v14, v3, Lg/bwz;->j:J

    move-object/from16 v32, v11

    iget-wide v11, v3, Lg/bwz;->c:J

    move-wide/from16 v35, v11

    iget-wide v11, v3, Lg/bwz;->d:J

    move-wide/from16 v37, v11

    iget-wide v11, v3, Lg/bwz;->f:J

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v31, v4

    iget-object v4, v3, Lg/bwz;->g:Ljava/lang/Long;

    move-object/from16 v44, v4

    iget-object v4, v3, Lg/bwz;->i:Ljava/lang/Long;

    iget-object v3, v3, Lg/bwz;->b:Ljava/lang/Boolean;

    move-object/from16 v46, v3

    move-object/from16 v45, v4

    move-wide/from16 v39, v11

    move-wide/from16 v33, v14

    invoke-direct/range {v30 .. v46}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v3, v30

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v2

    goto/16 :goto_30

    :cond_51
    move v15, v12

    iget-object v12, v3, Lg/bwz;->a:Ljava/lang/Long;

    if-eqz v12, :cond_52

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    goto :goto_2f

    :cond_52
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    invoke-virtual {v10}, Lg/btw;->f()J

    move-result-wide v32

    add-long v30, v30, v32

    div-long v23, v30, v23

    :goto_2f
    cmp-long v12, v23, v28

    if-eqz v12, :cond_54

    invoke-static/range {v18 .. v18}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v10, v11, v2}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v18 .. v18}, Lg/bsz;->ag(Lg/aiq;)V

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v10, v14, v0}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v10}, Lg/crf;->o()Lg/cys;

    move-result-object v4

    check-cast v4, Lg/kk;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_53

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v0, v4}, Lg/bwz;->l(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lg/bwz;

    move-result-object v3

    :cond_53
    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lg/btw;->c()J

    move-result-wide v41

    new-instance v30, Lg/bwz;

    iget-object v4, v3, Lg/bwz;->e:Ljava/lang/String;

    iget-object v11, v3, Lg/bwz;->h:Ljava/lang/String;

    iget-wide v14, v3, Lg/bwz;->j:J

    move-object/from16 v32, v11

    iget-wide v11, v3, Lg/bwz;->c:J

    move-wide/from16 v35, v11

    iget-wide v11, v3, Lg/bwz;->d:J

    move-wide/from16 v37, v11

    iget-wide v11, v3, Lg/bwz;->f:J

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v24, v2

    iget-object v2, v3, Lg/bwz;->g:Ljava/lang/Long;

    move-object/from16 v44, v2

    iget-object v2, v3, Lg/bwz;->i:Ljava/lang/Long;

    iget-object v3, v3, Lg/bwz;->b:Ljava/lang/Boolean;

    move-object/from16 v45, v2

    move-object/from16 v46, v3

    move-object/from16 v31, v4

    move-wide/from16 v39, v11

    move-wide/from16 v33, v14

    invoke-direct/range {v30 .. v46}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_54
    move-object/from16 v24, v2

    if-eqz v15, :cond_55

    invoke-virtual {v10}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v11}, Lg/bwz;->l(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lg/bwz;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_30
    invoke-virtual {v7, v9, v10}, Lg/epg;->f(ILg/btw;)V

    :goto_31
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v16

    move-object/from16 v4, v18

    move-wide/from16 v2, v26

    goto/16 :goto_21

    :cond_56
    move-wide/from16 v26, v2

    move-object/from16 v16, v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v7, Lg/crf;->k:Lg/cys;

    check-cast v2, Lg/fzb;

    invoke-virtual {v2}, Lg/fzb;->cs()I

    move-result v2

    if-ge v0, v2, :cond_58

    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_57

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_57
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0}, Lg/fzb;->i(Lg/fzb;)V

    invoke-virtual {v7, v6}, Lg/epg;->x(Ljava/util/ArrayList;)V

    :cond_58
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bwz;

    invoke-virtual {v3, v2}, Lg/ggz;->bi(Lg/bwz;)V

    goto :goto_32

    :cond_59
    move-wide/from16 v26, v2

    move-object/from16 v16, v12

    :cond_5a
    iget-object v0, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v2}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v0

    if-nez v0, :cond_5b

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v4, Lg/fzb;

    invoke-virtual {v4}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_5b
    iget-object v3, v7, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-virtual {v3}, Lg/fzb;->cs()I

    move-result v3

    if-lez v3, :cond_60

    iget-object v3, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v3, v3, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-wide v3, v0, Lg/cyo;->u:J

    cmp-long v5, v3, v26

    if-eqz v5, :cond_5c

    invoke-virtual {v7, v3, v4}, Lg/epg;->au(J)V

    goto :goto_33

    :cond_5c
    invoke-virtual {v7}, Lg/epg;->aa()V

    :goto_33
    iget-object v5, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v5, v5, Lg/cyg;->j:Lg/fth;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v5}, Lg/fth;->_e()V

    iget-wide v5, v0, Lg/cyo;->b:J

    cmp-long v8, v5, v26

    if-nez v8, :cond_5d

    goto :goto_34

    :cond_5d
    move-wide v3, v5

    :goto_34
    cmp-long v5, v3, v26

    if-eqz v5, :cond_5e

    invoke-virtual {v7, v3, v4}, Lg/epg;->r(J)V

    goto :goto_35

    :cond_5e
    invoke-virtual {v7}, Lg/epg;->s()V

    :goto_35
    invoke-virtual {v0}, Lg/cyo;->ar()V

    iget-object v3, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v3, v3, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-wide v3, v0, Lg/cyo;->ad:J

    long-to-int v4, v3

    invoke-virtual {v7, v4}, Lg/epg;->bc(I)V

    iget-object v3, v7, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-virtual {v3}, Lg/fzb;->dz()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lg/cyo;->aw(J)V

    iget-object v3, v7, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-virtual {v3}, Lg/fzb;->dy()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lg/cyo;->as(J)V

    invoke-virtual {v0}, Lg/cyo;->bl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v7, v3}, Lg/epg;->ab(Ljava/lang/String;)V

    goto :goto_36

    :cond_5f
    invoke-virtual {v7}, Lg/epg;->ay()V

    :goto_36
    iget-object v3, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v3, v0}, Lg/ggz;->ax(Lg/cyo;)V

    :cond_60
    :goto_37
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->cs()I

    move-result v0

    if-lez v0, :cond_69

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-virtual {v3, v0}, Lg/dqu;->ap(Ljava/lang/String;)Lg/clv;

    move-result-object v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lg/clv;->i()Z

    move-result v5

    if-nez v5, :cond_61

    goto :goto_38

    :cond_61
    invoke-virtual {v0}, Lg/clv;->h()J

    move-result-wide v5

    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_62

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_62
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0, v5, v6}, Lg/fzb;->n(Lg/fzb;J)V

    goto :goto_39

    :cond_63
    :goto_38
    iget-object v0, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->dk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, v7, Lg/crf;->i:Z

    if-eqz v0, :cond_64

    invoke-virtual {v7}, Lg/crf;->p()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lg/crf;->i:Z

    :cond_64
    iget-object v0, v7, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0, v3, v4}, Lg/fzb;->n(Lg/fzb;J)V

    goto :goto_39

    :cond_65
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v13, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v6, Lg/fzb;

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_39
    iget-object v5, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v5}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/fzb;

    invoke-virtual {v5}, Lg/bgf;->_e()V

    invoke-virtual {v5}, Lg/aiq;->n()V

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/fzb;->de()Z

    move-result v0

    invoke-static {v0}, Lg/ckd;->t(Z)V

    invoke-virtual {v5}, Lg/ggz;->at()V

    iget-object v0, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Lg/fzb;->dy()J

    move-result-wide v9

    iget-object v0, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/gad;->ab:Lg/tw;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v7, v11

    cmp-long v14, v9, v11

    if-ltz v14, :cond_66

    invoke-virtual {v6}, Lg/fzb;->dy()J

    move-result-wide v9

    iget-object v11, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v11, Lg/cyg;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v0, v9, v11

    if-lez v0, :cond_67

    :cond_66
    iget-object v0, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v9, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6}, Lg/fzb;->dy()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v9, v10, v7, v8}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    invoke-virtual {v6}, Lg/cir;->z()[B

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v7, v5, Lg/af;->a:Lg/bsz;

    iget-object v7, v7, Lg/bsz;->e:Lg/fit;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7, v0}, Lg/fit;->ay([B)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v7, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v7, Lg/cyg;

    invoke-virtual {v7}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v7

    invoke-virtual {v7}, Lg/bgm;->w()Lg/dvb;

    move-result-object v7

    const-string v8, "Saving bundle, size"

    array-length v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "bundle_end_timestamp"

    invoke-virtual {v6}, Lg/fzb;->dy()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "has_realtime"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6}, Lg/fzb;->di()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "retry_count"

    invoke-virtual {v6}, Lg/fzb;->dh()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_68
    :try_start_d
    invoke-virtual {v5}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "queue"

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_69

    iget-object v0, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v3, "Failed to insert bundle (got -1). appId"

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3a

    :catch_1
    move-exception v0

    :try_start_e
    iget-object v3, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->v()Lg/dvb;

    move-result-object v3

    const-string v4, "Error storing bundle. appId"

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    :catch_2
    move-exception v0

    iget-object v3, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->v()Lg/dvb;

    move-result-object v3

    const-string v4, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v6}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_69
    :goto_3a
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, v13, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_6b

    if-eqz v8, :cond_6a

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_6b
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_6c

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v5, "Deleted fewer rows from raw events table than expected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6c
    iget-object v3, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v3}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3c

    :catch_3
    move-exception v0

    :try_start_10
    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->v()Lg/dvb;

    move-result-object v3

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v3, v2, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3c
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    const/16 v25, 0x1

    return v25

    :cond_6d
    :goto_3d
    :try_start_11
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    const/4 v8, 0x0

    return v8

    :goto_3e
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/ggz;->an()V

    throw v0
.end method

.method public final am(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/ggz;->ap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1, p1}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_2

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    const/16 p2, 0x130

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p3, :cond_1

    const/4 v3, 0x1

    :goto_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->g:Lg/dvb;

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    goto/16 :goto_c

    :cond_3
    const/16 v5, 0x194

    iget-object v6, p0, Lg/bsz;->u:Lg/dqu;

    const/4 v7, 0x0

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p4

    check-cast p4, Lg/czz;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lg/cyo;->ba(J)V

    iget-object p4, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p4}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p4, v1}, Lg/ggz;->ax(Lg/cyo;)V

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p4

    iget-object p4, p4, Lg/bgm;->c:Lg/dvb;

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1, p5, p3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6}, Lg/bgf;->_e()V

    iget-object p3, v6, Lg/dqu;->r:Lg/tl;

    invoke-virtual {p3, p1, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/bsz;->y:Lg/aaq;

    iget-object p1, p1, Lg/aaq;->g:Lg/fou;

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p3

    check-cast p3, Lg/czz;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lg/fou;->g(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lg/bsz;->y:Lg/aaq;

    iget-object p1, p1, Lg/aaq;->c:Lg/fou;

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p2

    check-cast p2, Lg/czz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lg/fou;->g(J)V

    :cond_6
    invoke-virtual {p0}, Lg/bsz;->ar()V

    goto/16 :goto_b

    :cond_7
    :goto_3
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_4

    :cond_8
    move-object p3, v7

    :goto_4
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object p3, v7

    :goto_5
    invoke-static {}, Lg/fui;->c()V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v3

    sget-object v8, Lg/gad;->ah:Lg/tw;

    invoke-virtual {v3, v7, v8}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p5, :cond_a

    const-string v3, "ETag"

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object p5, v7

    :goto_6
    if-eqz p5, :cond_b

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object p5, v7

    :goto_7
    if-eq p2, v5, :cond_d

    if-ne p2, v4, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6, p1, p3, p5, p4}, Lg/dqu;->aq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_9

    :cond_d
    :goto_8
    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6, p1}, Lg/dqu;->ap(Ljava/lang/String;)Lg/clv;

    move-result-object p3

    if-nez p3, :cond_e

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6, p1, v7, v7, v7}, Lg/dqu;->aq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_e
    :goto_9
    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p3

    check-cast p3, Lg/czz;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lg/cyo;->bn(J)V

    iget-object p3, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p3, v1}, Lg/ggz;->ax(Lg/cyo;)V

    if-ne p2, v5, :cond_f

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->h:Lg/dvb;

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    iget-object p1, p0, Lg/bsz;->z:Lg/fit;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/fit;->aw()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lg/bsz;->bl()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lg/bsz;->bf()V

    goto :goto_b

    :cond_10
    invoke-virtual {p0}, Lg/bsz;->ar()V

    :goto_b
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->av()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->an()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v0, p0, Lg/bsz;->p:Z

    invoke-virtual {p0}, Lg/bsz;->bd()V

    return-void

    :goto_c
    :try_start_4
    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_d
    iput-boolean v0, p0, Lg/bsz;->p:Z

    invoke-virtual {p0}, Lg/bsz;->bd()V

    throw p1
.end method

.method public final an(Lg/cmd;Lg/afh;)V
    .locals 7

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    invoke-static {p2}, Lg/bsz;->ah(Lg/afh;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lg/afh;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :cond_1
    const-string v0, "_npa"

    iget-object v1, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lg/afh;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->o:Lg/dvb;

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    new-instance v1, Lg/cmd;

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p1

    check-cast p1, Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p2, Lg/afh;->zzr:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x1

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "auto"

    const-string v2, "_npa"

    invoke-direct/range {v1 .. v6}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    iget-object v1, p0, Lg/bsz;->m:Lg/cyg;

    iget-object v2, v1, Lg/cyg;->af:Lg/ebl;

    iget-object v3, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Removing user property"

    invoke-virtual {v0, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ap()V

    :try_start_0
    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    const-string v0, "_id"

    iget-object v2, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    const-string v3, "_lair"

    invoke-virtual {v0, v2, v3}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object p2, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->av()V

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->o:Lg/dvb;

    const-string v0, "User property removed"

    iget-object v1, v1, Lg/cyg;->af:Lg/ebl;

    iget-object p1, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->an()V

    return-void

    :goto_2
    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    throw p1
.end method

.method public final ao()Lg/ggz;
    .locals 1

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    return-object v0
.end method

.method public final ap()Lg/dkq;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    return-object v0
.end method

.method public final aq(Lg/cmd;Lg/afh;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v4

    invoke-virtual {v4}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    invoke-static {v2}, Lg/bsz;->ah(Lg/afh;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v4, v2, Lg/afh;->zzh:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :cond_1
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v4

    iget-object v5, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg/dkq;->bp(Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x1

    const/16 v5, 0x18

    iget-object v9, v1, Lg/bsz;->r:Lg/ecv;

    const/4 v6, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v3, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    invoke-static {v5, v3, v4}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v0, Lg/cmd;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move v11, v6

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v7, v2, Lg/afh;->zza:Ljava/lang/String;

    move-object v6, v9

    const-string v9, "_ev"

    invoke-static/range {v6 .. v11}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v7

    iget-object v8, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lg/dkq;->bw(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v3, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    invoke-static {v5, v3, v4}, Lg/dkq;->s(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move v14, v6

    :goto_2
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v10, v2, Lg/afh;->zza:Ljava/lang/String;

    const-string v12, "_ev"

    invoke-static/range {v9 .. v14}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v4

    iget-object v5, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lg/dkq;->bj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    :goto_3
    return-void

    :cond_7
    const-string v4, "_sid"

    iget-object v5, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-wide v12, v0, Lg/cmd;->zzc:J

    iget-object v15, v0, Lg/cmd;->zzf:Ljava/lang/String;

    iget-object v4, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v5, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v5}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v6, "_sno"

    invoke-virtual {v5, v4, v6}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, v5, Lg/ffu;->b:Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_8

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v6

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    const-string v7, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v5, v5, Lg/ffu;->b:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object v5, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v5}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v6, "_s"

    invoke-virtual {v5, v4, v6}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v4, v4, Lg/bwz;->j:J

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v6

    iget-object v6, v6, Lg/bgm;->c:Lg/dvb;

    const-string v7, "Backfill the session number. Last used session number"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-wide/16 v4, 0x0

    :goto_4
    new-instance v10, Lg/cmd;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "_sno"

    invoke-direct/range {v10 .. v15}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    :cond_b
    new-instance v10, Lg/ffu;

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v11}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v12, v0, Lg/cmd;->zzf:Ljava/lang/String;

    invoke-static {v12}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v13, v0, Lg/cmd;->zzb:Ljava/lang/String;

    iget-wide v14, v0, Lg/cmd;->zzc:J

    invoke-direct/range {v10 .. v16}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    iget-object v5, v1, Lg/bsz;->m:Lg/cyg;

    iget-object v6, v5, Lg/cyg;->af:Lg/ebl;

    iget-object v7, v10, Lg/ffu;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Setting user property"

    invoke-virtual {v4, v6, v8, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ap()V

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v10, Lg/ffu;->b:Ljava/lang/Object;

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v6, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lg/ffu;->b:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, v2, Lg/afh;->zza:Ljava/lang/String;

    const-string v6, "_lair"

    invoke-virtual {v0, v3, v6}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {v1, v2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v10}, Lg/ggz;->bc(Lg/ffu;)Z

    move-result v0

    iget-object v3, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v3}, Lg/ggz;->av()V

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v5, v5, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v5, v7}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v10, v2, Lg/afh;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :goto_6
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/ggz;->an()V

    throw v0
.end method

.method public final ar()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/bsz;->e:Lg/fit;

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    invoke-virtual {v2}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    iget-wide v2, v1, Lg/bsz;->h:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lg/bsz;->h:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v6, v2

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->bo()Lg/gwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/gwx;->g()V

    iget-object v0, v1, Lg/bsz;->s:Lg/uk;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/uk;->zza()V

    return-void

    :cond_0
    iput-wide v4, v1, Lg/bsz;->h:J

    :cond_1
    iget-object v2, v1, Lg/bsz;->m:Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->au()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lg/bsz;->bl()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_e

    :cond_2
    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v6, Lg/gad;->bc:Lg/tw;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v6, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v10, "select count(1) > 0 from raw_events where realtime = 1"

    invoke-virtual {v6, v10, v7}, Lg/ggz;->ar(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v13, v10, v4

    if-eqz v13, :cond_3

    :goto_0
    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v11, "select count(1) > 0 from queue where has_realtime = 1"

    invoke-virtual {v10, v11, v7}, Lg/ggz;->ar(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v11

    const-string v13, "debug.firebase.analytics.app"

    invoke-virtual {v11, v13}, Lg/dsd;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, ".none."

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v11, Lg/gad;->ai:Lg/tw;

    invoke-virtual {v11, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v11, Lg/gad;->aa:Lg/tw;

    invoke-virtual {v11, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v11, Lg/gad;->bd:Lg/tw;

    invoke-virtual {v11, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :goto_2
    iget-object v11, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v11, v11, Lg/aaq;->b:Lg/fou;

    invoke-virtual {v11}, Lg/fou;->f()J

    move-result-wide v15

    iget-object v11, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v11, v11, Lg/aaq;->g:Lg/fou;

    invoke-virtual {v11}, Lg/fou;->f()J

    move-result-wide v17

    iget-object v11, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v11}, Lg/bsz;->ag(Lg/aiq;)V

    const/16 v19, 0x1

    const-string v12, "select max(bundle_end_timestamp) from queue"

    invoke-virtual {v11, v12, v7, v4, v5}, Lg/ggz;->bd(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v6, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    move-wide/from16 v21, v2

    const-string v2, "select max(timestamp) from raw_events"

    invoke-virtual {v6, v2, v7, v4, v5}, Lg/ggz;->bd(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    move-wide v8, v4

    move-wide/from16 v17, v8

    goto/16 :goto_5

    :cond_7
    sub-long v2, v2, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v21, v2

    sub-long v15, v15, v21

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long v17, v17, v21

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    move-wide/from16 v17, v4

    sub-long v4, v21, v15

    sub-long v11, v21, v11

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    add-long/2addr v8, v2

    if-eqz v10, :cond_8

    cmp-long v6, v11, v17

    if-lez v6, :cond_8

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v13

    :cond_8
    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v11, v12, v13, v14}, Lg/fit;->aq(JJ)Z

    move-result v6

    if-nez v6, :cond_9

    add-long/2addr v11, v13

    move-wide v8, v11

    :cond_9
    cmp-long v6, v4, v17

    if-eqz v6, :cond_a

    cmp-long v6, v4, v2

    if-ltz v6, :cond_a

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v3, Lg/gad;->ad:Lg/tw;

    invoke-virtual {v3, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v6, 0x14

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v3, Lg/gad;->u:Lg/tw;

    invoke-virtual {v3, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v2

    mul-long v10, v10, v12

    add-long/2addr v8, v10

    cmp-long v3, v8, v4

    if-gtz v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v17, 0x0

    goto :goto_3

    :cond_a
    :goto_4
    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_b
    const-wide/16 v8, 0x0

    goto :goto_4

    :goto_5
    cmp-long v2, v8, v17

    if-eqz v2, :cond_19

    iget-object v2, v1, Lg/bsz;->z:Lg/fit;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/fit;->aw()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v2, v2, Lg/aaq;->c:Lg/fou;

    invoke-virtual {v2}, Lg/fou;->f()J

    move-result-wide v2

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v4, Lg/gad;->bu:Lg/tw;

    invoke-virtual {v4, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lg/fit;->aq(JJ)Z

    move-result v0

    if-nez v0, :cond_c

    add-long/2addr v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_c
    invoke-virtual {v1}, Lg/bsz;->bo()Lg/gwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/gwx;->g()V

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v8, v2

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-gtz v0, :cond_d

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v0, Lg/gad;->ak:Lg/tw;

    invoke-virtual {v0, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v0, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v0, v0, Lg/aaq;->b:Lg/fou;

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lg/fou;->g(J)V

    :cond_d
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lg/bsz;->s:Lg/uk;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/aiq;->n()V

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/cyg;->v:Landroid/content/Context;

    iget-object v4, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/dkq;->p(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v4, Lg/bgm;->o:Lg/dvb;

    const-string v6, "Receiver not registered/enabled"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_e
    invoke-static {v3}, Lg/dkq;->o(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v4, Lg/bgm;->o:Lg/dvb;

    const-string v6, "Service not registered/enabled"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lg/uk;->zza()V

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Scheduling upload, millis"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v12, v4, v8

    sget-object v2, Lg/gad;->br:Lg/tw;

    invoke-virtual {v2, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v2, v8, v4

    if-gez v2, :cond_11

    invoke-virtual {v0}, Lg/uk;->h()Lg/emo;

    move-result-object v2

    iget-wide v4, v2, Lg/emo;->g:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Lg/uk;->h()Lg/emo;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lg/emo;->j(J)V

    :cond_11
    :goto_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_15

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/uk;->_as()I

    move-result v0

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "action"

    const-string v6, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v5, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    add-long/2addr v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    sget-object v0, Lg/eoz;->a:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/job/JobScheduler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lg/eoz;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_14

    invoke-static {v3}, Lg/fnh;->m(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    sget-object v0, Lg/eoz;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    :try_start_0
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    :goto_8
    const/4 v3, 0x6

    const-string v6, "JobSchedulerCompat"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "myUserId invocation illegal"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_9
    const-string v3, "UploadAlarm"

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v6, v20

    const-string v7, "com.google.android.gms"

    aput-object v7, v6, v19

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_a
    const-string v5, "error calling scheduleAsPackage"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_c

    :cond_14
    :goto_b
    invoke-virtual {v4, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_15
    iget-object v10, v0, Lg/uk;->c:Landroid/app/AlarmManager;

    if-eqz v10, :cond_16

    sget-object v2, Lg/gad;->ao:Lg/tw;

    invoke-virtual {v2, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v0}, Lg/uk;->g()Landroid/app/PendingIntent;

    move-result-object v16

    const/4 v11, 0x2

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_16
    :goto_c
    return-void

    :cond_17
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "No network"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->bo()Lg/gwx;

    move-result-object v0

    iget-object v2, v0, Lg/gwx;->a:Ljava/lang/Object;

    check-cast v2, Lg/bsz;

    invoke-virtual {v2}, Lg/bsz;->bi()V

    invoke-virtual {v2}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v3

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-boolean v3, v0, Lg/gwx;->c:Z

    if-eqz v3, :cond_18

    goto :goto_d

    :cond_18
    iget-object v3, v2, Lg/bsz;->m:Lg/cyg;

    iget-object v3, v3, Lg/cyg;->v:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, v2, Lg/bsz;->z:Lg/fit;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v3}, Lg/fit;->aw()Z

    move-result v3

    iput-boolean v3, v0, Lg/gwx;->d:Z

    invoke-virtual {v2}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    iget-boolean v3, v0, Lg/gwx;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v3, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/gwx;->c:Z

    :goto_d
    iget-object v0, v1, Lg/bsz;->s:Lg/uk;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/uk;->zza()V

    return-void

    :cond_19
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Next upload time is 0"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->bo()Lg/gwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/gwx;->g()V

    iget-object v0, v1, Lg/bsz;->s:Lg/uk;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/uk;->zza()V

    return-void

    :cond_1a
    :goto_e
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->bo()Lg/gwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/gwx;->g()V

    iget-object v0, v1, Lg/bsz;->s:Lg/uk;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/uk;->zza()V

    return-void
.end method

.method public final as(Ljava/lang/String;)Lg/rs;
    .locals 5

    sget-object v0, Lg/rs;->a:Lg/rs;

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    iget-object v0, p0, Lg/bsz;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/rs;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    :goto_0
    invoke-static {v0}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/bsz;->at(Ljava/lang/String;Lg/rs;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Database error"

    invoke-virtual {v0, v3, v1, p1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    :cond_2
    return-object v0
.end method

.method public final at(Ljava/lang/String;Lg/rs;)V
    .locals 6

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    iget-object v0, p0, Lg/bsz;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "consent_state"

    invoke-virtual {p2}, Lg/rs;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p2, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    iget-object p2, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Error storing consent setting. appId, error"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    invoke-virtual {v0, p1, v1, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final au(Lg/cyo;)V
    .locals 13

    iget-object v0, p0, Lg/bsz;->u:Lg/dqu;

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    invoke-virtual {p1}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lg/cyo;->at()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0xcc

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/bsz;->am(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lg/cyo;->at()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v4, Lg/gad;->x:Lg/tw;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    sget-object v6, Lg/gad;->al:Lg/tw;

    invoke-virtual {v6, v5}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "config/app/"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "platform"

    const-string v6, "android"

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, v2, Lg/bsz;->j:Lg/ahd;

    iget-object v6, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v6, v6, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v6}, Lg/dsd;->n()V

    const-wide/32 v6, 0x11d28

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gmp_version"

    invoke-virtual {v3, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v6, "runtime_version"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Lg/fui;->c()V

    iget-object v3, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lg/gad;->f:Lg/tw;

    invoke-virtual {v3, v4, v6}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "app_instance_id"

    invoke-virtual {p1}, Lg/cyo;->al()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Fetching remote configuration"

    invoke-virtual {v3, v8, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v8}, Lg/dqu;->ap(Ljava/lang/String;)Lg/clv;

    move-result-object v3

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    iget-object v4, v0, Lg/dqu;->r:Lg/tl;

    invoke-virtual {v4, v8}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_4

    new-instance v3, Lg/tl;

    invoke-direct {v3, v6}, Lg/bcp;-><init>(I)V

    const-string v7, "If-Modified-Since"

    invoke-virtual {v3, v7, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    invoke-static {}, Lg/fui;->c()V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v4

    sget-object v7, Lg/gad;->ah:Lg/tw;

    invoke-virtual {v4, v5, v7}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    iget-object v0, v0, Lg/dqu;->h:Lg/tl;

    invoke-virtual {v0, v8}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v3, :cond_5

    new-instance v3, Lg/tl;

    invoke-direct {v3, v6}, Lg/bcp;-><init>(I)V

    :cond_5
    move-object v5, v3

    const-string v3, "If-None-Match"

    invoke-virtual {v5, v3, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v11, v5

    goto :goto_2

    :cond_7
    move-object v11, v3

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, v2, Lg/bsz;->p:Z

    iget-object v7, v2, Lg/bsz;->z:Lg/fit;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    new-instance v12, Lg/eap;

    const/4 v0, 0x5

    invoke-direct {v12, v0, p0}, Lg/eap;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lg/bgf;->_e()V

    invoke-virtual {v7}, Lg/aiq;->n()V

    iget-object v0, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v6, Lg/gal;

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lg/gal;-><init>(Lg/fit;Ljava/lang/String;Ljava/net/URL;[BLg/tl;Lg/alf;)V

    invoke-virtual {v0, v6}, Lg/fth;->v(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    const-string v3, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v0, p1, v3, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final av(Lg/btw;Lg/btw;)Z
    .locals 10

    invoke-virtual {p1}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lg/ckd;->u(Z)V

    iget-object v0, p0, Lg/bsz;->e:Lg/fit;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/crf;->o()Lg/cys;

    move-result-object v2

    check-cast v2, Lg/kk;

    const-string v3, "_sc"

    invoke-static {v3, v2}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/crf;->o()Lg/cys;

    move-result-object v4

    check-cast v4, Lg/kk;

    const-string v5, "_pc"

    invoke-static {v5, v4}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lg/btw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lg/ckd;->u(Z)V

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/kk;

    const-string v2, "_et"

    invoke-static {v2, v1}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/asm;->v()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lg/asm;->n()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lg/asm;->n()J

    move-result-wide v3

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/kk;

    invoke-static {v2, v1}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/asm;->n()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_3

    invoke-virtual {v1}, Lg/asm;->n()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_3
    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lg/fit;->al(Lg/btw;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final aw(Lg/afh;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lg/bsz;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/bsz;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lg/bsz;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {v3}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/aiq;->n()V

    :try_start_0
    invoke-virtual {v1}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "apps"

    invoke-virtual {v1, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Error resetting analytics data. appId, error"

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lg/afh;->zzh:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lg/bsz;->bh(Lg/afh;)V

    :cond_2
    return-void
.end method

.method public final ax(Lg/ctf;Lg/afh;)V
    .locals 13

    invoke-static {p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    iget-object v0, p2, Lg/afh;->zza:Ljava/lang/String;

    iget-wide v5, p1, Lg/ctf;->zzd:J

    invoke-static {p1}, Lg/dhh;->f(Lg/ctf;)Lg/dhh;

    move-result-object p1

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-object v1, p0, Lg/bsz;->k:Lg/ein;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/bsz;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/bsz;->k:Lg/ein;

    :cond_1
    :goto_0
    iget-object v1, p1, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    invoke-virtual {p1}, Lg/dhh;->j()Lg/ctf;

    move-result-object p1

    iget-object v1, p0, Lg/bsz;->e:Lg/fit;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lg/afh;->zzq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p2, Lg/afh;->zzh:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :cond_3
    iget-object v1, p2, Lg/afh;->zzt:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v1}, Lg/cde;->zzc()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ga_safelisted"

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v7, Lg/ctf;

    iget-object v8, p1, Lg/ctf;->zza:Ljava/lang/String;

    new-instance v9, Lg/cde;

    invoke-direct {v9, v1}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    iget-object v10, p1, Lg/ctf;->zzc:Ljava/lang/String;

    iget-wide v11, p1, Lg/ctf;->zzd:J

    invoke-direct/range {v7 .. v12}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    move-object p1, v7

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->o:Lg/dvb;

    iget-object v1, p1, Lg/ctf;->zza:Ljava/lang/String;

    iget-object p1, p1, Lg/ctf;->zzc:Ljava/lang/String;

    const-string v2, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {p2, v2, v0, v1, p1}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_1
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/ggz;->ap()V

    :try_start_0
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/aiq;->n()V

    const-wide/16 v2, 0x0

    cmp-long v4, v5, v2

    if-gez v4, :cond_6

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Invalid time querying timed out conditional properties"

    invoke-static {v0}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v3, v2, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b

    :cond_6
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    invoke-virtual {v1, v3, v2}, Lg/ggz;->az(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lg/bsz;->m:Lg/cyg;

    if-eqz v2, :cond_9

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bou;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->c:Lg/dvb;

    const-string v7, "User property timed out"

    iget-object v9, v2, Lg/bou;->zza:Ljava/lang/String;

    iget-object v8, v8, Lg/cyg;->af:Lg/ebl;

    iget-object v10, v2, Lg/bou;->zzc:Lg/cmd;

    iget-object v10, v10, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v2, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v10}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v7, v9, v8, v10}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v2, Lg/bou;->zzg:Lg/ctf;

    if-eqz v3, :cond_8

    new-instance v7, Lg/ctf;

    invoke-direct {v7, v3, v5, v6}, Lg/ctf;-><init>(Lg/ctf;J)V

    invoke-virtual {p0, v7, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    :cond_8
    iget-object v3, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v2, Lg/bou;->zzc:Lg/cmd;

    iget-object v2, v2, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lg/ggz;->bh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/aiq;->n()V

    if-gez v4, :cond_a

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Invalid time querying expired conditional properties"

    invoke-static {v0}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v3, v2, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_a
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    invoke-virtual {v1, v3, v2}, Lg/ggz;->az(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bou;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v7

    iget-object v7, v7, Lg/bgm;->c:Lg/dvb;

    const-string v9, "User property expired"

    iget-object v10, v3, Lg/bou;->zza:Ljava/lang/String;

    iget-object v11, v8, Lg/cyg;->af:Lg/ebl;

    iget-object v12, v3, Lg/bou;->zzc:Lg/cmd;

    iget-object v12, v12, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v12}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v9, v10, v11, v12}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v9, v3, Lg/bou;->zzc:Lg/cmd;

    iget-object v9, v9, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lg/bou;->zzk:Lg/ctf;

    if-eqz v7, :cond_c

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v7, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, v3, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Lg/ggz;->bh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ctf;

    new-instance v3, Lg/ctf;

    invoke-direct {v3, v2, v5, v6}, Lg/ctf;-><init>(Lg/ctf;J)V

    invoke-virtual {p0, v3, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v3}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/aiq;->n()V

    if-gez v4, :cond_f

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Invalid time querying triggered conditional properties"

    invoke-static {v0}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v0

    iget-object v2, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v2, v3}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v4, v0, v2, v3}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_7

    :cond_f
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    invoke-virtual {v1, v2, v0}, Lg/ggz;->az(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lg/bou;

    if-eqz v10, :cond_10

    iget-object v1, v10, Lg/bou;->zzc:Lg/cmd;

    move-object v2, v1

    new-instance v1, Lg/ffu;

    move-object v3, v2

    iget-object v2, v10, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    move-object v4, v3

    iget-object v3, v10, Lg/bou;->zzb:Ljava/lang/String;

    move-object v7, v4

    iget-object v4, v7, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v7}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-direct/range {v1 .. v7}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, v1, Lg/ffu;->b:Ljava/lang/Object;

    iget-object v3, v1, Lg/ffu;->e:Ljava/lang/String;

    iget-object v4, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v4}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v4, v1}, Lg/ggz;->bc(Lg/ffu;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v7, "User property triggered"

    iget-object v11, v10, Lg/bou;->zza:Ljava/lang/String;

    iget-object v12, v8, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v12, v3}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v11, v3, v2}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    iget-object v4, v4, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Too many active user properties, ignoring"

    iget-object v11, v10, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v11

    iget-object v12, v8, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v12, v3}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v11, v3, v2}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    iget-object v2, v10, Lg/bou;->zzi:Lg/ctf;

    if-eqz v2, :cond_12

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v2, Lg/cmd;

    invoke-direct {v2, v1}, Lg/cmd;-><init>(Lg/ffu;)V

    iput-object v2, v10, Lg/bou;->zzc:Lg/cmd;

    const/4 v1, 0x1

    iput-boolean v1, v10, Lg/bou;->zze:Z

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1, v10}, Lg/ggz;->t(Lg/bou;)Z

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ctf;

    new-instance v1, Lg/ctf;

    invoke-direct {v1, v0, v5, v6}, Lg/ctf;-><init>(Lg/ctf;J)V

    invoke-virtual {p0, v1, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    goto :goto_a

    :cond_14
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->av()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->an()V

    return-void

    :goto_b
    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    throw p1
.end method

.method public final ay()V
    .locals 10

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    iget-boolean v0, p0, Lg/bsz;->aa:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bsz;->aa:Z

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-object v1, p0, Lg/bsz;->g:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lg/bsz;->m:Lg/cyg;

    const-string v3, "Storage concurrent access okay"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "google_app_measurement.db"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lg/bsz;->ab:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lg/bsz;->g:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v1, p0, Lg/bsz;->ab:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v3

    invoke-virtual {v3}, Lg/fth;->_e()V

    const-string v3, "Bad channel to read from"

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v6, :cond_3

    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v8

    iget-object v8, v8, Lg/bgm;->g:Lg/dvb;

    const-string v9, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v8

    iget-object v8, v8, Lg/bgm;->b:Lg/dvb;

    const-string v9, "Failed to read from channel"

    invoke-virtual {v8, v1, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v1

    invoke-virtual {v1}, Lg/os;->zza()V

    iget v1, v1, Lg/fqh;->u:I

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    invoke-virtual {v2}, Lg/fth;->_e()V

    if-le v7, v1, :cond_6

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v2, v3, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    if-ge v7, v1, :cond_b

    iget-object v2, p0, Lg/bsz;->ab:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v8

    invoke-virtual {v8}, Lg/fth;->_e()V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v2, v3, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :goto_6
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    :goto_7
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v0, v2, v3, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :goto_9
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :goto_a
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_c
    return-void
.end method

.method public final az(Ljava/lang/String;)Lg/afh;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1, v2}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lg/cyo;->k:Lg/cyg;

    invoke-virtual {v1}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lg/bsz;->bc(Lg/cyo;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v4, "App version does not match; dropping. appId"

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v3, Lg/afh;

    move-object v5, v3

    invoke-virtual {v1}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v1}, Lg/cyo;->ao()J

    move-result-wide v5

    iget-object v9, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v9}, Lg/fth;->_e()V

    move-object v9, v7

    iget-object v7, v1, Lg/cyo;->i:Ljava/lang/String;

    iget-object v10, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v10}, Lg/fth;->_e()V

    move-object v11, v8

    move-object v10, v9

    iget-wide v8, v1, Lg/cyo;->t:J

    iget-object v12, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v12}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v12}, Lg/fth;->_e()V

    move-object v12, v10

    move-object v13, v11

    iget-wide v10, v1, Lg/cyo;->f:J

    iget-object v14, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v14}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v14}, Lg/fth;->_e()V

    move-object v14, v13

    iget-boolean v13, v1, Lg/cyo;->d:Z

    invoke-virtual {v1}, Lg/cyo;->bk()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/cyo;->bg()Z

    move-result v21

    invoke-virtual {v1}, Lg/cyo;->at()Ljava/lang/String;

    move-result-object v23

    iget-object v0, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, v1, Lg/cyo;->ae:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lg/cyo;->au()J

    move-result-wide v25

    iget-object v4, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v4}, Lg/fth;->_e()V

    iget-object v1, v1, Lg/cyo;->z:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v4

    invoke-virtual {v4}, Lg/rs;->f()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    const/16 v31, 0x0

    move-object/from16 v27, v1

    move-object v1, v12

    const/4 v12, 0x0

    move-object v4, v14

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v0

    invoke-direct/range {v1 .. v31}, Lg/afh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v1, "No app data available; dropping"

    invoke-virtual {v0, v2, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final ba(Lg/rs;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {p1, v0}, Lg/rs;->g(Lg/gxx;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    invoke-virtual {v0}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bb()Lg/fit;
    .locals 1

    iget-object v0, p0, Lg/bsz;->e:Lg/fit;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    return-object v0
.end method

.method public final bc(Lg/cyo;)Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lg/cyo;->ao()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    iget-object v5, p0, Lg/bsz;->m:Lg/cyg;

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    :try_start_1
    iget-object v0, v5, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v0}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0

    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lg/ccb;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lg/cyo;->ao()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, v5, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v0}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0

    invoke-virtual {p1}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lg/ccb;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bd()V
    .locals 5

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/bsz;->p:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lg/bsz;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lg/bsz;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lg/bsz;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/bsz;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    iget-boolean v1, p0, Lg/bsz;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lg/bsz;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lg/bsz;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final be(Lg/ctf;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2, v3}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, v2, Lg/cyo;->k:Lg/cyg;

    invoke-virtual {v2}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lg/bsz;->bc(Lg/cyo;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "_ui"

    iget-object v6, v1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v5

    iget-object v5, v5, Lg/bgm;->g:Lg/dvb;

    const-string v6, "Could not find package. appId"

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v5, Lg/afh;

    invoke-virtual {v2}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v2}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v5

    move-object v9, v6

    move-object v8, v7

    invoke-virtual {v2}, Lg/cyo;->ao()J

    move-result-wide v6

    iget-object v10, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v10}, Lg/fth;->_e()V

    move-object v10, v8

    iget-object v8, v2, Lg/cyo;->i:Ljava/lang/String;

    iget-object v11, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v11}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v11}, Lg/fth;->_e()V

    move-object v12, v9

    move-object v11, v10

    iget-wide v9, v2, Lg/cyo;->t:J

    iget-object v13, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v13}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v13}, Lg/fth;->_e()V

    move-object v13, v11

    move-object v14, v12

    iget-wide v11, v2, Lg/cyo;->f:J

    iget-object v15, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v15}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v15}, Lg/fth;->_e()V

    move-object v15, v14

    iget-boolean v14, v2, Lg/cyo;->d:Z

    invoke-virtual {v2}, Lg/cyo;->bk()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v5

    iget-object v5, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v5}, Lg/fth;->_e()V

    invoke-virtual {v2}, Lg/cyo;->bg()Z

    move-result v22

    invoke-virtual {v2}, Lg/cyo;->at()Ljava/lang/String;

    move-result-object v24

    iget-object v5, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v5}, Lg/fth;->_e()V

    iget-object v5, v2, Lg/cyo;->ae:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lg/cyo;->au()J

    move-result-wide v26

    iget-object v4, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v4}, Lg/fth;->_e()V

    iget-object v2, v2, Lg/cyo;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v4

    invoke-virtual {v4}, Lg/rs;->f()Ljava/lang/String;

    move-result-object v30

    const-string v31, ""

    const/16 v32, 0x0

    move-object/from16 v28, v2

    move-object v2, v13

    const/4 v13, 0x0

    move-object v4, v15

    const/4 v15, 0x0

    move-object/from16 v25, v5

    move-object/from16 v5, v17

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v32}, Lg/afh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lg/bsz;->br(Lg/ctf;Lg/afh;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bf()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v3, v1, Lg/bsz;->z:Lg/fit;

    iget-object v0, v1, Lg/bsz;->m:Lg/cyg;

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    invoke-virtual {v2}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/bsz;->o:Z

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    invoke-virtual {v0}, Lg/dbb;->u()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v9, v1, Lg/bsz;->o:Z

    :goto_0
    invoke-virtual {v1}, Lg/bsz;->bd()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_2e

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v9, v1, Lg/bsz;->o:Z

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v4, v1, Lg/bsz;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lg/bsz;->ar()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v9, v1, Lg/bsz;->o:Z

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, v1, Lg/bsz;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->w()Lg/dvb;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v9, v1, Lg/bsz;->o:Z

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v3}, Lg/fit;->aw()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->w()Lg/dvb;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->ar()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v9, v1, Lg/bsz;->o:Z

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v8, Lg/gad;->m:Lg/tw;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v0

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v8, Lg/gad;->t:Lg/tw;

    invoke-virtual {v8, v10}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v4, v11

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    invoke-virtual {v1, v11, v12}, Lg/bsz;->al(J)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v0, v0, Lg/aaq;->b:Lg/fou;

    invoke-virtual {v0}, Lg/fou;->f()J

    move-result-wide v11

    cmp-long v0, v11, v6

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ba()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_2a

    iget-wide v11, v1, Lg/bsz;->v:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_a

    iget-object v11, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v11}, Lg/bsz;->ag(Lg/aiq;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v11}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v12, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v0, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_7

    :goto_2
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :cond_7
    :try_start_9
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_3
    move-object v10, v12

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v12, v10

    :goto_4
    :try_start_a
    iget-object v11, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v11, Lg/cyg;

    invoke-virtual {v11}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v11

    invoke-virtual {v11}, Lg/bgm;->v()Lg/dvb;

    move-result-object v11

    const-string v13, "Error querying raw events"

    invoke-virtual {v11, v0, v13}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v12, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    :try_start_b
    iput-wide v7, v1, Lg/bsz;->v:J

    goto :goto_7

    :goto_6
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    :goto_7
    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v7, Lg/gad;->bs:Lg/tw;

    invoke-virtual {v0, v6, v7}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v0

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v7

    sget-object v8, Lg/gad;->d:Lg/tw;

    invoke-virtual {v7, v6, v8}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v8}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v8}, Lg/bgf;->_e()V

    invoke-virtual {v8}, Lg/aiq;->n()V

    if-lez v0, :cond_b

    const/4 v11, 0x1

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    invoke-static {v11}, Lg/ckd;->u(Z)V

    if-lez v7, :cond_c

    const/4 v11, 0x1

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    invoke-static {v11}, Lg/ckd;->u(Z)V

    invoke-static {v6}, Lg/ckd;->bf(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v8}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "rowid"

    const-string v14, "data"

    const-string v15, "retry_count"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const-string v13, "queue"

    const-string v15, "app_id=?"

    const-string v19, "rowid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/16 v17, 0x1

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v22, v12

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v22, v12

    const/16 v17, 0x1

    goto/16 :goto_12

    :cond_d
    :try_start_f
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_a
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/16 v17, 0x1

    :try_start_11
    iget-object v2, v8, Lg/af;->a:Lg/bsz;

    iget-object v2, v2, Lg/bsz;->e:Lg/fit;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v11, 0x400

    new-array v11, v11, [B

    move-object/from16 v21, v10

    :goto_b
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_10

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    array-length v2, v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    add-int/2addr v2, v14

    if-le v2, v7, :cond_e

    move-object/from16 v22, v12

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v22, v12

    goto/16 :goto_12

    :cond_e
    :try_start_14
    invoke-static {}, Lg/fzb;->bh()Lg/epg;

    move-result-object v2

    invoke-static {v2, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v2

    check-cast v2, Lg/epg;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v9, 0x2

    :try_start_15
    invoke-interface {v12, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lg/epg;->ai(I)V

    :cond_f
    array-length v0, v0

    add-int/2addr v14, v0

    invoke-virtual {v2}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/fzb;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    move-object/from16 v22, v12

    goto :goto_f

    :catch_4
    move-exception v0

    iget-object v2, v8, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v9, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-virtual {v2, v10, v9, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v22, v12

    goto :goto_d

    :cond_10
    move-object/from16 v22, v12

    const/4 v12, 0x0

    :try_start_16
    invoke-virtual {v9, v11, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v12, v22

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    :goto_d
    :try_start_17
    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v9, "Failed to ungzip content"

    invoke-virtual {v2, v0, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v22, v12

    goto :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v22, v12

    const/16 v17, 0x1

    :goto_e
    :try_start_18
    iget-object v2, v8, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v9, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-virtual {v2, v10, v9, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_f
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v0, :cond_12

    if-le v14, v7, :cond_11

    goto :goto_10

    :cond_11
    move-object/from16 v12, v22

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_12
    :goto_10
    :try_start_19
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-object v0, v13

    goto :goto_16

    :goto_11
    move-object/from16 v10, v22

    goto/16 :goto_25

    :goto_12
    move-object/from16 v12, v22

    goto :goto_15

    :catchall_5
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    const/16 v17, 0x1

    goto :goto_14

    :goto_13
    const/4 v10, 0x0

    goto/16 :goto_25

    :goto_14
    const/4 v12, 0x0

    :goto_15
    :try_start_1a
    iget-object v2, v8, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v7, "Error querying bundles. appId"

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v8

    invoke-virtual {v2, v8, v7, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v12, :cond_13

    :try_start_1b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1, v6}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v2

    sget-object v7, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v2, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lg/fzb;

    invoke-virtual {v7}, Lg/fzb;->ck()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v7}, Lg/fzb;->ck()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_18

    const/4 v7, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lg/fzb;

    invoke-virtual {v8}, Lg/fzb;->ck()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {v8}, Lg/fzb;->ck()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v12, 0x0

    invoke-interface {v0, v12, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1a

    :cond_17
    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_18
    :goto_1a
    invoke-static {}, Lg/flt;->c()Lg/grt;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v9

    invoke-virtual {v9, v6}, Lg/dsd;->q(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v1, v6}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v9

    sget-object v10, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v9, v10}, Lg/rs;->g(Lg/gxx;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v9, 0x1

    goto :goto_1b

    :cond_19
    const/4 v9, 0x0

    :goto_1b
    invoke-virtual {v1, v6}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v10

    sget-object v11, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v10, v11}, Lg/rs;->g(Lg/gxx;)Z

    move-result v10

    invoke-virtual {v1, v6}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v11

    sget-object v12, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v11, v12}, Lg/rs;->g(Lg/gxx;)Z

    move-result v11

    invoke-static {}, Lg/eur;->c()V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v12

    sget-object v13, Lg/gad;->o:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v13, 0x0

    :goto_1c
    iget-object v14, v1, Lg/bsz;->e:Lg/fit;

    if-ge v13, v7, :cond_22

    :try_start_1c
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lg/fzb;

    invoke-virtual {v15}, Lg/cys;->ah()Lg/crf;

    move-result-object v15

    check-cast v15, Lg/epg;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    invoke-virtual {v0}, Lg/dsd;->n()V

    invoke-virtual {v15}, Lg/epg;->av()V

    invoke-virtual {v15, v4, v5}, Lg/epg;->h(J)V

    invoke-virtual {v15}, Lg/epg;->ae()V

    if-nez v9, :cond_1b

    iget-boolean v0, v15, Lg/crf;->i:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v15}, Lg/crf;->p()V

    move v0, v7

    const/4 v7, 0x0

    iput-boolean v7, v15, Lg/crf;->i:Z

    goto :goto_1d

    :cond_1a
    move v0, v7

    :goto_1d
    iget-object v7, v15, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/fzb;

    invoke-static {v7}, Lg/fzb;->ax(Lg/fzb;)V

    goto :goto_1e

    :cond_1b
    move v0, v7

    :goto_1e
    if-nez v10, :cond_1c

    invoke-virtual {v15}, Lg/epg;->d()V

    invoke-virtual {v15}, Lg/epg;->am()V

    :cond_1c
    if-nez v11, :cond_1e

    iget-boolean v7, v15, Lg/crf;->i:Z

    if-eqz v7, :cond_1d

    invoke-virtual {v15}, Lg/crf;->p()V

    const/4 v7, 0x0

    iput-boolean v7, v15, Lg/crf;->i:Z

    :cond_1d
    iget-object v7, v15, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/fzb;

    invoke-static {v7}, Lg/fzb;->au(Lg/fzb;)V

    :cond_1e
    invoke-virtual {v1, v6, v15}, Lg/bsz;->bn(Ljava/lang/String;Lg/epg;)V

    if-nez v12, :cond_20

    iget-boolean v7, v15, Lg/crf;->i:Z

    if-eqz v7, :cond_1f

    invoke-virtual {v15}, Lg/crf;->p()V

    const/4 v7, 0x0

    iput-boolean v7, v15, Lg/crf;->i:Z

    :cond_1f
    iget-object v7, v15, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/fzb;

    invoke-static {v7}, Lg/fzb;->e(Lg/fzb;)V

    :cond_20
    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v7

    move/from16 v16, v0

    sget-object v0, Lg/gad;->ay:Lg/tw;

    invoke-virtual {v7, v6, v0}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v15}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/cir;->z()[B

    move-result-object v0

    invoke-static {v14}, Lg/bsz;->ag(Lg/aiq;)V

    move v7, v9

    move/from16 v22, v10

    invoke-virtual {v14, v0}, Lg/fit;->av([B)J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Lg/epg;->aj(J)V

    goto :goto_1f

    :cond_21
    move v7, v9

    move/from16 v22, v10

    :goto_1f
    invoke-virtual {v2, v15}, Lg/grt;->b(Lg/epg;)V

    add-int/lit8 v13, v13, 0x1

    move v9, v7

    move/from16 v7, v16

    move-object/from16 v0, v21

    move/from16 v10, v22

    goto/16 :goto_1c

    :cond_22
    move/from16 v16, v7

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v14}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/flt;

    invoke-virtual {v14, v0}, Lg/fit;->au(Lg/flt;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_23
    const/4 v0, 0x0

    :goto_20
    invoke-static {v14}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/crf;->o()Lg/cys;

    move-result-object v7

    check-cast v7, Lg/flt;

    invoke-virtual {v7}, Lg/cir;->z()[B

    move-result-object v7

    iget-object v9, v1, Lg/bsz;->j:Lg/ahd;

    invoke-static {}, Lg/fui;->c()V

    iget-object v10, v9, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v10, Lg/cyg;

    iget-object v10, v10, Lg/cyg;->e:Lg/dsd;

    sget-object v11, Lg/gad;->am:Lg/tw;

    invoke-virtual {v10, v6, v11}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v9, v9, Lg/af;->a:Lg/bsz;

    iget-object v9, v9, Lg/bsz;->u:Lg/dqu;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v9, v6}, Lg/dqu;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_24

    sget-object v10, Lg/gad;->bb:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_21

    :cond_24
    sget-object v9, Lg/gad;->bb:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_21

    :cond_25
    sget-object v9, Lg/gad;->bb:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_21
    :try_start_1d
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lg/ckd;->u(Z)V

    iget-object v11, v1, Lg/bsz;->w:Ljava/util/ArrayList;

    if-eqz v11, :cond_26

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v8

    invoke-virtual {v8}, Lg/bgm;->v()Lg/dvb;

    move-result-object v8

    const-string v11, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v11}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_22

    :catch_c
    move-object v4, v6

    goto :goto_24

    :cond_26
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lg/bsz;->w:Ljava/util/ArrayList;

    :goto_22
    iget-object v8, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v8, v8, Lg/aaq;->g:Lg/fou;

    invoke-virtual {v8, v4, v5}, Lg/fou;->g(J)V

    const-string v4, "?"

    if-lez v16, :cond_27

    invoke-virtual {v2}, Lg/grt;->a()Lg/fzb;

    move-result-object v2

    invoke-virtual {v2}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    :cond_27
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    const-string v5, "Uploading data. app, uncompressed size, data"

    array-length v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v4, v8, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/bsz;->d:Z

    invoke-static {v3}, Lg/bsz;->ag(Lg/aiq;)V

    new-instance v8, Lg/bgb;

    invoke-direct {v8, v1, v6}, Lg/bgb;-><init>(Lg/bsz;Ljava/lang/String;)V

    invoke-virtual {v3}, Lg/bgf;->_e()V

    invoke-virtual {v3}, Lg/aiq;->n()V

    iget-object v0, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzaz()Lg/fth;

    move-result-object v0

    new-instance v2, Lg/gal;
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object v4, v6

    move-object v6, v7

    const/4 v7, 0x0

    move-object v5, v10

    :try_start_1e
    invoke-direct/range {v2 .. v8}, Lg/gal;-><init>(Lg/fit;Ljava/lang/String;Ljava/net/URL;[BLg/tl;Lg/alf;)V

    invoke-virtual {v0, v2}, Lg/fth;->v(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_28
    :goto_23
    const/4 v7, 0x0

    goto/16 :goto_2c

    :catch_d
    :goto_24
    :try_start_1f
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v9}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :catchall_6
    move-exception v0

    move-object v10, v12

    :goto_25
    if-eqz v10, :cond_29

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_29
    throw v0

    :cond_2a
    iput-wide v7, v1, Lg/bsz;->v:J

    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v0, Lg/gad;->t:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2}, Lg/aiq;->n()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    invoke-virtual {v2}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :try_start_21
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->w()Lg/dvb;

    move-result-object v0

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v0, v4}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :goto_26
    :try_start_22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :cond_2b
    move-object v10, v14

    goto :goto_2b

    :catchall_7
    move-exception v0

    goto :goto_27

    :catch_e
    move-exception v0

    goto :goto_2a

    :cond_2c
    const/4 v7, 0x0

    :try_start_23
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    :try_start_24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_2b

    :goto_27
    move-object v10, v3

    goto :goto_2d

    :catchall_8
    move-exception v0

    goto :goto_28

    :catch_f
    move-exception v0

    goto :goto_29

    :goto_28
    move-object v10, v14

    goto :goto_2d

    :goto_29
    move-object v3, v14

    :goto_2a
    :try_start_25
    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    if-eqz v3, :cond_2b

    goto :goto_26

    :goto_2b
    :try_start_26
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v10}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Lg/bsz;->au(Lg/cyo;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_23

    :goto_2c
    iput-boolean v7, v1, Lg/bsz;->o:Z

    goto/16 :goto_0

    :goto_2d
    if-eqz v10, :cond_2d

    :try_start_27
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2d
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :goto_2e
    iput-boolean v7, v1, Lg/bsz;->o:Z

    invoke-virtual {v1}, Lg/bsz;->bd()V

    throw v0
.end method

.method public final bg(Lg/bou;Lg/afh;)V
    .locals 11

    iget-object v0, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p1, Lg/bou;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v0, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    invoke-static {p2}, Lg/bsz;->ah(Lg/afh;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lg/afh;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :cond_1
    new-instance v0, Lg/bou;

    invoke-direct {v0, p1}, Lg/bou;-><init>(Lg/bou;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/bou;->zze:Z

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/ggz;->ap()V

    :try_start_0
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v0, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v3, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lg/ggz;->au(Ljava/lang/String;Ljava/lang/String;)Lg/bou;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lg/bsz;->m:Lg/cyg;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v3, v1, Lg/bou;->zzb:Ljava/lang/String;

    iget-object v4, v0, Lg/bou;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v5, v2, Lg/cyg;->af:Lg/ebl;

    iget-object v6, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v6, v6, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lg/bou;->zzb:Ljava/lang/String;

    iget-object v7, v1, Lg/bou;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v1, Lg/bou;->zze:Z

    if-eqz v4, :cond_3

    iget-object v4, v1, Lg/bou;->zzb:Ljava/lang/String;

    iput-object v4, v0, Lg/bou;->zzb:Ljava/lang/String;

    iget-wide v4, v1, Lg/bou;->zzd:J

    iput-wide v4, v0, Lg/bou;->zzd:J

    iget-wide v4, v1, Lg/bou;->zzh:J

    iput-wide v4, v0, Lg/bou;->zzh:J

    iget-object v4, v1, Lg/bou;->zzf:Ljava/lang/String;

    iput-object v4, v0, Lg/bou;->zzf:Ljava/lang/String;

    iget-object v4, v1, Lg/bou;->zzi:Lg/ctf;

    iput-object v4, v0, Lg/bou;->zzi:Lg/ctf;

    iput-boolean v3, v0, Lg/bou;->zze:Z

    new-instance v5, Lg/cmd;

    iget-object v3, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v6, v3, Lg/cmd;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lg/bou;->zzc:Lg/cmd;

    iget-wide v7, v4, Lg/cmd;->zzc:J

    invoke-virtual {v3}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v9

    iget-object v1, v1, Lg/bou;->zzc:Lg/cmd;

    iget-object v10, v1, Lg/cmd;->zzf:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lg/bou;->zzc:Lg/cmd;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lg/bou;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v4, Lg/cmd;

    iget-object p1, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v5, p1, Lg/cmd;->zzb:Ljava/lang/String;

    iget-wide v6, v0, Lg/bou;->zzd:J

    invoke-virtual {p1}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object p1, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v9, p1, Lg/cmd;->zzf:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lg/bou;->zzc:Lg/cmd;

    iput-boolean v3, v0, Lg/bou;->zze:Z

    const/4 p1, 0x1

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lg/bou;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lg/bou;->zzc:Lg/cmd;

    new-instance v3, Lg/ffu;

    iget-object v4, v0, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v5, v0, Lg/bou;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lg/cmd;->zzb:Ljava/lang/String;

    iget-wide v7, v1, Lg/cmd;->zzc:J

    invoke-virtual {v1}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-direct/range {v3 .. v9}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, v3, Lg/ffu;->b:Ljava/lang/Object;

    iget-object v4, v3, Lg/ffu;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v5}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v5, v3}, Lg/ggz;->bc(Lg/ffu;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->o:Lg/dvb;

    const-string v5, "User property updated immediately"

    iget-object v6, v0, Lg/bou;->zza:Ljava/lang/String;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v4}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4, v1}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    const-string v5, "(2)Too many active user properties, ignoring"

    iget-object v6, v0, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v6}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v4}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4, v1}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lg/bou;->zzi:Lg/ctf;

    if-eqz p1, :cond_6

    new-instance v1, Lg/ctf;

    iget-wide v3, v0, Lg/bou;->zzd:J

    invoke-direct {v1, p1, v3, v4}, Lg/ctf;-><init>(Lg/ctf;J)V

    invoke-virtual {p0, v1, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    :cond_6
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1, v0}, Lg/ggz;->t(Lg/bou;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->o:Lg/dvb;

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lg/bou;->zza:Ljava/lang/String;

    iget-object v2, v2, Lg/cyg;->af:Lg/ebl;

    iget-object v3, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v0}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v1

    iget-object v2, v2, Lg/cyg;->af:Lg/ebl;

    iget-object v3, v0, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v0}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->av()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->an()V

    return-void

    :goto_4
    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    throw p1
.end method

.method public final bh(Lg/afh;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "com.android.vending"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v8

    invoke-virtual {v8}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v8, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v8}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v2}, Lg/bsz;->ah(Lg/afh;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v8}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v9, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v8, v9, v10}, Lg/cyo;->bn(J)V

    iget-object v11, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v11}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v11, v8}, Lg/ggz;->ax(Lg/cyo;)V

    iget-object v8, v1, Lg/bsz;->u:Lg/dqu;

    invoke-static {v8}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v8}, Lg/bgf;->_e()V

    iget-object v8, v8, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v8, v11}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v8, v2, Lg/afh;->zzh:Z

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p1}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :cond_1
    iget-wide v11, v2, Lg/afh;->zzm:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v8

    check-cast v8, Lg/czz;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :cond_2
    move-wide v15, v11

    iget-object v8, v1, Lg/bsz;->m:Lg/cyg;

    invoke-virtual {v8}, Lg/cyg;->ar()Lg/auk;

    move-result-object v11

    iget-object v8, v8, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v11}, Lg/bgf;->_e()V

    const/4 v12, 0x0

    iput-object v12, v11, Lg/auk;->b:Ljava/lang/Boolean;

    iput-wide v9, v11, Lg/auk;->a:J

    iget v11, v2, Lg/afh;->zzn:I

    const/4 v13, 0x1

    if-eqz v11, :cond_3

    if-eq v11, v13, :cond_3

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v14

    iget-object v14, v14, Lg/bgm;->g:Lg/dvb;

    iget-object v9, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v9}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v14, v9, v11, v10}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    :cond_3
    iget-object v9, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v9}, Lg/ggz;->ap()V

    :try_start_0
    iget-object v9, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v10, v2, Lg/afh;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    invoke-virtual {v9, v10, v14}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v9

    const-wide/16 v12, 0x1

    if-eqz v9, :cond_5

    const-string v14, "auto"

    iget-object v10, v9, Lg/ffu;->d:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v22, v11

    move-wide v10, v12

    const/4 v12, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_1d

    :cond_5
    :goto_0
    iget-object v10, v2, Lg/afh;->zzr:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    move-wide/from16 v20, v12

    new-instance v13, Lg/cmd;

    const-string v14, "_npa"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v12, 0x1

    if-eq v12, v10, :cond_6

    const-wide/16 v22, 0x0

    goto :goto_1

    :cond_6
    move-wide/from16 v22, v20

    :goto_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v18, "auto"

    move-object/from16 v17, v10

    move/from16 v22, v11

    move-wide/from16 v10, v20

    const/4 v12, 0x0

    invoke-direct/range {v13 .. v18}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lg/ffu;->b:Ljava/lang/Object;

    iget-object v14, v13, Lg/cmd;->zzd:Ljava/lang/Long;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_7
    invoke-virtual {v1, v13, v2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    goto :goto_2

    :cond_8
    move/from16 v22, v11

    move-wide v10, v12

    const/4 v12, 0x0

    if-eqz v9, :cond_9

    new-instance v13, Lg/cmd;

    const-string v14, "_npa"

    const-string v18, "auto"

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v18}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->an(Lg/cmd;Lg/afh;)V

    :cond_9
    :goto_2
    iget-object v9, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v13, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v13}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v13, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-virtual {v9}, Lg/cyo;->ay()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v26, v10

    iget-object v10, v2, Lg/afh;->zzq:Ljava/lang/String;

    invoke-virtual {v9}, Lg/cyo;->at()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v14, v10, v11}, Lg/dkq;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v10

    iget-object v10, v10, Lg/bgm;->g:Lg/dvb;

    const-string v11, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v9}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v13

    invoke-virtual {v10, v13, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v11, v10, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v11, Lg/cyg;

    invoke-virtual {v9}, Lg/cyo;->bi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lg/aiq;->n()V

    invoke-virtual {v10}, Lg/bgf;->_e()V

    invoke-static {v9}, Lg/ckd;->bf(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v10}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    const-string v12, "events"

    invoke-virtual {v13, v12, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v28, v8

    :try_start_2
    const-string v8, "user_attributes"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "conditional_properties"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "apps"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "raw_events"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "raw_events_metadata"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "event_filters"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "property_filters"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "audience_filter_values"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    const-string v8, "consent_settings"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v12, v8

    sget-object v8, Lg/fsl;->a:Lg/fsl;

    iget-object v8, v8, Lg/fsl;->b:Lg/dvf;

    invoke-interface {v8}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/diz;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v11, Lg/cyg;->e:Lg/dsd;

    move/from16 v17, v12

    sget-object v12, Lg/gad;->bv:Lg/tw;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v29, v15

    const/4 v15, 0x0

    :try_start_3
    invoke-virtual {v8, v15, v12}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "default_event_params"

    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int v0, v17, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_a
    move/from16 v0, v17

    :goto_3
    if-lez v0, :cond_b

    iget-object v8, v11, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->c:Lg/dvb;

    const-string v11, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v11, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_4
    const/16 v19, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_5
    move-wide/from16 v29, v15

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v28, v8

    goto :goto_5

    :goto_6
    :try_start_4
    iget-object v8, v10, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v8, Lg/cyg;

    iget-object v8, v8, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->b:Lg/dvb;

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v9}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v9

    invoke-virtual {v8, v9, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    :goto_7
    move-object/from16 v28, v8

    move-wide/from16 v29, v15

    goto :goto_8

    :cond_d
    move-wide/from16 v26, v10

    goto :goto_7

    :goto_8
    move-object/from16 v19, v9

    :goto_9
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Lg/cyo;->ao()J

    move-result-wide v8

    const-wide/32 v10, -0x80000000

    cmp-long v0, v8, v10

    if-eqz v0, :cond_e

    invoke-virtual/range {v19 .. v19}, Lg/cyo;->ao()J

    move-result-wide v8

    iget-wide v13, v2, Lg/afh;->zzj:J

    cmp-long v0, v8, v13

    if-eqz v0, :cond_e

    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    :goto_a
    invoke-virtual/range {v19 .. v19}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Lg/cyo;->ao()J

    move-result-wide v8

    cmp-long v14, v8, v10

    if-nez v14, :cond_f

    if-eqz v0, :cond_f

    iget-object v8, v2, Lg/afh;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    or-int/2addr v8, v13

    if-eqz v8, :cond_10

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "_pv"

    invoke-virtual {v8, v9, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lg/ctf;

    new-instance v15, Lg/cde;

    invoke-direct {v15, v8}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_au"

    const-string v16, "auto"

    move-wide/from16 v17, v29

    invoke-direct/range {v13 .. v18}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    move-wide/from16 v15, v17

    invoke-virtual {v1, v13, v2}, Lg/bsz;->ax(Lg/ctf;Lg/afh;)V

    goto :goto_c

    :cond_10
    move-wide/from16 v15, v29

    :goto_c
    invoke-virtual/range {p0 .. p1}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    if-nez v22, :cond_11

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v8, v2, Lg/afh;->zza:Ljava/lang/String;

    const-string v9, "_f"

    invoke-virtual {v0, v8, v9}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v0

    const/4 v13, 0x0

    goto :goto_d

    :cond_11
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v8, v2, Lg/afh;->zza:Ljava/lang/String;

    const-string v9, "_v"

    invoke-virtual {v0, v8, v9}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v0

    const/4 v13, 0x1

    :goto_d
    if-nez v0, :cond_26

    const-wide/32 v8, 0x36ee80

    div-long v10, v15, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long v10, v10, v26

    mul-long v10, v10, v8

    const-string v8, "_dac"

    const-string v9, "_et"

    const-string v14, "_r"

    const-string v12, "_c"

    if-nez v13, :cond_24

    :try_start_5
    new-instance v13, Lg/cmd;

    move-object/from16 v17, v14

    const-string v14, "_fot"

    move-object/from16 v18, v17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v10, v18

    const-string v18, "auto"

    invoke-direct/range {v13 .. v18}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v11, v1, Lg/bsz;->n:Lg/yh;

    invoke-static {v11}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v2, Lg/afh;->zza:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_12
    const/4 v6, 0x1

    goto/16 :goto_11

    :cond_13
    iget-object v13, v11, Lg/yh;->a:Lg/cyg;

    iget-object v13, v13, Lg/cyg;->j:Lg/fth;

    invoke-static {v13}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v13}, Lg/fth;->_e()V

    invoke-virtual {v11}, Lg/yh;->b()Z

    move-result v13

    if-nez v13, :cond_15

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->p:Lg/dvb;

    const-string v6, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_14
    :goto_e
    const/4 v6, 0x1

    goto/16 :goto_12

    :cond_15
    new-instance v13, Lg/emi;

    invoke-direct {v13, v11, v0}, Lg/emi;-><init>(Lg/yh;Ljava/lang/String;)V

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v21, v13

    const-string v13, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v14, v6, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v11, Lg/yh;->a:Lg/cyg;

    iget-object v13, v13, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_16

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->j:Lg/dvb;

    const-string v6, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    invoke-virtual {v0, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_19

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_19

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_14

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_18

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v11}, Lg/yh;->b()Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lg/aoy;->m()Lg/aoy;

    move-result-object v17

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v23}, Lg/aoy;->u(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v6, 0x1

    :try_start_7
    iget-object v13, v11, Lg/yh;->a:Lg/cyg;

    iget-object v13, v13, Lg/cyg;->z:Lg/bgm;

    invoke-static {v13}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v13, v13, Lg/bgm;->c:Lg/dvb;

    const-string v14, "Install Referrer Service is"
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v17, "available"

    const-string v18, "not available"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eq v6, v0, :cond_17

    move-object/from16 v0, v18

    goto :goto_f

    :cond_17
    move-object/from16 v0, v17

    :goto_f
    :try_start_9
    invoke-virtual {v13, v0, v14}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    const/4 v6, 0x1

    :goto_10
    :try_start_a
    iget-object v11, v11, Lg/yh;->a:Lg/cyg;

    iget-object v11, v11, Lg/cyg;->z:Lg/bgm;

    invoke-static {v11}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v11, v11, Lg/bgm;->b:Lg/dvb;

    const-string v13, "Exception occurred while binding to Install Referrer Service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    :cond_18
    const/4 v6, 0x1

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v11, "Play Store version 8.3.73 or higher required for Install Referrer"

    invoke-virtual {v0, v11}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_12

    :cond_19
    const/4 v6, 0x1

    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->p:Lg/dvb;

    const-string v11, "Play Service for fetching Install Referrer is unavailable on device"

    invoke-virtual {v0, v11}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    iget-object v0, v11, Lg/yh;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->j:Lg/dvb;

    const-string v11, "Install Referrer Reporter was called with invalid app package name"

    invoke-virtual {v0, v11}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v13, v26

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v11, v10, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v7, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v11, v5, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v11, v4, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v11, v3, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v9, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, v2, Lg/afh;->zzp:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v11, v8, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1a
    iget-object v8, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v8}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v8}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    invoke-virtual {v0, v8}, Lg/ggz;->am(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1b
    :goto_13
    const-wide/16 v24, 0x0

    goto/16 :goto_1b

    :cond_1c
    :try_start_b
    invoke-static/range {v28 .. v28}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v8}, Lg/ccb;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v19
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v0, v19

    goto :goto_14

    :catch_5
    move-exception v0

    :try_start_c
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v9

    iget-object v9, v9, Lg/bgm;->b:Lg/dvb;

    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v12

    invoke-virtual {v9, v12, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_21

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v24, 0x0

    cmp-long v12, v9, v24

    if-eqz v12, :cond_21

    move-object/from16 v17, v7

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v9, v6

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v6, Lg/gad;->ac:Lg/tw;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v24, 0x0

    cmp-long v0, v13, v24

    if-nez v0, :cond_1d

    move-object/from16 v6, v17

    const-wide/16 v9, 0x1

    invoke-virtual {v11, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x0

    :goto_15
    const/4 v13, 0x0

    goto :goto_17

    :cond_1d
    :goto_16
    move-wide v6, v13

    goto :goto_15

    :cond_1e
    move-object/from16 v6, v17

    const-wide/16 v9, 0x1

    invoke-virtual {v11, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_16

    :cond_1f
    move-wide v6, v13

    const/4 v13, 0x1

    :goto_17
    new-instance v0, Lg/cmd;

    const-string v14, "_fi"

    const/4 v12, 0x1

    if-eq v12, v13, :cond_20

    const-wide/16 v12, 0x0

    goto :goto_18

    :cond_20
    const-wide/16 v12, 0x1

    :goto_18
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-wide v13, v6

    :cond_21
    :try_start_d
    invoke-static/range {v28 .. v28}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v8}, Lg/ccb;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_19

    :catch_6
    move-exception v0

    :try_start_e
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v6

    iget-object v6, v6, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v8}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v12, 0x0

    :goto_19
    if-eqz v12, :cond_1b

    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v22, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    const-wide/16 v9, 0x1

    invoke-virtual {v11, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1a

    :cond_22
    const-wide/16 v9, 0x1

    :goto_1a
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    invoke-virtual {v11, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_13

    :goto_1b
    cmp-long v0, v13, v24

    if-ltz v0, :cond_23

    invoke-virtual {v11, v5, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_23
    new-instance v13, Lg/ctf;

    move-wide/from16 v17, v15

    new-instance v15, Lg/cde;

    invoke-direct {v15, v11}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_f"

    const-string v16, "auto"

    invoke-direct/range {v13 .. v18}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->br(Lg/ctf;Lg/afh;)V

    goto :goto_1c

    :cond_24
    move-object v3, v14

    new-instance v13, Lg/cmd;

    const-string v14, "_fvt"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    invoke-direct/range {v13 .. v18}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v9, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v3, v2, Lg/afh;->zzp:Z

    if-eqz v3, :cond_25

    invoke-virtual {v0, v8, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_25
    new-instance v13, Lg/ctf;

    move-wide/from16 v17, v15

    new-instance v15, Lg/cde;

    invoke-direct {v15, v0}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_v"

    const-string v16, "auto"

    invoke-direct/range {v13 .. v18}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->br(Lg/ctf;Lg/afh;)V

    goto :goto_1c

    :cond_26
    iget-boolean v0, v2, Lg/afh;->zzi:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v13, Lg/ctf;

    move-wide/from16 v17, v15

    new-instance v15, Lg/cde;

    invoke-direct {v15, v0}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_cd"

    const-string v16, "auto"

    invoke-direct/range {v13 .. v18}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    invoke-virtual {v1, v13, v2}, Lg/bsz;->br(Lg/ctf;Lg/afh;)V

    :cond_27
    :goto_1c
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :goto_1d
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/ggz;->an()V

    throw v0

    :cond_28
    return-void
.end method

.method public final bi()V
    .locals 2

    iget-boolean v0, p0, Lg/bsz;->ae:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bj(Lg/bou;Lg/afh;)V
    .locals 9

    iget-object v0, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v0, v0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    invoke-static {p2}, Lg/bsz;->ah(Lg/afh;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lg/afh;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ap()V

    :try_start_0
    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    iget-object v0, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v2, v2, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lg/ggz;->au(Ljava/lang/String;Ljava/lang/String;)Lg/bou;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lg/bsz;->m:Lg/cyg;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->o:Lg/dvb;

    const-string v4, "Removing conditional user property"

    iget-object v5, p1, Lg/bou;->zza:Ljava/lang/String;

    iget-object v2, v2, Lg/cyg;->af:Lg/ebl;

    iget-object v6, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v6, v6, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v4, v2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lg/ggz;->bh(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lg/bou;->zze:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object v3, v3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lg/ggz;->aq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    :goto_0
    iget-object v0, p1, Lg/bou;->zzk:Lg/ctf;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lg/ctf;->zzb:Lg/cde;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/cde;->zzc()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v2

    iget-object v0, p1, Lg/bou;->zzk:Lg/ctf;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v3, v0, Lg/ctf;->zza:Ljava/lang/String;

    iget-object v5, v1, Lg/bou;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lg/bou;->zzk:Lg/ctf;

    iget-wide v6, p1, Lg/ctf;->zzd:J

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lg/bsz;->bk(Lg/ctf;Lg/afh;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->g:Lg/dvb;

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v1

    iget-object v2, v2, Lg/cyg;->af:Lg/ebl;

    iget-object p1, p1, Lg/bou;->zzc:Lg/cmd;

    iget-object p1, p1, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->av()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/ggz;->an()V

    return-void

    :goto_4
    iget-object p2, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    throw p1

    :cond_5
    invoke-virtual {p0, p2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void
.end method

.method public final bk(Lg/ctf;Lg/afh;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "metadata_fingerprint"

    const-string v4, "app_id"

    const-string v5, "raw_events"

    const-string v6, "_sno"

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v7, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v9

    invoke-virtual {v9}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    iget-object v9, v1, Lg/bsz;->e:Lg/fit;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v10, v9, Lg/bgf;->z:Ljava/lang/Object;

    move-object/from16 v27, v10

    check-cast v27, Lg/cyg;

    iget-object v10, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lg/afh;->zzq:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    return-void

    :cond_0
    iget-boolean v10, v2, Lg/afh;->zzh:Z

    if-eqz v10, :cond_3e

    iget-object v10, v1, Lg/bsz;->u:Lg/dqu;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v12, v0, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lg/dqu;->ar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const-string v13, "_err"

    iget-object v14, v1, Lg/bsz;->r:Lg/ecv;

    iget-object v15, v1, Lg/bsz;->m:Lg/cyg;

    move-wide/from16 v28, v7

    const/4 v7, 0x0

    if-eqz v12, :cond_4

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->x()Lg/dvb;

    move-result-object v2

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v15}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v4

    iget-object v5, v0, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blocked event. appId"

    invoke-virtual {v2, v3, v5, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v2, "measurement.upload.blacklist_internal"

    invoke-virtual {v10, v11, v2}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v2, "measurement.upload.blacklist_public"

    invoke-virtual {v10, v11, v2}, Lg/dqu;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-object v10, v14

    iget-object v14, v0, Lg/ctf;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v12, 0xb

    const-string v13, "_ev"

    invoke-static/range {v10 .. v15}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v11}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v3, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-wide v3, v0, Lg/cyo;->ab:J

    iget-object v2, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v2}, Lg/fth;->_e()V

    iget-wide v5, v0, Lg/cyo;->m:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v4

    check-cast v4, Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v4, Lg/gad;->b:Lg/tw;

    invoke-virtual {v4, v7}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->o:Lg/dvb;

    const-string v3, "Fetching config for blocked app"

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/bsz;->au(Lg/cyo;)V

    :cond_3
    return-void

    :cond_4
    move-object v8, v14

    invoke-static {v0}, Lg/dhh;->f(Lg/ctf;)Lg/dhh;

    move-result-object v0

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v12

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lg/gad;->bp:Lg/tw;

    move-object/from16 v17, v8

    const/16 v8, 0x64

    invoke-virtual {v14, v11, v7}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v8, 0x19

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v12, v0, v7}, Lg/dkq;->ca(Lg/dhh;I)V

    invoke-virtual {v0}, Lg/dhh;->j()Lg/ctf;

    move-result-object v7

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->w()Lg/dvb;

    move-result-object v0

    invoke-virtual {v15}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v8

    invoke-virtual {v8, v7}, Lg/ebl;->k(Lg/ctf;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "Logging event"

    invoke-virtual {v0, v8, v12}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ap()V

    :try_start_0
    invoke-virtual {v1, v2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    const-string v0, "ecommerce_purchase"

    iget-object v8, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "refund"

    const/16 v31, 0x1

    if-nez v0, :cond_6

    :try_start_1
    const-string v0, "purchase"

    iget-object v14, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :goto_1
    const-string v14, "_iap"

    iget-object v12, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v32, v10

    move-object v8, v13

    move-object/from16 v33, v15

    :cond_9
    :goto_2
    move-object/from16 v21, v17

    goto/16 :goto_9

    :cond_a
    :goto_3
    iget-object v12, v7, Lg/ctf;->zzb:Lg/cde;

    const-string v14, "currency"

    invoke-virtual {v12, v14}, Lg/cde;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "value"

    if-eqz v0, :cond_d

    :try_start_2
    iget-object v0, v7, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v0, v14}, Lg/cde;->zzd(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    const-wide/16 v22, 0x0

    cmpl-double v0, v18, v22

    if-nez v0, :cond_b

    iget-object v0, v7, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v0, v14}, Lg/cde;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v16, v13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    mul-double v18, v13, v20

    goto :goto_4

    :cond_b
    move-object/from16 v16, v13

    :goto_4
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v18, v13

    if-gtz v0, :cond_c

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v18, v13

    if-ltz v0, :cond_c

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v0, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    neg-long v13, v13

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v2, "Data lost. Currency value is too big. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :cond_d
    move-object/from16 v16, v13

    :try_start_3
    iget-object v0, v7, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v0, v14}, Lg/cde;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_e
    :goto_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "[A-Z]{3}"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "_ltv_"

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v11, v8}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lg/ffu;->b:Ljava/lang/Object;

    instance-of v12, v0, Ljava/lang/Long;

    if-nez v12, :cond_10

    :cond_f
    move-object/from16 v32, v10

    move-wide/from16 v21, v13

    move-object/from16 v33, v15

    move-object v13, v8

    move-object/from16 v8, v16

    goto :goto_6

    :cond_10
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v12, v10

    new-instance v10, Lg/ffu;

    move-object/from16 v20, v12

    iget-object v12, v7, Lg/ctf;->zzc:Ljava/lang/String;

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v21, v13

    move-object v13, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v33, v13

    move-object/from16 v32, v20

    move-object v13, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_8

    :goto_6
    iget-object v10, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v12, Lg/gad;->bq:Lg/tw;

    invoke-virtual {v0, v11, v12}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v11}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v10}, Lg/bgf;->_e()V

    invoke-virtual {v10}, Lg/aiq;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v10}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v11, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v14, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    invoke-virtual {v12, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v10, v10, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v10, Lg/cyg;

    invoke-virtual {v10}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v10

    invoke-virtual {v10}, Lg/bgm;->v()Lg/dvb;

    move-result-object v10

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v14

    invoke-virtual {v10, v14, v12, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    new-instance v10, Lg/ffu;

    iget-object v12, v7, Lg/ctf;->zzc:Ljava/lang/String;

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-direct/range {v10 .. v16}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_8
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v10}, Lg/ggz;->bc(Lg/ffu;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v14

    iget-object v15, v10, Lg/ffu;->e:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v10, v10, Lg/ffu;->b:Ljava/lang/Object;

    invoke-virtual {v0, v12, v13, v14, v10}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v12, 0x9

    const/4 v13, 0x0

    move-object/from16 v10, v17

    invoke-static/range {v10 .. v15}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v21, v10

    goto :goto_9

    :cond_11
    move-object/from16 v32, v10

    move-object/from16 v33, v15

    move-object/from16 v8, v16

    goto/16 :goto_2

    :goto_9
    iget-object v0, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/dkq;->t(Ljava/lang/String;)Z

    move-result v17

    iget-object v0, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    iget-object v0, v7, Lg/ctf;->zzb:Lg/cde;

    if-nez v0, :cond_12

    const-wide/16 v14, 0x0

    goto :goto_b

    :cond_12
    invoke-static {v0}, Lg/cde;->zzb(Lg/cde;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v14, 0x0

    :cond_13
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lg/cde;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, [Landroid/os/Parcelable;

    if-eqz v12, :cond_13

    check-cast v10, [Landroid/os/Parcelable;

    array-length v10, v10

    int-to-long v12, v10

    add-long/2addr v14, v12

    goto :goto_a

    :cond_14
    :goto_b
    const-wide/16 v24, 0x1

    add-long v14, v14, v24

    iget-object v10, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    move-object v13, v11

    invoke-virtual {v1}, Lg/bsz;->bs()J

    move-result-wide v11

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x1

    move-object v8, v3

    move-object/from16 v34, v4

    const-wide/16 v3, 0x0

    invoke-virtual/range {v10 .. v20}, Lg/ggz;->v(JLjava/lang/String;JZZZZZ)Lg/fyy;

    move-result-object v0

    move-object v11, v13

    move/from16 v18, v17

    iget-wide v12, v0, Lg/fyy;->d:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v10, Lg/gad;->e:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v14, v10

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    cmp-long v10, v12, v3

    if-lez v10, :cond_16

    rem-long/2addr v12, v14

    cmp-long v2, v12, v24

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    iget-wide v5, v0, Lg/fyy;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :cond_16
    if-eqz v18, :cond_18

    :try_start_6
    iget-wide v12, v0, Lg/fyy;->c:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    sget-object v10, Lg/gad;->aq:Lg/tw;

    move-wide/from16 v16, v14

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v14, v10

    sub-long/2addr v12, v14

    cmp-long v10, v12, v3

    if-lez v10, :cond_18

    rem-long v12, v12, v16

    cmp-long v2, v12, v24

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    iget-wide v5, v0, Lg/fyy;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    const-string v13, "_ev"

    iget-object v14, v7, Lg/ctf;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v12, 0x10

    move-object/from16 v10, v21

    invoke-static/range {v10 .. v15}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :cond_18
    const v10, 0xf4240

    if-eqz v19, :cond_1a

    :try_start_7
    iget-wide v12, v0, Lg/fyy;->a:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v14

    iget-object v15, v2, Lg/afh;->zza:Ljava/lang/String;

    move-wide/from16 v35, v3

    sget-object v3, Lg/gad;->v:Lg/tw;

    invoke-virtual {v14, v15, v3}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v12, v3

    cmp-long v3, v12, v35

    if-lez v3, :cond_1b

    cmp-long v2, v12, v24

    if-nez v2, :cond_19

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    iget-wide v5, v0, Lg/fyy;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :cond_1a
    move-wide/from16 v35, v3

    :cond_1b
    :try_start_8
    iget-object v0, v7, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v0}, Lg/cde;->zzc()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    const-string v4, "_o"

    iget-object v12, v7, Lg/ctf;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v12}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v12, 0x0

    goto :goto_c

    :cond_1c
    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    const-string v4, "debug.firebase.analytics.app"

    invoke-virtual {v0, v4}, Lg/dsd;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_c
    const-string v4, "_r"

    if-eqz v12, :cond_1d

    :try_start_9
    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "_dbg"

    invoke-virtual {v0, v3, v13, v12}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v12}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    const-string v0, "_s"

    iget-object v12, v7, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v12, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v12, v6}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v12, v0, Lg/ffu;->b:Ljava/lang/Object;

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_1e

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v12

    iget-object v0, v0, Lg/ffu;->b:Ljava/lang/Object;

    invoke-virtual {v12, v3, v6, v0}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    iget-object v6, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v11}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/bgf;->_e()V

    invoke-virtual {v6}, Lg/aiq;->n()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v6}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v12, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v12, Lg/cyg;

    iget-object v12, v12, Lg/cyg;->e:Lg/dsd;

    sget-object v13, Lg/gad;->ap:Lg/tw;

    invoke-virtual {v12, v11, v13}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v12, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    invoke-virtual {v0, v5, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    int-to-long v12, v0

    goto :goto_d

    :catch_1
    move-exception v0

    :try_start_b
    iget-object v6, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    invoke-virtual {v6}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v6

    invoke-virtual {v6}, Lg/bgm;->v()Lg/dvb;

    move-result-object v6

    const-string v10, "Error deleting over the limit events. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v12

    invoke-virtual {v6, v12, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v12, v35

    :goto_d
    cmp-long v0, v12, v35

    if-lez v0, :cond_1f

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v10, v6, v12}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    new-instance v10, Lg/fmv;

    move-object v13, v11

    iget-object v11, v1, Lg/bsz;->m:Lg/cyg;

    iget-object v12, v7, Lg/ctf;->zzc:Ljava/lang/String;

    iget-object v14, v7, Lg/ctf;->zza:Ljava/lang/String;

    iget-wide v6, v7, Lg/ctf;->zzd:J

    move-object/from16 v17, v3

    move-wide v15, v6

    invoke-direct/range {v10 .. v17}, Lg/fmv;-><init>(Lg/cyg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    move-object v0, v10

    move-object v11, v13

    iget-object v3, v0, Lg/fmv;->e:Ljava/lang/String;

    iget-object v6, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6, v11, v3}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v6

    if-nez v6, :cond_21

    iget-object v6, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6, v11}, Lg/ggz;->u(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lg/gad;->g:Lg/tw;

    invoke-virtual {v10, v11, v12}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v10

    const/16 v13, 0x7d0

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/16 v14, 0x1f4

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v14, v10

    cmp-long v10, v6, v14

    if-ltz v10, :cond_20

    if-eqz v18, :cond_20

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v5

    invoke-virtual {v5, v3}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v5

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v3, v5}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/bsz;->ap()Lg/dkq;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object/from16 v10, v21

    invoke-static/range {v10 .. v15}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    return-void

    :cond_20
    :try_start_c
    new-instance v10, Lg/bwz;

    iget-object v12, v0, Lg/fmv;->e:Ljava/lang/String;

    iget-wide v6, v0, Lg/fmv;->a:J

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v19, v6

    invoke-direct/range {v10 .. v26}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v3, v0

    move-object/from16 v13, v33

    goto :goto_e

    :cond_21
    iget-wide v10, v6, Lg/bwz;->f:J

    move-object/from16 v13, v33

    invoke-virtual {v0, v13, v10, v11}, Lg/fmv;->g(Lg/cyg;J)Lg/fmv;

    move-result-object v10

    iget-wide v11, v10, Lg/fmv;->a:J

    invoke-virtual {v6, v11, v12}, Lg/bwz;->m(J)Lg/bwz;

    move-result-object v0

    move-object v3, v10

    move-object v10, v0

    :goto_e
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v10}, Lg/ggz;->bi(Lg/bwz;)V

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {v1}, Lg/bsz;->bi()V

    iget-object v0, v3, Lg/fmv;->c:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, v3, Lg/fmv;->c:Ljava/lang/String;

    iget-object v6, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lg/ckd;->u(Z)V

    invoke-static {}, Lg/fzb;->bh()Lg/epg;

    move-result-object v6

    invoke-virtual {v6}, Lg/epg;->b()V

    invoke-virtual {v6}, Lg/epg;->ba()V

    iget-object v0, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->al(Ljava/lang/String;)V

    :cond_22
    iget-object v0, v2, Lg/afh;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v2, Lg/afh;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->e(Ljava/lang/String;)V

    :cond_23
    iget-object v0, v2, Lg/afh;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v2, Lg/afh;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->ak(Ljava/lang/String;)V

    :cond_24
    invoke-static {}, Lg/eur;->c()V

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v7, Lg/gad;->o:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v7}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v2, Lg/afh;->zzx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v2, Lg/afh;->zzx:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->c(Ljava/lang/String;)V

    :cond_25
    iget-wide v10, v2, Lg/afh;->zzj:J

    const-wide/32 v14, -0x80000000

    cmp-long v0, v10, v14

    if-eqz v0, :cond_26

    long-to-int v0, v10

    invoke-virtual {v6, v0}, Lg/epg;->ar(I)V

    :cond_26
    iget-wide v10, v2, Lg/afh;->zze:J

    invoke-virtual {v6, v10, v11}, Lg/epg;->v(J)V

    iget-object v0, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->as(Ljava/lang/String;)V

    :cond_27
    iget-object v0, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v0

    iget-object v7, v2, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v7}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v7

    invoke-virtual {v0, v7}, Lg/rs;->h(Lg/rs;)Lg/rs;

    move-result-object v0

    invoke-virtual {v0}, Lg/rs;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lg/epg;->at(Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/epg;->an()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v2, Lg/afh;->zzq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v2, Lg/afh;->zzq:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lg/epg;->w(Ljava/lang/String;)V

    :cond_28
    iget-wide v10, v2, Lg/afh;->zzf:J

    cmp-long v0, v10, v35

    if-eqz v0, :cond_29

    invoke-virtual {v6, v10, v11}, Lg/epg;->y(J)V

    :cond_29
    iget-wide v10, v2, Lg/afh;->zzs:J

    invoke-virtual {v6, v10, v11}, Lg/epg;->bb(J)V

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v9, Lg/af;->a:Lg/bsz;

    iget-object v0, v0, Lg/bsz;->m:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzau()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/gad;->bz(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2b

    :cond_2a
    :goto_f
    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_2b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lg/gad;->at:Lg/tw;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2c
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "measurement.id."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v12, :cond_2c

    :try_start_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v10, :cond_2c

    invoke-virtual/range {v27 .. v27}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    const-string v12, "Too many experiment IDs. Number of IDs"

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14, v12}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_11

    :catch_2
    move-exception v0

    :try_start_e
    invoke-virtual/range {v27 .. v27}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v12

    invoke-virtual {v12}, Lg/bgm;->x()Lg/dvb;

    move-result-object v12

    const-string v14, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v0, v14}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_2d
    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_f

    :cond_2e
    :goto_12
    if-eqz v7, :cond_2f

    invoke-virtual {v6, v7}, Lg/epg;->t(Ljava/util/ArrayList;)V

    :cond_2f
    iget-object v0, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v0

    iget-object v7, v2, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v7}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v7

    invoke-virtual {v0, v7}, Lg/rs;->h(Lg/rs;)Lg/rs;

    move-result-object v0

    sget-object v7, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v0, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v10

    if-eqz v10, :cond_31

    iget-boolean v10, v2, Lg/afh;->zzo:Z

    if-eqz v10, :cond_31

    iget-object v10, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-virtual {v10, v11}, Lg/aaq;->j(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    goto :goto_13

    :cond_30
    new-instance v10, Landroid/util/Pair;

    const-string v11, ""

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_31

    iget-boolean v11, v2, Lg/afh;->zzo:Z

    if-eqz v11, :cond_31

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lg/epg;->az(Ljava/lang/String;)V

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_31

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v10}, Lg/epg;->z(Z)V

    :cond_31
    invoke-virtual {v13}, Lg/cyg;->ar()Lg/auk;

    move-result-object v10

    invoke-virtual {v10}, Lg/bkw;->an()V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Lg/epg;->af()V

    invoke-virtual {v13}, Lg/cyg;->ar()Lg/auk;

    move-result-object v10

    invoke-virtual {v10}, Lg/bkw;->an()V

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-boolean v11, v6, Lg/crf;->i:Z

    if-eqz v11, :cond_32

    invoke-virtual {v6}, Lg/crf;->p()V

    const/4 v12, 0x0

    iput-boolean v12, v6, Lg/crf;->i:Z

    goto :goto_14

    :cond_32
    const/4 v12, 0x0

    :goto_14
    iget-object v11, v6, Lg/crf;->k:Lg/cys;

    check-cast v11, Lg/fzb;

    invoke-static {v11, v10}, Lg/fzb;->ap(Lg/fzb;Ljava/lang/String;)V

    invoke-virtual {v13}, Lg/cyg;->ar()Lg/auk;

    move-result-object v10

    invoke-virtual {v10}, Lg/auk;->k()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v6, v11}, Lg/epg;->ac(I)V

    invoke-virtual {v13}, Lg/cyg;->ar()Lg/auk;

    move-result-object v10

    invoke-virtual {v10}, Lg/auk;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lg/epg;->ao(Ljava/lang/String;)V

    invoke-virtual {v13}, Lg/cyg;->as()Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v6}, Lg/epg;->g()Ljava/lang/String;

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_15

    :cond_33
    invoke-virtual {v6}, Lg/epg;->ah()V

    throw v30

    :cond_34
    :goto_15
    iget-object v10, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v10}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v10

    if-nez v10, :cond_36

    new-instance v10, Lg/cyo;

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-direct {v10, v13, v11}, Lg/cyo;-><init>(Lg/cyg;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/bsz;->ba(Lg/rs;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/cyo;->bj(Ljava/lang/String;)V

    iget-object v11, v2, Lg/afh;->zzk:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lg/cyo;->bf(Ljava/lang/String;)V

    iget-object v11, v2, Lg/afh;->zzb:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lg/cyo;->bo(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, v1, Lg/bsz;->y:Lg/aaq;

    iget-object v11, v2, Lg/afh;->zza:Ljava/lang/String;

    iget-boolean v13, v2, Lg/afh;->zzo:Z

    invoke-virtual {v7, v11, v13}, Lg/aaq;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lg/cyo;->ak(Ljava/lang/String;)V

    :cond_35
    move-wide/from16 v13, v35

    invoke-virtual {v10, v13, v14}, Lg/cyo;->av(J)V

    invoke-virtual {v10, v13, v14}, Lg/cyo;->aw(J)V

    invoke-virtual {v10, v13, v14}, Lg/cyo;->as(J)V

    iget-object v7, v2, Lg/afh;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v7}, Lg/cyo;->aq(Ljava/lang/String;)V

    iget-wide v13, v2, Lg/afh;->zzj:J

    invoke-virtual {v10, v13, v14}, Lg/cyo;->ax(J)V

    iget-object v7, v2, Lg/afh;->zzd:Ljava/lang/String;

    invoke-virtual {v10, v7}, Lg/cyo;->an(Ljava/lang/String;)V

    iget-wide v13, v2, Lg/afh;->zze:J

    invoke-virtual {v10, v13, v14}, Lg/cyo;->az(J)V

    iget-wide v13, v2, Lg/afh;->zzf:J

    invoke-virtual {v10, v13, v14}, Lg/cyo;->am(J)V

    iget-boolean v7, v2, Lg/afh;->zzh:Z

    invoke-virtual {v10, v7}, Lg/cyo;->bm(Z)V

    iget-wide v13, v2, Lg/afh;->zzs:J

    invoke-virtual {v10, v13, v14}, Lg/cyo;->aj(J)V

    iget-object v7, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v7, v10}, Lg/ggz;->ax(Lg/cyo;)V

    :cond_36
    sget-object v7, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v0, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {v10}, Lg/cyo;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v10}, Lg/cyo;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/epg;->u(Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v10}, Lg/cyo;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {v10}, Lg/cyo;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lg/epg;->a(Ljava/lang/String;)V

    :cond_38
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/ggz;->bf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_39

    invoke-static {}, Lg/ne;->b()Lg/eft;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ffu;

    iget-object v10, v10, Lg/ffu;->e:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lg/eft;->a(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ffu;

    iget-wide v10, v10, Lg/ffu;->a:J

    invoke-virtual {v7, v10, v11}, Lg/eft;->b(J)V

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ffu;

    iget-object v10, v10, Lg/ffu;->b:Ljava/lang/Object;

    invoke-virtual {v9, v7, v10}, Lg/fit;->an(Lg/eft;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lg/epg;->ad(Lg/eft;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_39
    :try_start_f
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v6}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lg/fzb;

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2}, Lg/aiq;->n()V

    invoke-virtual {v7}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v7}, Lg/cir;->z()[B

    move-result-object v0

    iget-object v9, v2, Lg/af;->a:Lg/bsz;

    iget-object v9, v9, Lg/bsz;->e:Lg/fit;

    invoke-static {v9}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v9, v0}, Lg/fit;->av([B)J

    move-result-wide v9

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v34

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    invoke-virtual {v11, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {v2}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v13, "raw_events_metadata"

    const/4 v15, 0x4

    const/4 v12, 0x0

    invoke-virtual {v0, v13, v12, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v3, Lg/fmv;->d:Lg/cde;

    invoke-static {v0}, Lg/cde;->zzb(Lg/cde;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :goto_17
    const/4 v12, 0x1

    goto :goto_18

    :cond_3b
    invoke-static/range {v32 .. v32}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v3, Lg/fmv;->c:Ljava/lang/String;

    iget-object v4, v3, Lg/fmv;->e:Ljava/lang/String;

    move-object/from16 v12, v32

    invoke-virtual {v12, v0, v4}, Lg/dqu;->al(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v15, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v15}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/bsz;->bs()J

    move-result-wide v16

    iget-object v4, v3, Lg/fmv;->c:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v15 .. v25}, Lg/ggz;->v(JLjava/lang/String;JZZZZZ)Lg/fyy;

    move-result-object v4

    if-eqz v0, :cond_3c

    iget-wide v6, v4, Lg/fyy;->b:J

    invoke-virtual {v1}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    iget-object v4, v3, Lg/fmv;->c:Ljava/lang/String;

    sget-object v11, Lg/gad;->k:Lg/tw;

    invoke-virtual {v0, v4, v11}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v6, v11

    if-gez v0, :cond_3c

    goto :goto_17

    :cond_3c
    const/4 v12, 0x0

    :goto_18
    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2}, Lg/aiq;->n()V

    iget-object v0, v3, Lg/fmv;->c:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, v2, Lg/af;->a:Lg/bsz;

    iget-object v0, v0, Lg/bsz;->e:Lg/fit;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0, v3}, Lg/fit;->ao(Lg/fmv;)Lg/kk;

    move-result-object v0

    invoke-virtual {v0}, Lg/cir;->z()[B

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, v3, Lg/fmv;->c:Ljava/lang/String;

    invoke-virtual {v4, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    iget-object v7, v3, Lg/fmv;->e:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "timestamp"

    iget-wide v13, v3, Lg/fmv;->a:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "data"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "realtime"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    invoke-virtual {v2}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v5, v14, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3d

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v5, v3, Lg/fmv;->c:Ljava/lang/String;

    invoke-static {v5}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_19

    :cond_3d
    const-wide/16 v13, 0x0

    :try_start_13
    iput-wide v13, v1, Lg/bsz;->h:J

    goto :goto_1b

    :goto_19
    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v3, v3, Lg/fmv;->c:Ljava/lang/String;

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1a

    :catch_5
    move-exception v0

    :try_start_14
    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Error storing raw event metadata. appId"

    invoke-virtual {v7}, Lg/fzb;->ch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :goto_1a
    :try_start_15
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v6}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1b
    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->av()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    iget-object v0, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->an()V

    invoke-virtual {v1}, Lg/bsz;->ar()V

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->w()Lg/dvb;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v28

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-virtual {v0, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_1c
    iget-object v2, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/ggz;->an()V

    throw v0

    :cond_3e
    invoke-virtual {v1, v2}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void
.end method

.method public final bl()Z
    .locals 5

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    const-string v1, "select count(1) > 0 from raw_events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/ggz;->ar(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/ggz;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bm()Lg/dsd;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    return-object v0
.end method

.method public final bn(Ljava/lang/String;Lg/epg;)V
    .locals 9

    invoke-static {}, Lg/fui;->c()V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v1, Lg/gad;->bk:Lg/tw;

    invoke-virtual {v0, p1, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lg/bsz;->u:Lg/dqu;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-boolean v3, p2, Lg/crf;->i:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_0
    iget-object v3, p2, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-static {v3, v0}, Lg/fzb;->as(Lg/fzb;Ljava/util/Set;)V

    :cond_1
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v3, Lg/gad;->bm:Lg/tw;

    invoke-virtual {v0, p1, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_9

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "device_info"

    if-eqz v4, :cond_4

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v6, "device_model"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v4, p2, Lg/crf;->i:Z

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_3
    iget-object v4, p2, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/fzb;

    invoke-static {v4}, Lg/fzb;->ar(Lg/fzb;)V

    :cond_4
    :goto_0
    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v6, "os_version"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v4, Lg/gad;->bx:Lg/tw;

    invoke-virtual {v0, p1, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-virtual {v0}, Lg/fzb;->cx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_9

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p2, Lg/crf;->i:Z

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_6
    iget-object v4, p2, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/fzb;

    invoke-static {v4, v0}, Lg/fzb;->ap(Lg/fzb;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-boolean v0, p2, Lg/crf;->i:Z

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_8
    iget-object v0, p2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0}, Lg/fzb;->be(Lg/fzb;)V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v4, Lg/gad;->i:Lg/tw;

    invoke-virtual {v0, p1, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v4, "user_id"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "_id"

    invoke-static {v0, p2}, Lg/fit;->q(Ljava/lang/String;Lg/epg;)I

    move-result v0

    if-eq v0, v3, :cond_b

    iget-boolean v3, p2, Lg/crf;->i:Z

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_a
    iget-object v3, p2, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-static {v3, v0}, Lg/fzb;->v(Lg/fzb;I)V

    :cond_b
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v3, Lg/gad;->av:Lg/tw;

    invoke-virtual {v0, p1, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v3, "google_signals"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p2, Lg/crf;->i:Z

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_c
    iget-object v0, p2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0}, Lg/fzb;->ax(Lg/fzb;)V

    :cond_d
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v3, Lg/gad;->bn:Lg/tw;

    invoke-virtual {v0, p1, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v3, "app_instance_id"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p2, Lg/crf;->i:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_e
    iget-object v0, p2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/fzb;

    invoke-static {v0}, Lg/fzb;->au(Lg/fzb;)V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v3, Lg/gad;->a:Lg/tw;

    invoke-virtual {v0, p1, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lg/bsz;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dzl;

    if-eqz v3, :cond_f

    iget-wide v4, v3, Lg/dzl;->b:J

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v6

    sget-object v7, Lg/gad;->bi:Lg/tw;

    invoke-virtual {v6, p1, v7}, Lg/dsd;->o(Ljava/lang/String;Lg/tw;)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v4

    check-cast v4, Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-gez v8, :cond_10

    :cond_f
    new-instance v3, Lg/dzl;

    invoke-virtual {p0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v4

    const/16 v5, 0x10

    new-array v5, v5, [B

    invoke-virtual {v4}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v1

    const-string v6, "%032x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lg/dzl;-><init>(Lg/bsz;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v0, v3, Lg/dzl;->a:Ljava/lang/String;

    iget-boolean v3, p2, Lg/crf;->i:Z

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_11
    iget-object v3, p2, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/fzb;

    invoke-static {v3, v0}, Lg/fzb;->av(Lg/fzb;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    sget-object v3, Lg/gad;->bh:Lg/tw;

    invoke-virtual {v0, p1, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    invoke-virtual {v2, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    iget-object v0, v2, Lg/dqu;->t:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "enhanced_user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p2, Lg/crf;->i:Z

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Lg/crf;->p()V

    iput-boolean v1, p2, Lg/crf;->i:Z

    :cond_13
    iget-object p1, p2, Lg/crf;->k:Lg/cys;

    check-cast p1, Lg/fzb;

    invoke-static {p1}, Lg/fzb;->e(Lg/fzb;)V

    :cond_14
    return-void
.end method

.method public final bo()Lg/gwx;
    .locals 2

    iget-object v0, p0, Lg/bsz;->q:Lg/gwx;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bp(Lg/afh;)Lg/cyo;
    .locals 9

    invoke-virtual {p0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-virtual {p0}, Lg/bsz;->bi()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {}, Lg/fui;->c()V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v0

    iget-object v1, p1, Lg/afh;->zza:Ljava/lang/String;

    sget-object v2, Lg/gad;->bn:Lg/tw;

    invoke-virtual {v0, v1, v2}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/afh;->zzw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    new-instance v1, Lg/dzl;

    iget-object v2, p1, Lg/afh;->zzw:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lg/dzl;-><init>(Lg/bsz;Ljava/lang/String;)V

    iget-object v2, p0, Lg/bsz;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v0

    iget-object v1, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v1

    iget-object v2, p1, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v2}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/rs;->h(Lg/rs;)Lg/rs;

    move-result-object v1

    sget-object v2, Lg/gxx;->zza:Lg/gxx;

    invoke-virtual {v1, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v3, p0, Lg/bsz;->y:Lg/aaq;

    iget-object v5, p1, Lg/afh;->zza:Ljava/lang/String;

    iget-boolean v6, p1, Lg/afh;->zzo:Z

    invoke-virtual {v3, v5, v6}, Lg/aaq;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lg/cyo;

    iget-object v4, p0, Lg/bsz;->m:Lg/cyg;

    iget-object v5, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lg/cyo;-><init>(Lg/cyg;Ljava/lang/String;)V

    sget-object v4, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v1, v4}, Lg/rs;->g(Lg/gxx;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Lg/bsz;->ba(Lg/rs;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/cyo;->bj(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Lg/cyo;->ak(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    iget-object v5, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v5, v5, Lg/cyg;->j:Lg/fth;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v5}, Lg/fth;->_e()V

    iget-object v5, v0, Lg/cyo;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v3}, Lg/cyo;->ak(Ljava/lang/String;)V

    iget-boolean v3, p1, Lg/afh;->zzo:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lg/bsz;->y:Lg/aaq;

    iget-object v5, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v5}, Lg/aaq;->j(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lg/bsz;->ba(Lg/rs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/cyo;->bj(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, p1, Lg/afh;->zza:Ljava/lang/String;

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, p1, Lg/afh;->zza:Ljava/lang/String;

    const-string v3, "_lair"

    invoke-virtual {v1, v2, v3}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v1

    check-cast v1, Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Lg/ffu;

    iget-object v3, p1, Lg/afh;->zza:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    const-string v5, "_lair"

    invoke-direct/range {v2 .. v8}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1, v2}, Lg/ggz;->bc(Lg/ffu;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lg/cyo;->al()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v1, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lg/bsz;->ba(Lg/rs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/cyo;->bj(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v1, v0, Lg/cyo;->k:Lg/cyg;

    iget-object v2, p1, Lg/afh;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cyo;->bo(Ljava/lang/String;)V

    iget-object v2, p1, Lg/afh;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cyo;->bd(Ljava/lang/String;)V

    iget-object v2, p1, Lg/afh;->zzk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lg/afh;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cyo;->bf(Ljava/lang/String;)V

    :cond_7
    iget-wide v2, p1, Lg/afh;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    invoke-virtual {v0, v2, v3}, Lg/cyo;->az(J)V

    :cond_8
    iget-object v2, p1, Lg/afh;->zzc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p1, Lg/afh;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cyo;->aq(Ljava/lang/String;)V

    :cond_9
    iget-wide v2, p1, Lg/afh;->zzj:J

    invoke-virtual {v0, v2, v3}, Lg/cyo;->ax(J)V

    iget-object v2, p1, Lg/afh;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2}, Lg/cyo;->an(Ljava/lang/String;)V

    :cond_a
    iget-wide v2, p1, Lg/afh;->zzf:J

    invoke-virtual {v0, v2, v3}, Lg/cyo;->am(J)V

    iget-boolean v2, p1, Lg/afh;->zzh:Z

    invoke-virtual {v0, v2}, Lg/cyo;->bm(Z)V

    iget-object v2, p1, Lg/afh;->zzg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p1, Lg/afh;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cyo;->bh(Ljava/lang/String;)V

    :cond_b
    iget-boolean v2, p1, Lg/afh;->zzo:Z

    iget-object v3, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-boolean v3, v0, Lg/cyo;->n:Z

    iget-boolean v4, v0, Lg/cyo;->s:Z

    const/4 v5, 0x1

    if-eq v4, v2, :cond_c

    const/4 v4, 0x1

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    :goto_3
    or-int/2addr v3, v4

    iput-boolean v3, v0, Lg/cyo;->n:Z

    iput-boolean v2, v0, Lg/cyo;->s:Z

    iget-object v2, p1, Lg/afh;->zzr:Ljava/lang/Boolean;

    iget-object v3, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-boolean v3, v0, Lg/cyo;->n:Z

    iget-object v4, v0, Lg/cyo;->ae:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    iput-boolean v3, v0, Lg/cyo;->n:Z

    iput-object v2, v0, Lg/cyo;->ae:Ljava/lang/Boolean;

    iget-wide v2, p1, Lg/afh;->zzs:J

    invoke-virtual {v0, v2, v3}, Lg/cyo;->aj(J)V

    invoke-static {}, Lg/eur;->c()V

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v2

    sget-object v3, Lg/gad;->o:Lg/tw;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p1, Lg/afh;->zzx:Ljava/lang/String;

    iget-object v3, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-boolean v3, v0, Lg/cyo;->n:Z

    iget-object v6, v0, Lg/cyo;->l:Ljava/lang/String;

    invoke-static {v6, v2}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    iput-boolean v3, v0, Lg/cyo;->n:Z

    iput-object v2, v0, Lg/cyo;->l:Ljava/lang/String;

    :cond_d
    sget-object v2, Lg/eaj;->a:Lg/eaj;

    iget-object v3, v2, Lg/eaj;->b:Lg/dvf;

    invoke-interface {v3}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hdr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v3

    sget-object v5, Lg/gad;->w:Lg/tw;

    invoke-virtual {v3, v4, v5}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object p1, p1, Lg/afh;->zzt:Ljava/util/List;

    invoke-virtual {v0, p1}, Lg/cyo;->af(Ljava/util/List;)V

    goto :goto_4

    :cond_e
    iget-object p1, v2, Lg/eaj;->b:Lg/dvf;

    invoke-interface {p1}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hdr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object p1

    sget-object v2, Lg/gad;->bl:Lg/tw;

    invoke-virtual {p1, v4, v2}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v0, v4}, Lg/cyo;->af(Ljava/util/List;)V

    :cond_f
    :goto_4
    iget-object p1, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p1}, Lg/fth;->_e()V

    iget-boolean p1, v0, Lg/cyo;->n:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1, v0}, Lg/ggz;->ax(Lg/cyo;)V

    :cond_10
    return-object v0
.end method

.method public final bq(Lg/epg;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const-string v1, "_se"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lg/ggz;->al(Ljava/lang/String;Ljava/lang/String;)Lg/ffu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lg/ffu;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Lg/ffu;

    invoke-virtual {p1}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v4

    check-cast v4, Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v2, Lg/ffu;

    invoke-virtual {p1}, Lg/epg;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v1

    check-cast v1, Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lg/ffu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_3
    invoke-static {}, Lg/ne;->b()Lg/eft;

    move-result-object v1

    invoke-virtual {v1, v5}, Lg/eft;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v3

    check-cast v3, Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lg/eft;->b(J)V

    iget-object v3, v2, Lg/ffu;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lg/eft;->c(J)V

    invoke-virtual {v1}, Lg/crf;->o()Lg/cys;

    move-result-object v1

    check-cast v1, Lg/ne;

    invoke-static {v5, p1}, Lg/fit;->q(Ljava/lang/String;Lg/epg;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    iget-boolean v6, p1, Lg/crf;->i:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v5, p1, Lg/crf;->i:Z

    :cond_3
    iget-object p1, p1, Lg/crf;->k:Lg/cys;

    check-cast p1, Lg/fzb;

    invoke-static {p1, v4, v1}, Lg/fzb;->b(Lg/fzb;ILg/ne;)V

    goto :goto_4

    :cond_4
    iget-boolean v4, p1, Lg/crf;->i:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v5, p1, Lg/crf;->i:Z

    :cond_5
    iget-object p1, p1, Lg/crf;->k:Lg/cys;

    check-cast p1, Lg/fzb;

    invoke-static {p1, v1}, Lg/fzb;->bc(Lg/fzb;Lg/ne;)V

    :goto_4
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_7

    iget-object p1, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {p1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p1, v2}, Lg/ggz;->bc(Lg/ffu;)Z

    if-eq v0, p4, :cond_6

    const-string p1, "lifetime"

    goto :goto_5

    :cond_6
    const-string p1, "session-scoped"

    :goto_5
    invoke-virtual {p0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->c:Lg/dvb;

    const-string p3, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p1, p3, v3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final br(Lg/ctf;Lg/afh;)V
    .locals 11

    iget-object v0, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p1}, Lg/dhh;->f(Lg/ctf;)Lg/dhh;

    move-result-object p1

    invoke-virtual {p0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v1

    iget-object v0, p1, Lg/dhh;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    iget-object v0, p0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v3, p2, Lg/afh;->zza:Ljava/lang/String;

    iget-object v4, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "select parameters from default_event_params where app_id=?"

    invoke-virtual {v6, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Default event parameters not found"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v7, 0x0

    :try_start_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lg/kk;->g()Lg/btw;

    move-result-object v8

    invoke-static {v8, v7}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v7

    check-cast v7, Lg/btw;

    invoke-virtual {v7}, Lg/crf;->o()Lg/cys;

    move-result-object v7

    check-cast v7, Lg/kk;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v0, Lg/af;->a:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->bb()Lg/fit;

    invoke-virtual {v7}, Lg/kk;->q()Lg/cwe;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/asm;

    invoke-virtual {v7}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lg/asm;->r()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lg/asm;->q()D

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lg/asm;->w()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lg/asm;->t()F

    move-result v7

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lg/asm;->m()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lg/asm;->v()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lg/asm;->n()J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v3

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v7, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v7, v7, Lg/bgm;->b:Lg/dvb;

    const-string v8, "Failed to retrieve default event parameters. appId"

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v7, v3, v8, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :goto_2
    move-object v5, v6

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v6, v5

    :goto_3
    :try_start_6
    iget-object v3, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Error selecting default event parameters"

    invoke-virtual {v3, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_6

    goto/16 :goto_0

    :cond_6
    :goto_4
    invoke-virtual {v1, v2, v5}, Lg/dkq;->bf(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    invoke-virtual {p0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v1

    iget-object v2, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/gad;->bp:Lg/tw;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lg/dkq;->ca(Lg/dhh;I)V

    invoke-virtual {p1}, Lg/dhh;->j()Lg/ctf;

    move-result-object p1

    const-string v0, "_cmp"

    iget-object v1, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p1, Lg/ctf;->zzb:Lg/cde;

    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lg/cde;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lg/ctf;->zzb:Lg/cde;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lg/cde;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v2, Lg/cmd;

    iget-wide v4, p1, Lg/ctf;->zzd:J

    const-string v7, "auto"

    const-string v3, "_lgclid"

    invoke-direct/range {v2 .. v7}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    :cond_8
    :goto_5
    invoke-virtual {p0, p1, p2}, Lg/bsz;->ax(Lg/ctf;Lg/afh;)V

    return-void

    :goto_6
    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1
.end method

.method public final bs()J
    .locals 9

    invoke-virtual {p0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lg/bsz;->y:Lg/aaq;

    invoke-virtual {v2}, Lg/aiq;->n()V

    invoke-virtual {v2}, Lg/bgf;->_e()V

    iget-object v3, v2, Lg/aaq;->e:Lg/fou;

    invoke-virtual {v3}, Lg/fou;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v2

    const v4, 0x5265c00

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lg/fou;->g(J)V

    :cond_0
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzau()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    return-object v0
.end method

.method public final zzav()Lg/cvb;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    return-object v0
.end method

.method public final zzaw()Lg/fbc;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzay()Lg/bgm;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    return-object v0
.end method

.method public final zzaz()Lg/fth;
    .locals 1

    iget-object v0, p0, Lg/bsz;->m:Lg/cyg;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    return-object v0
.end method
