.class public final Lg/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdr;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/bk;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/bk;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/bk;->b:Ljava/lang/Object;

    iput p4, p0, Lg/bk;->e:I

    iput-object p1, p0, Lg/bk;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/ccp;ILg/bgm;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/bk;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bk;->a:Ljava/lang/Object;

    iput p2, p0, Lg/bk;->e:I

    iput-object p3, p0, Lg/bk;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/bk;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/eax;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    const/4 p5, 0x1

    iput p5, p0, Lg/bk;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bk;->a:Ljava/lang/Object;

    iput p2, p0, Lg/bk;->e:I

    iput-object p3, p0, Lg/bk;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/bk;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lg/bk;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bk;->a:Ljava/lang/Object;

    check-cast v0, Lg/ccp;

    iget-object v1, p0, Lg/bk;->b:Ljava/lang/Object;

    check-cast v1, Lg/bgm;

    iget-object v2, p0, Lg/bk;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v3, v0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Service;

    check-cast v3, Lg/ir;

    iget v4, p0, Lg/bk;->e:I

    invoke-interface {v3, v4}, Lg/ir;->zzc(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Local AppMeasurementService processed last upload request. StartId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Completed wakeful intent."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lg/ir;->b(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bk;->a:Ljava/lang/Object;

    check-cast v0, Lg/eax;

    iget-object v1, p0, Lg/bk;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget-object v2, p0, Lg/bk;->c:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v0, v0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/yh;

    iget-object v0, v0, Lg/yh;->a:Lg/cyg;

    iget-object v3, v0, Lg/cyg;->m:Lg/dkq;

    const-string v4, "timestamp"

    const-string v5, "gclid"

    const-string v6, ""

    const-string v7, "deeplink"

    iget-object v8, v0, Lg/cyg;->z:Lg/bgm;

    const/16 v9, 0xc8

    iget v10, p0, Lg/bk;->e:I

    if-eq v10, v9, :cond_1

    const/16 v9, 0xcc

    if-eq v10, v9, :cond_1

    const/16 v9, 0x130

    if-ne v10, v9, :cond_8

    const/16 v10, 0x130

    :cond_1
    if-nez v1, :cond_8

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->t:Lg/avz;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lg/avz;->f(Z)V

    if-eqz v2, :cond_7

    array-length v1, v2

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v4, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Deferred Deep Link is empty."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v11, v2, Lg/cyg;->v:Landroid/content/Context;

    iget-object v2, v2, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_cis"

    const-string v6, "ddp"

    invoke-virtual {v11, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lg/cyg;->c:Lg/csp;

    const-string v5, "auto"

    const-string v6, "_cmp"

    invoke-virtual {v0, v5, v6, v11}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    :try_start_1
    const-string v0, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {v2, v0, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_9

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v1, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_0
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {v0, v6, v2, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v8, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Deferred Deep Link response empty."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void

    :pswitch_1
    const-string v0, "event"

    const-string v1, "precacheComplete"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lg/bk;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/bk;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalBytes"

    iget v2, p0, Lg/bk;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/bk;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->d(Lcom/google/android/gms/internal/ads/zzcdr;Ljava/util/HashMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
