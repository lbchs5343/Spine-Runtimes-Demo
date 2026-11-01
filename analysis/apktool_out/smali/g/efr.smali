.class public final Lg/efr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/efr;->b:I

    iput-object p2, p0, Lg/efr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/efr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbie;Lg/aph;Lg/deq;)V
    .locals 0

    const/16 p1, 0x16

    iput p1, p0, Lg/efr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/efr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/efr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/efr;->b:I

    iput-object p1, p0, Lg/efr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/efr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lg/efr;->b:I

    const-string v1, "GoogleApiManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/ctl;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/bjq;

    invoke-static {v1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Lg/ctl;->h:Ljava/lang/Object;

    check-cast v0, Lg/cgp;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v1, "cld_r"

    invoke-static {v0, v1, v2, v3}, Lg/fmk;->d(Lcom/google/android/gms/internal/ads/zzdsm;Ljava/lang/String;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v1, v0, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/chw;

    :try_start_0
    iget-object v2, v0, Lg/err;->c:Ljava/lang/Object;

    check-cast v2, Lg/dnb;

    iget-object v3, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v3, Lg/ci;

    invoke-virtual {v2, v3}, Lg/dnb;->then(Lg/ci;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ci;
    :try_end_0
    .catch Lg/bji; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/err;->onFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_0
    sget-object v1, Lg/fot;->b:Lg/fpe;

    check-cast v2, Lg/chw;

    iget-object v3, v2, Lg/chw;->i:Lg/ja;

    new-instance v4, Lg/err;

    invoke-direct {v4, v1, v0}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/etk;)V

    invoke-virtual {v3, v4}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {v2}, Lg/chw;->n()V

    new-instance v4, Lg/err;

    invoke-direct {v4, v1, v0}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/fbr;)V

    invoke-virtual {v3, v4}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {v2}, Lg/chw;->n()V

    new-instance v4, Lg/err;

    invoke-direct {v4, v1, v0}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/brm;)V

    invoke-virtual {v3, v4}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {v2}, Lg/chw;->n()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcbj;->a:Ljava/util/HashMap;

    const-string v2, "frameRate"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzbW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcbj;->g:Lcom/google/android/gms/internal/ads/zzccf;

    if-eqz v5, :cond_d

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_d

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_c

    aget-object v6, v0, v4

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v7

    const/16 v8, 0x1e

    const-string v9, "codecs-string"

    const-string v10, "mime"

    if-eq v7, v3, :cond_6

    const/4 v11, 0x2

    if-eq v7, v11, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "audioMime"

    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_b

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audioCodec"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v7, "frame-rate"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    const-string v7, "bitrate"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzcbj;->l:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "bitRate"

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v7, "width"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "height"

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "resolution"

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "videoMime"

    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_b

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "videoCodec"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcbj;->g:Lcom/google/android/gms/internal/ads/zzccf;

    const-string v2, "onMetadataEvent"

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :catch_3
    move-exception v0

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v3, "AdMediaPlayerView.reportMetadata"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzf()V

    :cond_e
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/ci;

    check-cast v0, Lg/chw;

    iget-boolean v0, v0, Lg/chw;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/chw;

    invoke-virtual {v0}, Lg/chw;->o()V

    goto :goto_9

    :cond_f
    :try_start_3
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->c:Ljava/lang/Object;

    check-cast v0, Lg/bea;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Lg/ci;

    invoke-interface {v0, v1}, Lg/bea;->then(Lg/ci;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lg/bji; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/chw;

    invoke-virtual {v1, v0}, Lg/chw;->m(Ljava/lang/Object;)V

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :goto_7
    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/chw;

    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/chw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_10
    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/chw;

    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    :goto_9
    return-void

    :pswitch_4
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcao;

    :try_start_4
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/xo;->i(Landroid/content/Context;)Lg/dez;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lg/ctc; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    :goto_a
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void

    :pswitch_5
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->u:Lg/bli;

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbry;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbry;->a:Landroid/app/Activity;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-static {v0, v1, v3}, Lg/bli;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/aph;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/deq;

    iget-object v0, v0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    invoke-interface {v1}, Lg/deq;->zzn()Lg/bjq;

    move-result-object v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_9

    if-nez v3, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {v3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_12

    goto :goto_c

    :cond_12
    iget-object v4, v0, Lg/ctl;->h:Ljava/lang/Object;

    check-cast v4, Lg/cgp;

    invoke-static {v3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lg/ctl;->k:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzbie;->a:I

    throw v2

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    const-string v0, "Could not bind."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/ad;

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lg/ad;->i:Landroid/webkit/WebView;

    iget-object v4, v1, Lg/ad;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lg/ad;->c:Lcom/google/android/gms/internal/ads/zzffs;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v5, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzffs;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_d

    :cond_13
    iget-object v0, v1, Lg/ad;->k:Lcom/google/android/gms/internal/ads/zzavc;

    invoke-virtual {v0, v5, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_e

    :goto_d
    sget-object v3, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v4, "TaggingLibraryJsInterface.recordClick"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_e
    iget-object v0, v1, Lg/ad;->h:Lcom/google/android/gms/internal/ads/zzflr;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazl;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzazl;->h:Lcom/google/android/gms/internal/ads/zzazc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzazl;->n:Ljava/lang/String;

    :try_start_7
    new-instance v4, Lcom/google/android/gms/internal/ads/zzazb;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzazl;->o:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzazl;->b:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzazl;->a:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzazl;->k:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzazl;->d:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzazl;->g:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzazl;->f:I

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzazl;->c:Z

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzazb;-><init>(IIIIIIIZ)V

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->p:Lcom/google/android/gms/internal/ads/zzazg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzazg;->zzb()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zzae:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v8, Lg/edt;->a:Lg/edt;

    iget-object v8, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "id"

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_14

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_f

    :catch_b
    move-exception v0

    goto :goto_11

    :cond_14
    :goto_f
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzazl;->p(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzazb;)Lg/aot;

    move-result-object v0

    iget v1, v0, Lg/aot;->c:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzazb;->zzj()V

    iget v0, v0, Lg/aot;->b:I

    if-nez v0, :cond_15

    if-eqz v1, :cond_18

    :cond_15
    if-nez v1, :cond_16

    iget v0, v4, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    if-eqz v0, :cond_18

    goto :goto_10

    :cond_16
    if-nez v1, :cond_17

    :goto_10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzazc;->zzc(Lcom/google/android/gms/internal/ads/zzazb;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzazc;->zza(Lcom/google/android/gms/internal/ads/zzazb;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_12

    :goto_11
    const-string v1, "Exception in fetchContentOnUIThread"

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v2, "ContentFetchTask.fetchContent"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_18
    :goto_12
    return-void

    :pswitch_9
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/fdy;

    sget-object v2, Lg/hm;->zzx:Lg/hm;

    sget-object v3, Lg/edc;->b:Lg/ejd;

    const/16 v4, 0x9

    invoke-virtual {v0, v2, v4, v3}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    invoke-virtual {v1, v3, v0}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    return-void

    :pswitch_a
    :try_start_8
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapb;->f:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_13

    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_13
    return-void

    :pswitch_b
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/emr;

    sget-object v2, Lg/hm;->zzx:Lg/hm;

    sget-object v3, Lg/edc;->b:Lg/ejd;

    const/4 v5, 0x7

    invoke-virtual {v0, v2, v5, v3}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    iget-object v1, v1, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Lg/gkr;

    if-eqz v3, :cond_1c

    iget v2, v3, Lg/ejd;->a:I

    if-eqz v2, :cond_19

    goto :goto_14

    :cond_19
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0, v4}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v0

    :cond_1a
    invoke-virtual {v0}, Lg/duz;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/x;

    const-string v3, "a"

    iget-object v4, v2, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Lg/gkr;->i(Lg/x;)V

    goto :goto_16

    :cond_1b
    const/16 v0, 0x7c8

    invoke-virtual {v1, v0}, Lg/gkr;->o(I)V

    goto :goto_16

    :cond_1c
    :goto_14
    if-nez v3, :cond_1d

    const/16 v0, 0x52a

    goto :goto_15

    :cond_1d
    iget v0, v3, Lg/ejd;->a:I

    invoke-static {v0}, Lg/cdy;->j(I)I

    move-result v0

    :goto_15
    invoke-virtual {v1, v0}, Lg/gkr;->o(I)V

    :goto_16
    return-void

    :pswitch_c
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gan;

    invoke-interface {v0}, Lg/gan;->zzaw()Lg/fbc;

    invoke-static {}, Lg/fbc;->o()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gan;

    invoke-interface {v0}, Lg/gan;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_1e
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/emo;

    iget-wide v0, v0, Lg/emo;->g:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1f

    goto :goto_17

    :cond_1f
    const/4 v3, 0x0

    :goto_17
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/emo;

    iput-wide v5, v0, Lg/emo;->g:J

    if-eqz v3, :cond_20

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/emo;

    invoke-virtual {v0}, Lg/emo;->c()V

    :cond_20
    :goto_18
    return-void

    :pswitch_d
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget v0, Lg/gbs;->a:I

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_21
    return-void

    :pswitch_e
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/ejd;

    iget-object v3, v0, Lg/tq;->o:Lg/axs;

    iget-object v3, v3, Lg/axs;->a:Ljava/lang/Object;

    check-cast v3, Lg/eoy;

    if-eqz v3, :cond_22

    iget-object v0, v0, Lg/tq;->o:Lg/axs;

    iget-object v0, v0, Lg/axs;->a:Ljava/lang/Object;

    check-cast v0, Lg/eoy;

    check-cast v0, Lg/efc;

    iget-object v3, v0, Lg/efc;->e:Ljava/lang/String;

    iget-object v4, v0, Lg/efc;->b:Lg/fpd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    goto :goto_19

    :cond_22
    sget v0, Lg/gbs;->a:I

    :goto_19
    return-void

    :pswitch_f
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/dzt;

    sget-object v2, Lg/hm;->zzx:Lg/hm;

    sget-object v3, Lg/edc;->b:Lg/ejd;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4, v3}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    invoke-interface {v1, v3}, Lg/dzt;->q(Lg/ejd;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/der;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v1, v4

    if-eqz v1, :cond_23

    iget-object v0, v0, Lg/der;->x:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Lg/dcy;)V

    :cond_23
    return-void

    :pswitch_11
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/bya;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/qo;

    :try_start_9
    iget-object v2, v0, Lg/bya;->b:Lg/cpu;

    iget-object v0, v0, Lg/bya;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object v0

    invoke-interface {v2, v0}, Lg/cpu;->zzg(Lg/aeh;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_1a

    :catch_d
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void

    :pswitch_12
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/aan;

    iget-object v2, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v2, Lg/gpi;

    invoke-virtual {v2}, Lg/gpi;->zaa()Lg/nk;

    move-result-object v3

    invoke-virtual {v3}, Lg/nk;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Lg/gpi;->zab()Lg/cnd;

    move-result-object v2

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lg/cnd;->zaa()Lg/nk;

    move-result-object v3

    invoke-virtual {v3}, Lg/nk;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    const-string v5, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v0, Lg/aan;->b:Lg/axs;

    invoke-virtual {v1, v3}, Lg/axs;->l(Lg/nk;)V

    iget-object v0, v0, Lg/aan;->d:Lg/cdq;

    invoke-interface {v0}, Lg/cqh;->disconnect()V

    goto :goto_1d

    :cond_24
    iget-object v3, v0, Lg/aan;->b:Lg/axs;

    invoke-virtual {v2}, Lg/cnd;->zab()Lg/fmp;

    move-result-object v2

    iget-object v4, v0, Lg/aan;->g:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_26

    if-nez v4, :cond_25

    goto :goto_1b

    :cond_25
    iput-object v2, v3, Lg/axs;->e:Ljava/lang/Object;

    iput-object v4, v3, Lg/axs;->h:Ljava/lang/Object;

    iget-boolean v1, v3, Lg/axs;->g:Z

    if-eqz v1, :cond_28

    iget-object v1, v3, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Lg/cqh;

    invoke-interface {v1, v2, v4}, Lg/cqh;->getRemoteService(Lg/fmp;Ljava/util/Set;)V

    goto :goto_1c

    :cond_26
    :goto_1b
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lg/nk;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg/nk;-><init>(I)V

    invoke-virtual {v3, v1}, Lg/axs;->l(Lg/nk;)V

    goto :goto_1c

    :cond_27
    iget-object v1, v0, Lg/aan;->b:Lg/axs;

    invoke-virtual {v1, v3}, Lg/axs;->l(Lg/nk;)V

    :cond_28
    :goto_1c
    iget-object v0, v0, Lg/aan;->d:Lg/cdq;

    invoke-interface {v0}, Lg/cqh;->disconnect()V

    :goto_1d
    return-void

    :pswitch_13
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Lg/nk;

    iget-object v4, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v4, Lg/axs;

    iget-object v5, v4, Lg/axs;->a:Ljava/lang/Object;

    check-cast v5, Lg/cqh;

    iget-object v6, v4, Lg/axs;->f:Ljava/lang/Object;

    check-cast v6, Lg/ecd;

    iget-object v6, v6, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v7, v4, Lg/axs;->d:Ljava/lang/Object;

    check-cast v7, Lg/dzu;

    invoke-virtual {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fbd;

    if-nez v6, :cond_29

    goto :goto_1e

    :cond_29
    invoke-virtual {v0}, Lg/nk;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_2b

    iput-boolean v3, v4, Lg/axs;->g:Z

    invoke-interface {v5}, Lg/cqh;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, v4, Lg/axs;->g:Z

    if-eqz v0, :cond_2c

    iget-object v0, v4, Lg/axs;->e:Ljava/lang/Object;

    check-cast v0, Lg/fmp;

    if-eqz v0, :cond_2c

    iget-object v1, v4, Lg/axs;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v5, v0, v1}, Lg/cqh;->getRemoteService(Lg/fmp;Ljava/util/Set;)V

    goto :goto_1e

    :cond_2a
    :try_start_a
    invoke-interface {v5}, Lg/cqh;->_bd()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Lg/cqh;->getRemoteService(Lg/fmp;Ljava/util/Set;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_1e

    :catch_e
    move-exception v0

    const-string v3, "Failed to get service from broker. "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to get service from broker."

    invoke-interface {v5, v0}, Lg/cqh;->disconnect(Ljava/lang/String;)V

    new-instance v0, Lg/nk;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/nk;-><init>(I)V

    invoke-virtual {v6, v0, v2}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    goto :goto_1e

    :cond_2b
    invoke-virtual {v6, v0, v2}, Lg/fbd;->s(Lg/nk;Ljava/lang/RuntimeException;)V

    :cond_2c
    :goto_1e
    return-void

    :pswitch_14
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/bugly/BuglyStrategy;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/s;->b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void

    :pswitch_15
    :try_start_b
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eum;

    iget-object v0, v0, Lg/eum;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eum;

    iget-object v1, v0, Lg/eum;->n:Lg/dbj;

    if-nez v1, :cond_2d

    iget-object v1, v0, Lg/eum;->i:Lg/fc;

    new-instance v2, Lg/cxf;

    iget-object v1, v1, Lg/fc;->e:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {v2, v1, v4}, Lg/cxf;-><init>(Ljava/nio/ByteBuffer;I)V

    new-instance v1, Lg/dbj;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v4}, Lg/bgf;-><init>(IZ)V

    iput-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    iput-object v1, v0, Lg/eum;->n:Lg/dbj;

    goto :goto_1f

    :catchall_0
    move-exception v0

    goto :goto_23

    :catch_f
    move-exception v0

    goto :goto_21

    :cond_2d
    invoke-virtual {v1}, Lg/bgf;->af()V

    :goto_1f
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eum;

    iget-object v1, v0, Lg/eum;->n:Lg/dbj;

    invoke-virtual {v0, v1}, Lg/eum;->ab(Lg/dbj;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eum;->aa(Landroid/graphics/Rect;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_2e
    :goto_20
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_22

    :goto_21
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eum;

    sget-object v1, Lg/eum;->a:Landroid/graphics/Rect;

    iput-object v1, v0, Lg/eum;->e:Landroid/graphics/Rect;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_20

    :goto_22
    return-void

    :goto_23
    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    throw v0

    :pswitch_16
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    iget-object v1, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, Lg/fnq;

    iget-object v1, v1, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v1, Lg/akg;

    iget-object v1, v1, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/gkb;

    iget-object v0, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/hcl;

    iget-object v0, v0, Lg/hcl;->j:Ljava/lang/String;

    iget-object v2, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lg/gkb;->dq(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void

    :pswitch_17
    iget-object v0, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    iget-object v4, v3, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lg/egh;->n(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, v3, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lg/egh;->n(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void

    :pswitch_18
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v1, Lg/evf;

    iget-object v1, v1, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/aqd;

    iget-object v2, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lg/aqd;->ad(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2f

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v3, Lg/fde;

    invoke-static {v3}, Lg/fde;->kk(Lg/fde;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    invoke-static {v0}, Lg/fde;->o(Lg/fde;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    invoke-virtual {v0, v2}, Lg/cdf;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    return-void

    :pswitch_1a
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eie;

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    invoke-static {v0}, Lg/fde;->mn(Lg/fde;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lg/cdf;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_1b
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/eie;

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    invoke-static {v0}, Lg/fde;->ox(Lg/fde;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    iget-object v1, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lg/cdf;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lg/efr;->a:Ljava/lang/Object;

    check-cast v0, Lg/dzh;

    iget-object v1, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Lg/emr;

    iget-object v1, v1, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Lg/fzx;

    iget-object v1, v1, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/gkb;

    iget-object v0, v0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Lg/hcl;

    iget-object v0, v0, Lg/hcl;->j:Ljava/lang/String;

    iget-object v2, p0, Lg/efr;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lg/gkb;->dq(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
