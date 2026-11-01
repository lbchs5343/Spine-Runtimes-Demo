.class public final synthetic Lcom/google/android/gms/internal/ads/zzbne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbnt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzbnt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbne;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbne;->zzb:Lcom/google/android/gms/internal/ads/zzbnt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbne;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbne;->zzb:Lcom/google/android/gms/internal/ads/zzbnt;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbnu;->g:Ljava/lang/String;

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "loadJavascriptEngine > Before createJavascriptEngine"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbnu;->f:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbnu;->b:Lg/akx;

    move-object v8, v6

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbmx;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v8, v9, v9}, Lcom/google/android/gms/internal/ads/zzbmx;-><init>(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzavc;Lg/gfo;)V

    const-string v0, "loadJavascriptEngine > After createJavascriptEngine"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "loadJavascriptEngine > Before setting new engine loaded listener"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbnd;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;Ljava/util/ArrayList;JLcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbmp;)V

    move-wide v10, v3

    move-object v4, v0

    move-object v0, v6

    move-object v6, v2

    move-wide v2, v10

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzbmp;->zzk(Lcom/google/android/gms/internal/ads/zzbnd;)V

    const-string v4, "loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v0

    new-instance v0, Lg/qf;

    invoke-direct/range {v0 .. v5}, Lg/qf;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;JLcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbmx;)V

    move-object v10, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v10

    const-string v8, "/jsLoaded"

    invoke-interface {v0, v8, v4}, Lcom/google/android/gms/internal/ads/zzbnv;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    new-instance v4, Lg/fc;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Lg/fc;-><init>(IZ)V

    new-instance v8, Lg/ra;

    invoke-direct {v8, v1, v0, v4}, Lg/ra;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzbmx;Lg/fc;)V

    iput-object v8, v4, Lg/fc;->e:Ljava/lang/Object;

    const-string v4, "loadJavascriptEngine > Before registering GmsgHandler for /requestReload"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    const-string v4, "/requestReload"

    invoke-interface {v0, v4, v8}, Lcom/google/android/gms/internal/ads/zzbnv;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "loadJavascriptEngine > javascriptPath: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    const-string v4, ".js"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "loadJavascriptEngine > Before newEngine.loadJavascript"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzbmp;->zzh(Ljava/lang/String;)V

    const-string v4, "loadJavascriptEngine > After newEngine.loadJavascript"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "<html>"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "loadJavascriptEngine > Before newEngine.loadHtml"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzbmp;->zzf(Ljava/lang/String;)V

    const-string v4, "loadJavascriptEngine > After newEngine.loadHtml"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "loadJavascriptEngine > Before newEngine.loadHtmlWrapper"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzbmp;->zzg(Ljava/lang/String;)V

    const-string v4, "loadJavascriptEngine > After newEngine.loadHtmlWrapper"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    :goto_0
    const-string v4, "loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    sget-object v8, Lg/esy;->a:Lg/gfx;

    move-object v4, v5

    move-wide v10, v2

    move-object v3, v0

    move-object v2, v6

    move-wide v5, v10

    new-instance v0, Lg/sc;

    const/4 v7, 0x0

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v7}, Lg/sc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Error creating webview."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhq:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine"

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzcav;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhs:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "SdkJavascriptFactory.loadJavascriptEngine"

    if-eqz v1, :cond_3

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcav;->zzg()V

    goto :goto_1

    :cond_3
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcav;->zzg()V

    :goto_1
    return-void
.end method
