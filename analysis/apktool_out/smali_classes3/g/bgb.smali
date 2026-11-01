.class public final Lg/bgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bmo;
.implements Lcom/google/android/gms/internal/ads/zzfhw;
.implements Lg/bjz;
.implements Lg/btm;
.implements Lg/alf;
.implements Lg/csw;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bgb;->b:I

    iput-object p2, p0, Lg/bgb;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/bsz;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lg/bgb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bgb;->c:Ljava/lang/Object;

    return-void
.end method

.method private final h()V
    .locals 0

    return-void
.end method

.method private final i()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    iget-object p1, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast p1, Lg/bsz;

    invoke-virtual {p1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object p5

    invoke-virtual {p5}, Lg/fth;->_e()V

    invoke-virtual {p1}, Lg/bsz;->bi()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v0, p1, Lg/bsz;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p1, Lg/bsz;->w:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p2, v2, :cond_6

    const/16 p2, 0xcc

    :cond_1
    if-nez p3, :cond_6

    :try_start_1
    iget-object p3, p1, Lg/bsz;->y:Lg/aaq;

    iget-object p3, p3, Lg/aaq;->b:Lg/fou;

    invoke-virtual {p1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lg/fou;->g(J)V

    iget-object p3, p1, Lg/bsz;->y:Lg/aaq;

    iget-object p3, p3, Lg/aaq;->g:Lg/fou;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lg/fou;->g(J)V

    invoke-virtual {p1}, Lg/bsz;->ar()V

    invoke-virtual {p1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p3

    iget-object p3, p3, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Successful upload. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, v4, p4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->ap()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p4, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p4}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p4}, Lg/bgf;->_e()V

    invoke-virtual {p4}, Lg/aiq;->n()V

    invoke-virtual {p4}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v5, "queue"

    const-string v6, "rowid=?"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_5
    iget-object p4, p4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p4, Lg/cyg;

    iget-object p4, p4, Lg/cyg;->z:Lg/bgm;

    invoke-static {p4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p4, p4, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p4, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p4

    :try_start_6
    iget-object v0, p1, Lg/bsz;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    throw p4

    :cond_4
    iget-object p2, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->av()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object p2, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/ggz;->an()V

    iput-object v1, p1, Lg/bsz;->f:Ljava/util/ArrayList;

    iget-object p2, p1, Lg/bsz;->z:Lg/fit;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2}, Lg/fit;->aw()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lg/bsz;->bl()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lg/bsz;->bf()V

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_4

    :cond_5
    const-wide/16 p2, -0x1

    iput-wide p2, p1, Lg/bsz;->v:J

    invoke-virtual {p1}, Lg/bsz;->ar()V

    :goto_2
    iput-wide v2, p1, Lg/bsz;->h:J

    goto/16 :goto_5

    :goto_3
    iget-object p3, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p3}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p3}, Lg/ggz;->an()V

    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    :try_start_8
    invoke-virtual {p1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p3

    iget-object p3, p3, Lg/bgm;->b:Lg/dvb;

    const-string p4, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p3, p2, p4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p2

    check-cast p2, Lg/czz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p1, Lg/bsz;->h:J

    invoke-virtual {p1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->c:Lg/dvb;

    const-string p3, "Disable upload, time"

    iget-wide v0, p1, Lg/bsz;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p4

    iget-object p4, p4, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2, v1, p3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p1, Lg/bsz;->y:Lg/aaq;

    iget-object p3, p3, Lg/aaq;->g:Lg/fou;

    invoke-virtual {p1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p4

    check-cast p4, Lg/czz;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lg/fou;->g(J)V

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_7

    const/16 p3, 0x1ad

    if-ne p2, p3, :cond_8

    :cond_7
    iget-object p2, p1, Lg/bsz;->y:Lg/aaq;

    iget-object p2, p2, Lg/aaq;->c:Lg/fou;

    invoke-virtual {p1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object p3

    check-cast p3, Lg/czz;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lg/fou;->g(J)V

    :cond_8
    iget-object p2, p1, Lg/bsz;->l:Lg/ggz;

    invoke-static {p2}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {p2, v0}, Lg/ggz;->aw(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lg/bsz;->ar()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    iput-boolean p5, p1, Lg/bsz;->d:Z

    invoke-virtual {p1}, Lg/bsz;->bd()V

    return-void

    :goto_6
    iput-boolean p5, p1, Lg/bsz;->d:Z

    invoke-virtual {p1}, Lg/bsz;->bd()V

    throw p2
.end method

.method public d(ILcom/google/android/gms/internal/ads/zzhj;J)V
    .locals 7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhj;->zza()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    iget-object p2, p0, Lg/bgb;->c:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public e(ILjava/lang/String;Ljava/util/List;ZZ)V
    .locals 4

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Lg/dqu;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->p:Lg/dvb;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->j:Lg/dvb;

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->h:Lg/dvb;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->g:Lg/dvb;

    goto :goto_0

    :cond_3
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->a:Lg/dvb;

    goto :goto_0

    :cond_5
    if-nez p5, :cond_6

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->m:Lg/dvb;

    goto :goto_0

    :cond_6
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    goto :goto_0

    :cond_7
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->o:Lg/dvb;

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    if-eq p4, v2, :cond_a

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    if-eq p4, v1, :cond_8

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p4, p2, p3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public g(IIIJ)V
    .locals 8

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v7, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzfhx;)Lg/dcy;
    .locals 3

    check-cast p1, Lg/vv;

    iget-object v0, p1, Lg/vv;->e:Lcom/google/android/gms/internal/ads/zzfcl;

    iget-object p1, p1, Lg/vv;->c:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v1, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfbl;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwk;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwk;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/csp;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v2, "auto"

    const-string v3, "_err"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lg/csp;->at(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzb()V
    .locals 1

    iget v0, p0, Lg/bgb;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrr;->zzb()Lcom/google/android/gms/internal/ads/zzcwk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzfhl;)V
    .locals 1

    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbl;->zza()Lcom/google/android/gms/internal/ads/zzcvt;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    return-void
.end method

.method public zzc()V
    .locals 2

    iget v0, p0, Lg/bgb;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bgb;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzc()Lcom/google/android/gms/internal/ads/zzcxe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrr;->zzf()Lcom/google/android/gms/internal/ads/zzden;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->zza()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zzg()V
    .locals 0

    return-void
.end method

.method public zzh()V
    .locals 0

    return-void
.end method
