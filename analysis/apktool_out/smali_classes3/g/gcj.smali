.class public final Lg/gcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gcj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    iget v0, p0, Lg/gcj;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzax(Z)V

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "stop"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzax(Z)V

    :cond_1
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchc;->zzl()V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchc;->zzm()V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "cancel"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchc;->zzk()V

    :cond_4
    :goto_0
    return-void

    :pswitch_1
    const-string v0, "action"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "pause"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzdg()V

    goto :goto_1

    :cond_5
    const-string v0, "resume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzdh()V

    :cond_6
    :goto_1
    return-void

    :pswitch_2
    const-string v0, "disabled"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzal(Z)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzK()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzc()V

    :cond_7
    return-void

    :pswitch_4
    const-string p1, "string"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Received log message: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->k(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string v0, "custom_close"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v1, "1"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzao(Z)V

    return-void

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzJ()Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzJ()Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzazz;->zza()V

    :cond_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lg/cwg;->zzb()V

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzM()Lg/cwg;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lg/cwg;->zzb()V

    goto :goto_2

    :cond_a
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_7
    const-string v0, "args"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_b

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    const-string p2, "GMSG clear local storage keys handler"

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_8
    const-string v0, "args"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_d

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_d
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_e

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_e
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_f

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_f
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_10

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_10
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_11

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_11
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_12
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :goto_7
    const-string p2, "GMSG write local storage KV pairs handler"

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    return-void

    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    :try_start_2
    const-string v0, "enabled"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "true"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfwa;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "false"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfwa;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_a

    :cond_13
    :goto_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfti;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfti;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfti;->zzb(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :goto_a
    const-string p2, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled"

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_14
    :goto_b
    return-void

    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzftl;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftl;->zzk()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzftm;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftm;->zzj()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzftn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftn;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzftn;->zzb(Lcom/google/android/gms/internal/ads/zzfth;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    move-object p1, v0

    const-string p2, "DefaultGmsgHandlers.ResetPaid"

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_c
    return-void

    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ac:Lg/axs;

    iget-boolean p2, p1, Lg/axs;->g:Z

    if-eqz p2, :cond_18

    iget-object p2, p1, Lg/axs;->e:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzful;

    if-nez p2, :cond_15

    goto :goto_e

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuk;->zzc()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfuj;

    goto :goto_d

    :cond_16
    iget-object v1, p1, Lg/axs;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfuj;

    goto :goto_d

    :cond_17
    const-string v1, "Missing session token and/or appId"

    const-string v2, "onLMDupdate"

    invoke-virtual {p1, v1, v2}, Lg/axs;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->zzc()Lcom/google/android/gms/internal/ads/zzfuk;

    move-result-object v0

    iget-object p1, p1, Lg/axs;->h:Ljava/lang/Object;

    check-cast p1, Lg/eap;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzful;->zzb(Lcom/google/android/gms/internal/ads/zzfuk;Lcom/google/android/gms/internal/ads/zzfvi;)V

    goto :goto_f

    :cond_18
    :goto_e
    const-string p1, "LastMileDelivery not connected"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :pswitch_c
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object v1, p1, Lg/ti;->ac:Lg/axs;

    iget-boolean p1, v1, Lg/axs;->g:Z

    if-eqz p1, :cond_1a

    iget-object p1, v1, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzful;

    if-nez p1, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {v1}, Lg/axs;->j()Lcom/google/android/gms/internal/ads/zzfvk;

    move-result-object p2

    iget-object v0, v1, Lg/axs;->h:Ljava/lang/Object;

    check-cast v0, Lg/eap;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzful;->zza(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;)V

    const-string v2, "onLMDOverlayCollapse"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/eax;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_1a
    :goto_10
    const-string p1, "LastMileDelivery not connected"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    :goto_11
    return-void

    :pswitch_d
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object v1, p1, Lg/ti;->ac:Lg/axs;

    iget-boolean p1, v1, Lg/axs;->g:Z

    if-eqz p1, :cond_1c

    iget-object p1, v1, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzful;

    if-nez p1, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v1}, Lg/axs;->j()Lcom/google/android/gms/internal/ads/zzfvk;

    move-result-object p2

    iget-object v0, v1, Lg/axs;->h:Ljava/lang/Object;

    check-cast v0, Lg/eap;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzful;->zzc(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;)V

    const-string v2, "onLMDOverlayExpand"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/eax;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_1c
    :goto_12
    const-string p1, "LastMileDelivery not connected"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_e
    const-string v0, "enifd"

    const-string v1, "verticalMargin"

    const-string v2, "gravityY"

    const-string v3, "gravityX"

    const-string v4, "appId"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string p1, "Missing App Id, cannot show LMD Overlay without it"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvf;->zzl()Lcom/google/android/gms/internal/ads/zzfve;

    move-result-object v5

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfve;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfve;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getWidth()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfve;->zzh(I)Lcom/google/android/gms/internal/ads/zzfve;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfve;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfve;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfve;->zzd(I)Lcom/google/android/gms/internal/ads/zzfve;

    goto :goto_14

    :cond_1e
    const/16 v2, 0x51

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfve;->zzd(I)Lcom/google/android/gms/internal/ads/zzfve;

    :goto_14
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfve;->zze(F)Lcom/google/android/gms/internal/ads/zzfve;

    goto :goto_15

    :cond_1f
    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfve;->zze(F)Lcom/google/android/gms/internal/ads/zzfve;

    :goto_15
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfve;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfve;

    :cond_20
    :try_start_4
    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object p2, p2, Lg/ti;->ac:Lg/axs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfve;->zzi()Lcom/google/android/gms/internal/ads/zzfvf;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg/axs;->n(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfvf;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    move-object p1, v0

    const-string p2, "DefaultGmsgHandlers.ShowLMDOverlay"

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "Missing parameters for LMD Overlay show request"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    :goto_16
    return-void

    :pswitch_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object v1, p2, Lg/ti;->ac:Lg/axs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p2

    monitor-enter v1

    :try_start_5
    iput-object p1, v1, Lg/axs;->d:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lg/axs;->o(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "Unable to bind"

    const-string p2, "on_play_store_bind"

    invoke-virtual {v1, p1, p2}, Lg/axs;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_18

    :cond_21
    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string p1, "action"

    const-string p2, "fetch_completed"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "on_play_store_bind"

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/eax;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v1

    :goto_17
    return-void

    :goto_18
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :pswitch_10
    const-string p2, "nativeClickMetaReady"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzK()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_19

    :cond_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_19
    return-void

    :pswitch_11
    const-string p2, "nativeAdViewSignalsReady"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzK()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zza()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1a

    :cond_23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1a
    return-void

    :pswitch_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "xInPixels"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    aget v0, v2, v0

    const-string v2, "yInPixels"

    const-string v4, "windowWidthInPixels"

    invoke-static {v0, v3, v2, p2, v4}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "windowHeightInPixels"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "locationReady"

    invoke-interface {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "GET LOCATION COMPILED"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
