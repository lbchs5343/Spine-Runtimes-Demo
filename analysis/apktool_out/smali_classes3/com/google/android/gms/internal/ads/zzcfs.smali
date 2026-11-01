.class public Lcom/google/android/gms/internal/ads/zzcfs;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchc;


# static fields
.field public static final synthetic zzb:I


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzchb;

.field public aa:I

.field public ab:Lg/cui;

.field public ac:Z

.field public ad:Z

.field public ae:Z

.field public af:Lg/fim;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lcom/google/android/gms/internal/ads/zzcha;

.field public e:Lcom/google/android/gms/internal/ads/zzbyh;

.field public f:Lcom/google/android/gms/internal/ads/zzbsj;

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/HashSet;

.field public i:Lcom/google/android/gms/internal/ads/zzbij;

.field public j:Z

.field public final k:Ljava/util/HashMap;

.field public l:Z

.field public m:Lcom/google/android/gms/internal/ads/zzdel;

.field public n:Lg/gst;

.field public o:Lg/bzn;

.field public p:Z

.field public final q:Ljava/lang/Object;

.field public final r:Lcom/google/android/gms/internal/ads/zzeea;

.field public s:Lg/evo;

.field public t:Z

.field public final u:Lcom/google/android/gms/internal/ads/zzcfk;

.field public v:Z

.field public w:Lcom/google/android/gms/internal/ads/zzbse;

.field public x:I

.field public y:Lcom/google/android/gms/internal/ads/zzbih;

.field public final z:Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbbl;ZLcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzeea;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    const/4 p5, 0x0

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->aa:I

    const-string p5, ""

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->z:Lcom/google/android/gms/internal/ads/zzbbl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ad:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->f:Lcom/google/android/gms/internal/ads/zzbsj;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfD:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p3, Lg/edt;->a:Lg/edt;

    iget-object p3, p3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->h:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcfs;->r:Lcom/google/android/gms/internal/ads/zzeea;

    return-void
.end method

