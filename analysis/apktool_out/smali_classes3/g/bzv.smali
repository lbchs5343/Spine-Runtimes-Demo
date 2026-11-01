.class public final Lg/bzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lcom/google/android/gms/internal/ads/zzenh;
.implements Lg/bjz;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bzv;->a:I

    iput-object p2, p0, Lg/bzv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bridge synthetic i(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfaz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcox;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfaz;->e:Lcom/google/android/gms/internal/ads/zzcox;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcox;->zzb()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfaz;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzfaz;->e:Lcom/google/android/gms/internal/ads/zzcox;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcox;->zzc(Lcom/google/android/gms/internal/ads/zzazz;)V

    iget-object v1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfaz;->k:Lcom/google/android/gms/internal/ads/zzfar;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcoy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfaz;->k:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfaz;->a:Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcoy;-><init>(Lcom/google/android/gms/internal/ads/zzcox;Lg/deq;Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzdsm;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfar;->zzk(Lcom/google/android/gms/internal/ads/zzbaf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public c(JZ)V
    .locals 9

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg/cyg;

    invoke-virtual {v6}, Lg/cyg;->as()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->k:Lg/fou;

    invoke-virtual {v0, p1, p2}, Lg/fou;->g(J)V

    iget-object v0, v6, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, v6, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Session started, time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long v7, p1, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v6, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    const-string v1, "auto"

    const-string v5, "_sid"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->m:Lg/avz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/avz;->f(Z)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_sid"

    invoke-virtual {v3, v0, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v6, Lg/cyg;->e:Lg/dsd;

    sget-object v1, Lg/gad;->bo:Lg/tw;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "_aib"

    const-wide/16 v1, 0x1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, v6, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/csp;->ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lg/ear;->a:Lg/ear;

    iget-object v0, v0, Lg/ear;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gbh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lg/cyg;->e:Lg/dsd;

    sget-object v1, Lg/gad;->q:Lg/tw;

    invoke-virtual {v0, v7, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->g:Lg/dxb;

    invoke-virtual {v0}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ffr"

    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    const-string v4, "auto"

    const-string v5, "_ssr"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/csp;->ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fod;

    iget-object v1, v0, Lg/fod;->e:Landroid/content/ContentResolver;

    iget-object v2, v0, Lg/fod;->g:Landroid/net/Uri;

    sget-object v3, Lg/fod;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x100

    if-gt v0, v2, :cond_2

    :try_start_1
    new-instance v2, Lg/tl;

    invoke-direct {v2, v0}, Lg/bcp;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3}, Ljava/util/HashMap;-><init>(IF)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public e()Z
    .locals 5

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->j:Lg/fou;

    invoke-virtual {v0}, Lg/fou;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    iget-object v2, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v2}, Lg/fth;->_e()V

    invoke-virtual {v0}, Lg/cyg;->as()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string p1, "auto"

    :cond_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object p2, v1, Lg/gmr;->p:Lg/dxb;

    invoke-virtual {p2, p1}, Lg/dxb;->l(Ljava/lang/String;)V

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object p1, v1, Lg/gmr;->j:Lg/fou;

    iget-object p2, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lg/fou;->g(J)V

    :cond_3
    return-void
.end method

.method public g(JZ)V
    .locals 4

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/cjv;->l()V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1, p1, p2}, Lg/gmr;->au(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->m:Lg/avz;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/avz;->f(Z)V

    invoke-static {}, Lg/eur;->c()V

    iget-object v1, v0, Lg/cyg;->e:Lg/dsd;

    const/4 v2, 0x0

    sget-object v3, Lg/gad;->az:Lg/tw;

    invoke-virtual {v1, v2, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v1

    invoke-virtual {v1}, Lg/fqh;->w()V

    :cond_0
    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->k:Lg/fou;

    invoke-virtual {v1, p1, p2}, Lg/fou;->g(J)V

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->m:Lg/avz;

    invoke-virtual {v0}, Lg/avz;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lg/bzv;->c(JZ)V

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 5

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p0}, Lg/bzv;->e()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v3, v3, Lg/gmr;->j:Lg/fou;

    invoke-virtual {v3}, Lg/fou;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    const/4 v3, 0x0

    sget-object v4, Lg/gad;->as:Lg/tw;

    invoke-virtual {v0, v3, v4}, Lg/dsd;->o(Ljava/lang/String;Lg/tw;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwk;

    const-string v1, "GmsCore_OpenSSL"

    const-string v2, "AndroidOpenSSL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgwk;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwk;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza()V
    .locals 4

    iget v0, p0, Lg/bzv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/gmr;->au(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->m:Lg/avz;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/avz;->f(Z)V

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Detected application was in foreground"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg/bzv;->c(JZ)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfaz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfaz;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfaz;->e:Lcom/google/android/gms/internal/ads/zzcox;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lg/bzv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmo;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfmo;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzflt;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzflt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflt;->zza()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfmo;->o(Lcom/google/android/gms/internal/ads/zzfmo;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzegv;->c:Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqh;->zzd()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcsy;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzegv;->a:Lcom/google/android/gms/internal/ads/zzcwo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwo;->zzdB(Lg/abz;)V

    iget v0, v1, Lg/abz;->zza:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfgl;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "omid native display exp"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lg/bzv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmo;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmo;->j:Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzc()V

    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmo;

    monitor-enter v0

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfmo;->i:Lg/cvb;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfmi;-><init>(Ljava/lang/Object;Lg/cvb;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfmo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfmk;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfmk;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;)V

    sget-object v3, Lg/esy;->a:Lg/gfx;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfmj;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfmj;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfmi;->zza()J

    move-result-wide v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfmo;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, p1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfmo;->o(Lcom/google/android/gms/internal/ads/zzfmo;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    iget-object p1, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfmo;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfmo;->o(Lcom/google/android/gms/internal/ads/zzfmo;Z)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lg/bzv;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdit;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->b:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdiy;->zzT(Lcom/google/android/gms/internal/ads/zzcfk;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdit;->b:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdiy;->zzp()Lcom/google/android/gms/internal/ads/zzcao;

    move-result-object p1

    const-string v1, "Google"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdit;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->cancel(Z)Z

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
