.class public final Lcom/google/android/gms/internal/ads/zzbkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzges;

.field public final b:Lcom/google/android/gms/internal/ads/zzbse;

.field public final c:Lcom/google/android/gms/internal/ads/zzedp;

.field public final d:Lg/cui;

.field public final e:Lcom/google/android/gms/internal/ads/zzcnb;

.field public final f:Lcom/google/android/gms/internal/ads/zzdsm;

.field public final g:Lg/dfu;

.field public h:Lg/fre;


# direct methods
.method public constructor <init>(Lg/cui;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzcnb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->a:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->d:Lg/cui;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->b:Lcom/google/android/gms/internal/ads/zzbse;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbkd;->f:Lcom/google/android/gms/internal/ads/zzdsm;

    new-instance p1, Lg/dfu;

    invoke-direct {p1, v0}, Lg/dfu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->g:Lg/dfu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbkd;->e:Lcom/google/android/gms/internal/ads/zzcnb;

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavc;->zze(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p5, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzffs;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavc;->zze(Landroid/net/Uri;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method

.method public static j(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    :try_start_0
    const-string v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static zzb(Ljava/util/Map;)I
    .locals 1

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static zzf(Ljava/util/Map;)Z
    .locals 2

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final k(Lg/evo;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v10

    const-string v5, "activity"

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/app/ActivityManager;

    const-string v5, "u"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v6, v8

    move-object v8, v9

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, v18

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkd;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/net/Uri;

    move-result-object v7

    move-object v9, v8

    move-object v8, v6

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbkd;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "use_first_package"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v7, "use_running_process"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v7, "use_custom_tabs"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzeB:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v12, "https"

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v5, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v12, v5, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v3, :cond_5

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->z:Lg/esy;

    invoke-static {v5, v6}, Lg/esy;->z(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v5, v12}, Lg/esy;->z(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    move-object v7, v5

    move-object v5, v6

    move-object v6, v2

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzd(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    move-object v3, v6

    if-eqz v2, :cond_6

    move-object v6, v2

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v12

    goto/16 :goto_5

    :cond_6
    if-eqz v12, :cond_7

    invoke-static {v12, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v12

    invoke-static {v12, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_d

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v14, :cond_b

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_b

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    add-int/lit8 v17, v12, 0x1

    if-eqz v16, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    :cond_9
    move-object/from16 v2, v16

    goto :goto_3

    :cond_a
    move/from16 v12, v17

    goto :goto_2

    :cond_b
    if-eqz v13, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbkc;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    :cond_c
    :goto_4
    move-object v12, v5

    :cond_d
    :goto_5
    if-eqz p3, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    if-eqz v2, :cond_f

    if-eqz v12, :cond_f

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbkd;->m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    return-void

    :cond_f
    :goto_6
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgu;

    new-instance v2, Lg/etg;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    invoke-direct {v2, v12, v3}, Lg/etg;-><init>(Landroid/content/Intent;Lg/fre;)V

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->b:Lcom/google/android/gms/internal/ads/zzbse;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbse;->zza(Z)V

    :cond_0
    return-void
.end method

.method public final m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->f:Lcom/google/android/gms/internal/ads/zzdsm;

    if-eqz v1, :cond_0

    const-string v2, "offline_open"

    invoke-static {p2, v1, v0, p4, v2}, Lcom/google/android/gms/internal/ads/zzeea;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzedp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v3, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzA(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->g:Lg/dfu;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/gms/internal/ads/zzedp;->zzh(Lg/dfu;Ljava/lang/String;)V

    return v4

    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzad:Lcom/google/android/gms/internal/ads/zzbtm;

    if-eqz v5, :cond_2

    iget-boolean v7, v5, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Z

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzbtm;->zzb:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzbtm;->zzc:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zzii:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v8, Lg/edt;->a:Lg/edt;

    iget-object v9, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v8, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    const-string p1, "onfs"

    invoke-static {p2, v1, v0, p4, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzedp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v4

    :cond_4
    invoke-static {p2}, Lg/esy;->an(Landroid/content/Context;)Lg/dvw;

    move-result-object v0

    new-instance v1, Lg/dyy;

    invoke-direct {v1, p2}, Lg/dyy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lg/dyy;->h()Z

    move-result v1

    iget-object v2, v2, Lg/ti;->k:Lg/lp;

    invoke-virtual {v2, p2}, Lg/feo;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzche;->zzi()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v1, :cond_9

    new-instance v1, Lg/dyy;

    invoke-direct {v1, p2}, Lg/dyy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lg/dyy;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-ge v1, v7, :cond_7

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzid:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzic:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const-string p1, "notifications_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    const-string p1, "notification_channel_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a
    if-nez v0, :cond_b

    const-string p1, "work_manager_unavailable"

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_b
    if-eqz v5, :cond_c

    const-string p1, "ad_no_activity"

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzia:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p1, "notification_flow_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_d
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->zze()Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeeb;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzeeb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeeb;->zzb(Lg/cwg;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzeeb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzeeb;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeb;->zze()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object p3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object v0

    iget-object v0, v0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzv:Lcom/google/android/gms/internal/ads/zzbsz;

    if-eqz v0, :cond_e

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzg(Lg/bjq;)V

    goto :goto_5

    :cond_e
    new-instance p1, Lg/bij;

    const-string p3, "noioou"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_f
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    const/16 v0, 0xe

    invoke-interface {p2, p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaK(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    invoke-interface {p1}, Lg/evo;->onAdClicked()V

    return v6
.end method

.method public final n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzedp;->zzc(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->f:Lcom/google/android/gms/internal/ads/zzdsm;

    if-eqz v2, :cond_0

    const-string v0, "dialog_not_shown_reason"

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfzr;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzr;

    move-result-object v6

    const-string v5, "dialog_not_shown"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeea;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzedp;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeE:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->f:Lcom/google/android/gms/internal/ads/zzdsm;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsm;->zza()Lcom/google/android/gms/internal/ads/zzdsl;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cct_action"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsl;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    packed-switch p1, :pswitch_data_0

    const-string p1, "OPT_OUT"

    goto :goto_0

    :pswitch_0
    const-string p1, "WRONG_EXP_SETUP"

    goto :goto_0

    :pswitch_1
    const-string p1, "UNKNOWN"

    goto :goto_0

    :pswitch_2
    const-string p1, "EMPTY_URL"

    goto :goto_0

    :pswitch_3
    const-string p1, "ACTIVITY_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string p1, "CCT_READY_TO_OPEN"

    goto :goto_0

    :pswitch_5
    const-string p1, "CCT_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_6
    const-string p1, "CONTEXT_NULL"

    goto :goto_0

    :pswitch_7
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    :goto_0
    const-string v1, "cct_open_status"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsl;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsl;->zzf()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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

.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lg/evo;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzaw:Ljava/util/Map;

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbyx;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "Action missing from an open GMSG."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->d:Lg/cui;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lg/cui;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lg/cui;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzjI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->e:Lcom/google/android/gms/internal/ads/zzcnb;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnb;->zzj(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lg/cbv;->a:Lg/cbv;

    iget-object v3, v3, Lg/cbv;->c:Ljava/util/Random;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcnb;->zzb(Ljava/lang/String;Ljava/util/Random;)Lg/dcy;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    :goto_1
    new-instance v2, Lg/dpa;

    invoke-direct {v2, p0, p2, p1, v1}, Lg/dpa;-><init>(Lcom/google/android/gms/internal/ads/zzbkd;Ljava/util/Map;Lg/evo;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->a:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method