.method public static final ag(ZLcom/google/android/gms/internal/ads/zzcfk;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzche;->zzi()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzU()Ljava/lang/String;

    move-result-object p0

    const-string p1, "interstitial_mb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ah()Landroid/webkit/WebResourceResponse;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ai(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbyh;I)V
    .locals 2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbyh;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbyh;->zzg(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbyh;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcfl;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbyh;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final aj(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AdWebViewClient.interceptRequest.gcache"

    const-string v0, "range"

    const-string v4, "ms"

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v6, "Cache connection took "

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzaw:Ljava/util/Map;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto/16 :goto_15

    :cond_0
    :goto_0
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzcfs;->j:Z

    invoke-static {v2, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzbyx;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v8, p2

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzcfs;->ak(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v8, p2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbax;

    move-result-object v7

    if-eqz v7, :cond_b

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v10, "Access-Control-Allow-Origin"

    const-string v11, "*"

    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_3

    const/16 v11, 0x2d

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfwf;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwf;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfxd;->zzb(Lcom/google/android/gms/internal/ads/zzfwf;)Lcom/google/android/gms/internal/ads/zzfxd;

    move-result-object v11

    invoke-virtual {v10, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzfxd;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    if-lez v10, :cond_2

    int-to-long v13, v10

    iput-wide v13, v7, Lcom/google/android/gms/internal/ads/zzbax;->zzh:J

    :cond_2
    sub-int/2addr v0, v10

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzep:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v14, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "X-Afma-Gcache-CachedBytes"

    const/16 v17, 0x0

    const-string v9, "X-Afma-Gcache-IsDownloaded"

    const-string v11, "X-Afma-Gcache-IsGcacheHit"

    const-string v12, "X-Afma-Gcache-HasAdditionalMetadataFromReadV2"

    if-eqz v10, :cond_9

    :try_start_1
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzccf;->zzr()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/google/android/gms/internal/ads/zzbax;->zzi:Ljava/lang/String;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzccf;->zzf()I

    move-result v10

    iput v10, v7, Lcom/google/android/gms/internal/ads/zzbax;->zzj:I

    iget-boolean v10, v7, Lcom/google/android/gms/internal/ads/zzbax;->zzg:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzer:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    :goto_2
    move-object v13, v3

    goto :goto_3

    :cond_4
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzeq:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    goto :goto_2

    :goto_3
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v10, Lg/ti;->a:Lg/ti;

    move-object/from16 v18, v5

    iget-object v5, v10, Lg/ti;->v:Lg/czz;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzbbi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbax;)Ljava/util/concurrent/Future;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v2, v3, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbj;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbj;->zzd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbj;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbj;->zze()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbj;->zza()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbj;->zzc()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    int-to-long v11, v0

    :try_start_4
    invoke-static {v2, v11, v12}, Lcom/google/android/gms/internal/ads/zzgce;->zza(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_4
    const/4 v3, 0x1

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_12

    :cond_5
    :goto_6
    :try_start_5
    iget-object v0, v10, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v19

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfo;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;ZJ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    :goto_8
    move-object/from16 v16, v2

    goto/16 :goto_14

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_b

    :goto_9
    const/4 v13, 0x1

    goto/16 :goto_13

    :goto_a
    move-object/from16 v2, v17

    goto :goto_4

    :goto_b
    move-object/from16 v2, v17

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_11

    :goto_c
    const/4 v13, 0x0

    goto/16 :goto_13

    :goto_d
    move-object/from16 v2, v17

    const/4 v3, 0x0

    :goto_e
    :try_start_6
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zzeu:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v9, Lg/edt;->a:Lg/edt;

    iget-object v9, v9, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v7, v0, v13}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x1

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_10

    :goto_f
    invoke-interface {v5, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v19

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v5, v1, v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;ZJ)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :goto_10
    move v13, v3

    goto :goto_13

    :goto_11
    move-object/from16 v2, v17

    const/4 v3, 0x0

    :goto_12
    :try_start_8
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zzeu:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v9, Lg/edt;->a:Lg/edt;

    iget-object v9, v9, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v7, v0, v13}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v19

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v5, v1, v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;ZJ)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :goto_13
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v19

    sget-object v5, Lg/esy;->a:Lg/gfx;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v7, v1, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;ZJ)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->t:Lcom/google/android/gms/internal/ads/zzbat;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzbat;->zzb(Lcom/google/android/gms/internal/ads/zzbax;)Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zze()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zzd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbau;->zzc()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgce;->zza(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_8

    :cond_a
    move-object/from16 v16, v17

    :goto_14
    if-eqz v16, :cond_c

    new-instance v10, Landroid/webkit/WebResourceResponse;

    const-string v11, ""

    const-string v12, ""

    const-string v14, "OK"

    const/16 v13, 0xc8

    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v10

    :cond_b
    const/16 v17, 0x0

    :cond_c
    invoke-static {}, Lg/dzz;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbej;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzcfs;->ak(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_0

    return-object v0

    :cond_d
    return-object v17

    :goto_15
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v3, "AdWebViewClient.interceptRequest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfs;->ah()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final ak(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x14

    if-gt v2, v4, :cond_e

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8

    :cond_0
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_d

    check-cast v4, Ljava/net/HttpURLConnection;

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->z:Lg/esy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v7

    iget-object v7, v7, Lg/akx;->afmaVersion:Ljava/lang/String;

    const v8, 0xea60

    invoke-virtual {v5, v6, v7, v4, v8}, Lg/esy;->au(Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;I)V

    new-instance v5, Lg/dzz;

    invoke-direct {v5}, Lg/dzz;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lg/dzz;->i(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v5, v4, v7}, Lg/dzz;->j(Ljava/net/HttpURLConnection;I)V

    const/16 v5, 0x12c

    if-lt v7, v5, :cond_5

    const/16 v5, 0x190

    if-ge v7, v5, :cond_5

    const-string v3, "Location"

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfs;->ah()Landroid/webkit/WebResourceResponse;

    move-result-object v6

    goto/16 :goto_7

    :cond_2
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "https"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported scheme: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfs;->ah()Landroid/webkit/WebResourceResponse;

    move-result-object v6

    goto/16 :goto_7

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v5

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ";"

    const-string v2, ""

    if-eqz v0, :cond_6

    move-object v6, v2

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    :goto_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_3
    move-object v7, v2

    goto :goto_5

    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_7

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "charset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-le v5, v3, :cond_a

    aget-object p2, v1, v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    new-instance v10, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->k:Lg/lp;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/webkit/WebResourceResponse;

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    :goto_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v6

    :cond_d
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many redirects (20)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_8
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p1
.end method

.method public final al(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lg/agd;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received GMSG: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzbjr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzbjr;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/evo;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfs;->zzj(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzX()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->v:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->a:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchb;->zza()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->a:Lcom/google/android/gms/internal/ads/zzchb;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlD:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object p1

    iget-object p1, p1, Lg/cwg;->n:Landroid/widget/Toolbar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ae:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->aa:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->b:Ljava/lang/String;

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-static {p2}, Lg/ahq;->ab(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    invoke-static {p2}, Lg/ahq;->g(Landroid/webkit/RenderProcessGoneDetail;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaD(ZI)Z

    move-result p1

    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcfs;->aj(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzj(Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->l:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lg/evo;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzbyh;->zzh(Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdel;->zzdG()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_a

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object p1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzlI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzavc;->zzf(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v4

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzffs;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzavc;->zzf(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v4

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to append parameter to URL: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ab:Lg/cui;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lg/cui;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Lg/cui;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_1
    new-instance v3, Lg/etg;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/fre;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, v2, p1}, Lcom/google/android/gms/internal/ads/zzcfs;->zzu(Lg/etg;ZZ)V

    goto :goto_2

    :cond_a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView unable to handle URL: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public final zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzcha;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->d:Lcom/google/android/gms/internal/ads/zzcha;

    return-void
.end method

.method public final zzC(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbse;->zze(II)V

    :cond_0
    return-void
.end method

.method public final zzD(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->l:Z

    return-void
.end method

.method public final zzE(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->p:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzF(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ad:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcfm;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzH(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->t:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzchb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->a:Lcom/google/android/gms/internal/ads/zzchb;

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;)V
    .locals 3

    const-string v0, "/click"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzN(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffw;

    invoke-direct {v2, v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzffw;-><init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzedp;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbip;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzbip;-><init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/internal/ads/zzcnb;)V
    .locals 3

    const-string v0, "/click"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzN(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbip;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbip;-><init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzL(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 7

    const-string v0, "/open"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzN(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ab:Lg/cui;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbkd;-><init>(Lg/cui;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzcnb;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzfet;)V
    .locals 3

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbyv;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzN(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzaw:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_0
    return-void
.end method

.method public final zzN(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzO(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzP(Ljava/lang/String;Lg/aqj;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {p2, v3}, Lg/aqj;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzQ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzR()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzS()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ad:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzT()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->t:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzU(Lg/evo;Lcom/google/android/gms/internal/ads/zzbih;Lg/fim;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;ZLcom/google/android/gms/internal/ads/zzbju;Lg/cui;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzbke;Lcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzcnb;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    if-nez p8, :cond_0

    new-instance v7, Lg/cui;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lg/cui;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyh;)V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p8

    :goto_0
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbse;

    invoke-direct {v8, v6, v4}, Lcom/google/android/gms/internal/ads/zzbse;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbsl;)V

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzaY:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v8, Lg/edt;->a:Lg/edt;

    iget-object v9, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v8, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbig;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzbig;-><init>(Lcom/google/android/gms/internal/ads/zzbih;)V

    const-string v9, "/adMetadata"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbii;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzbii;-><init>(Lcom/google/android/gms/internal/ads/zzbij;)V

    const-string v9, "/appEvent"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_2
    const-string v5, "/backButton"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzj:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/refresh"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzk:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/canOpenApp"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzb:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/canOpenURLs"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zza:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/canOpenIntents"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzc:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/close"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzd:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/customClose"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zze:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/instrument"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzn:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/delayPageLoaded"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzp:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/delayPageClosed"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzq:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/getLocationInfo"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzr:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v5, "/log"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjq;->zzg:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbjy;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-direct {v5, v7, v9, v4}, Lcom/google/android/gms/internal/ads/zzbjy;-><init>(Lg/cui;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzbsl;)V

    const-string v4, "/mraid"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcfs;->f:Lcom/google/android/gms/internal/ads/zzbsj;

    if-eqz v4, :cond_3

    const-string v5, "/mraidLoaded"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbkd;

    move-object v5, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    move-object/from16 v9, p19

    move-object/from16 v16, v5

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzbkd;-><init>(Lg/cui;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzcnb;)V

    const-string v6, "/open"

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcds;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcds;-><init>()V

    const-string v6, "/precache"

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "/touch"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbjq;->zzi:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "/video"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbjq;->zzl:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "/videoMeta"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbjq;->zzm:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "/httpTrack"

    const-string v6, "/click"

    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzffw;

    invoke-direct {v8, v12, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzffw;-><init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzedp;)V

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzffx;

    invoke-direct {v6, v10, v7}, Lcom/google/android/gms/internal/ads/zzffx;-><init>(Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzedp;)V

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbip;

    invoke-direct {v7, v12, v9}, Lcom/google/android/gms/internal/ads/zzbip;-><init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcnb;)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbjq;->zzf:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :goto_1
    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzbyv;->zzp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfet;->zzaw:Ljava/util/Map;

    :cond_5
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbjx;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string v4, "/logScionEvent"

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_6
    if-eqz v3, :cond_7

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbjt;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzbju;)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_7
    if-eqz v11, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "/inspectorNetworkExtras"

    invoke-virtual {v0, v3, v11}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zziS:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v13, :cond_9

    const-string v3, "/shareSheet"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zziX:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v14, :cond_a

    const-string v3, "/inspectorOutOfContextTest"

    invoke-virtual {v0, v3, v14}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzjb:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v15, :cond_b

    const-string v3, "/inspectorStorage"

    invoke-virtual {v0, v3, v15}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_b
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzlg:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "/bindPlayStoreOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzu:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v3, "/presentPlayStoreOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzv:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v3, "/expandPlayStoreOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzw:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v3, "/collapsePlayStoreOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzx:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v3, "/closePlayStoreOverlay"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzy:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzdq:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "/setPAIDPersonalizationEnabled"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzA:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v3, "/resetPAID"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjq;->zzz:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzlC:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfet;->zzar:Z

    if-eqz v2, :cond_e

    const-string v2, "/writeToLocalStorage"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjq;->zzB:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v2, "/clearLocalStorageKeys"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjq;->zzC:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfs;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    :cond_e
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcfs;->y:Lcom/google/android/gms/internal/ads/zzbih;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcfs;->i:Lcom/google/android/gms/internal/ads/zzbij;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzcfs;->ab:Lg/cui;

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcfs;->l:Z

    return-void
.end method

.method public final zza()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd()Lg/cui;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ab:Lg/cui;

    return-object v0
.end method

.method public final zzdG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdel;->zzdG()V

    :cond_0
    return-void
.end method

.method public final zzdf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdel;->zzdf()V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->d:Lcom/google/android/gms/internal/ads/zzcha;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->x:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ac:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ae:Z

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzm()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzm()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzccf;->zzk()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    const-string v3, "awfllc"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->d:Lcom/google/android/gms/internal/ads/zzcha;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ac:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ae:Z

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->aa:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzcha;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->d:Lcom/google/android/gms/internal/ads/zzcha;

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaf()V

    return-void
.end method

.method public final zzh()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zze()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->o:Lg/bzn;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->d:Lcom/google/android/gms/internal/ads/zzcha;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->a:Lcom/google/android/gms/internal/ads/zzchb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->y:Lcom/google/android/gms/internal/ads/zzbih;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->i:Lcom/google/android/gms/internal/ads/zzbij;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->l:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ad:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->t:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->p:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ab:Lg/cui;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->f:Lcom/google/android/gms/internal/ads/zzbsj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbse;->zza(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->j:Z

    return-void
.end method

.method public final zzj(Landroid/net/Uri;)V
    .locals 8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v2, p0

    move-object v5, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfC:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v5, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->h:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfE:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    const-string v0, "Parsing gmsg query params on BG thread: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/gzm;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lg/gzm;-><init>(ILjava/lang/Object;)V

    iget-object v0, v0, Lg/esy;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzj(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    new-instance v1, Lg/gkr;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lg/gkr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v5, p1

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->z:Lg/esy;

    invoke-static {v5}, Lg/esy;->u(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->al(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgC:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzg()Lcom/google/android/gms/internal/ads/zzbcs;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "null"

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final zzk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->z:Lcom/google/android/gms/internal/ads/zzbbl;

    if-eqz v0, :cond_0

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzc(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->ac:Z

    const/16 v0, 0x2714

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->aa:I

    const-string v0, "Page loaded delay cancel."

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->destroy()V

    return-void
.end method

.method public final zzl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->x:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzg()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzm()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->x:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzg()V

    return-void
.end method

.method public final zzq(IIZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->f:Lcom/google/android/gms/internal/ads/zzbsj;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;->zzb(II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbse;->zzd(IIZ)V

    :cond_1
    return-void
.end method

.method public final zzr()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v2

    sget-object v3, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfs;->ai(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbyh;I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->o:Lg/bzn;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    new-instance v2, Lg/bzn;

    invoke-direct {v2, p0, v0}, Lg/bzn;-><init>(Lcom/google/android/gms/internal/ads/zzcfs;Lcom/google/android/gms/internal/ads/zzbyh;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->o:Lg/bzn;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public final zzu(Lg/etg;ZZ)V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->ag(ZLcom/google/android/gms/internal/ads/zzcfk;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move p2, v0

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    move-object p3, v1

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    :goto_2
    if-eqz p2, :cond_5

    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    move-object v3, p2

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v5

    if-eqz v2, :cond_6

    :goto_4
    move-object v2, p3

    move-object v7, v1

    move-object v1, p1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/etg;Lg/evo;Lg/fim;Lg/gst;Lg/akx;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzdel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v2

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcfs;->r:Lcom/google/android/gms/internal/ads/zzeea;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Lg/akx;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzbsz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzw(ZIZ)V
    .locals 10

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzcfs;->ag(ZLcom/google/android/gms/internal/ads/zzcfk;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v0

    const/4 v2, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    move-object p3, v3

    :goto_1
    move v5, v2

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    move-object v6, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v7

    if-eqz v5, :cond_3

    move-object v8, v6

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    move-object v8, v5

    :goto_3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->r:Lcom/google/android/gms/internal/ads/zzeea;

    move-object v9, v1

    move v5, p1

    move v6, p2

    move-object v1, p3

    goto :goto_4

    :cond_5
    move-object v9, v6

    move v5, p1

    move-object v1, p3

    move v6, p2

    :goto_4
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ZILg/akx;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbsz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->w:Lcom/google/android/gms/internal/ads/zzbse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->zzf()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->u:Lg/bli;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lg/bli;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfs;->e:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzl:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza:Lg/etg;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lg/etg;->zzb:Ljava/lang/String;

    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyh;->zzh(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final zzy(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->ag(ZLcom/google/android/gms/internal/ads/zzcfk;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v0

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    :goto_1
    if-eqz v4, :cond_3

    move-object v4, v5

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_3
    new-instance v4, Lg/bwj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    invoke-direct {v4, v6, v7}, Lg/bwj;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Lg/fim;)V

    goto :goto_2

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->y:Lcom/google/android/gms/internal/ads/zzbih;

    move-object v2, v4

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->i:Lcom/google/android/gms/internal/ads/zzbij;

    move-object v9, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v11

    if-eqz v7, :cond_4

    move-object v12, v9

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    move-object v12, v7

    :goto_4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v7

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->r:Lcom/google/android/gms/internal/ads/zzeea;

    move-object v13, v7

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move v7, p1

    goto :goto_6

    :cond_6
    move-object v13, v9

    move v7, p1

    move/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    :goto_6
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lcom/google/android/gms/internal/ads/zzbih;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ZILjava/lang/String;Ljava/lang/String;Lg/akx;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbsz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzz(ZILjava/lang/String;ZZ)V
    .locals 14

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzcfs;->ag(ZLcom/google/android/gms/internal/ads/zzcfk;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v0

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfs;->s:Lg/evo;

    :goto_1
    if-eqz v4, :cond_3

    move-object v4, v5

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_3
    new-instance v4, Lg/bwj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->af:Lg/fim;

    invoke-direct {v4, v6, v7}, Lg/bwj;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Lg/fim;)V

    goto :goto_2

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfs;->y:Lcom/google/android/gms/internal/ads/zzbih;

    move-object v2, v4

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfs;->i:Lcom/google/android/gms/internal/ads/zzbij;

    move-object v9, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcfs;->n:Lg/gst;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v10

    if-eqz v7, :cond_4

    move-object v11, v9

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->m:Lcom/google/android/gms/internal/ads/zzdel;

    move-object v11, v7

    :goto_4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v7

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcfs;->r:Lcom/google/android/gms/internal/ads/zzeea;

    move-object v12, v7

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v13, p5

    move v7, p1

    goto :goto_6

    :cond_6
    move-object v12, v9

    move v7, p1

    move/from16 v8, p2

    move/from16 v13, p5

    move-object/from16 v9, p3

    :goto_6
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lcom/google/android/gms/internal/ads/zzbih;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ZILjava/lang/String;Lg/akx;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbsz;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzx(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
