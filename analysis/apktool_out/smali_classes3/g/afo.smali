.class public abstract Lg/afo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aa:Lg/gcd;

.field public static final ab:Lg/bli;

.field public static ac:Z

.field public static final ad:[Ljava/lang/String;

.field public static final y:Lg/cuf;

.field public static final z:Lg/cfg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lg/afo;->ad:[Ljava/lang/String;

    new-instance v0, Lg/cuf;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/cuf;-><init>(I)V

    sput-object v0, Lg/afo;->y:Lg/cuf;

    new-instance v0, Lg/cfg;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lg/afo;->z:Lg/cfg;

    new-instance v0, Lg/bli;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/afo;->ab:Lg/bli;

    return-void
.end method

.method public static ae(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bk"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sk"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/4 v4, 0x3

    goto :goto_3

    :cond_3
    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v9, 0x2f

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfwf;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwf;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfxd;->zzb(Lcom/google/android/gms/internal/ads/zzfwf;)Lcom/google/android/gms/internal/ads/zzfxd;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzfxd;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v7, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move-object v6, v1

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_8
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_4
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_d

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_c

    if-eq v4, v8, :cond_9

    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_9
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_a
    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_b

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    :cond_b
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_d

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_6

    :cond_c
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_e
    return-object p1
.end method

.method public static af(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ag(Lg/ao;Ljava/lang/String;Lg/aqv;Lg/cvw;)Lg/gev;
    .locals 7

    const-string v0, "tracer"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lg/cet;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroidx/lifecycle/a;-><init>(I)V

    new-instance v1, Lg/fby;

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lg/fby;-><init>(Ljava/util/concurrent/Executor;Lg/ao;Ljava/lang/String;Lg/cvw;Lg/cet;)V

    invoke-static {v1}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    new-instance p0, Lg/gev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static ah(II)Lg/gex;
    .locals 2

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lg/gex;->d:Lg/gex;

    sget-object p0, Lg/gex;->d:Lg/gex;

    return-object p0

    :cond_0
    new-instance v0, Lg/gex;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-direct {v0, p0, p1, v1}, Lg/fqr;-><init>(III)V

    return-object v0
.end method

.method public static ai(Landroid/content/Context;)V
    .locals 10

    sget-object v0, Lg/fnp;->d:Ljava/util/HashMap;

    invoke-static {}, Lg/fnp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lg/fnp;->m()Z

    move-result v1

    const-string v2, "android.settings.DEVICE_INFO_SETTINGS"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v5, p0

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string p0, "miui.intent.action.DEVICE_INFO_SETTINGS"

    invoke-direct {v6, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v0, v3}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    :cond_2
    return-void

    :cond_3
    move-object v5, p0

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    if-nez v0, :cond_4

    move-object v0, v2

    :cond_4
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1, v3}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static final aj(Lg/gff;)V
    .locals 3

    invoke-interface {p0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    check-cast v0, Lg/ajs;

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    sget-object v1, Lg/fqv;->INITIALIZED:Lg/fqv;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/fqv;->CREATED:Lg/fqv;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    invoke-virtual {v0}, Lg/hbu;->i()Lg/fet;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lg/dtj;

    invoke-interface {p0}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lg/gyj;

    invoke-direct {v0, v1, v2}, Lg/dtj;-><init>(Lg/hbu;Lg/gyj;)V

    invoke-interface {p0}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Lg/hbu;->j(Ljava/lang/String;Lg/fet;)V

    invoke-interface {p0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Lg/dtj;)V

    invoke-virtual {p0, v1}, Lg/euu;->l(Lg/ajm;)V

    :cond_2
    return-void
.end method

.method public static ak(Landroid/content/Context;)Z
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "development_settings_enabled"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v3, :cond_1

    return v3

    :catch_0
    :cond_1
    return v1
.end method

.method public static al(Lg/hed;Lg/mw;Ljava/util/List;)Z
    .locals 7

    iget-object v0, p1, Lg/mw;->a:Lg/fza;

    iget-object v1, p1, Lg/mw;->f:Lg/fza;

    iget-object v2, v0, Lg/fza;->ab:Lg/fza;

    new-instance v3, Lg/dxx;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lg/dxx;-><init>(Lg/fza;I)V

    invoke-static {p2, v3}, Lg/acw;->bc(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/mw;

    const/4 v3, 0x1

    const-string v4, ") to fix multi-entry loop: "

    const-string v5, "Duplicate block ("

    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/mw;->a:Lg/fza;

    iget-object v6, v0, Lg/fza;->d:Ljava/util/List;

    invoke-static {v6, v2}, Lg/acw;->ak(Ljava/util/List;Ljava/lang/Comparable;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v0}, Lg/giq;->d(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object p2

    invoke-static {v0, p2}, Lg/giq;->c(Lg/fza;Lg/fza;)V

    invoke-static {p2, v0, v2}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return v3

    :cond_1
    :goto_0
    new-instance v0, Lg/dxx;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/dxx;-><init>(Lg/fza;I)V

    invoke-static {p2, v0}, Lg/acw;->bc(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/mw;

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported multi-entry loop pattern ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). Please report as a decompilation issue!!!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p2, p2, Lg/mw;->f:Lg/fza;

    iget-object v0, p1, Lg/mw;->a:Lg/fza;

    invoke-static {p0, p2, v0}, Lg/giq;->d(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v0

    invoke-static {v1, v0}, Lg/giq;->c(Lg/fza;Lg/fza;)V

    invoke-static {p2, v1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return v3
.end method

.method public static am(Lg/hed;[Lg/fzf;Lg/fza;)V
    .locals 5

    sget-object v0, Lg/acq;->q:Lg/acq;

    iget v1, p2, Lg/fza;->x:I

    sget-object v2, Lg/fzf;->GRAY:Lg/fzf;

    aput-object v2, p1, v1

    iget-object v1, p2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    sget-object v3, Lg/rr;->a:[I

    iget v4, v2, Lg/fza;->x:I

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg/mw;

    sget-object v4, Lg/hbg;->CROSS_EDGE:Lg/hbg;

    invoke-direct {v3, v4, p2, v2}, Lg/mw;-><init>(Lg/hbg;Lg/fza;Lg/fza;)V

    invoke-virtual {p0, v0, v3}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lg/mw;

    sget-object v4, Lg/hbg;->BACK_EDGE:Lg/hbg;

    invoke-direct {v3, v4, p2, v2}, Lg/mw;-><init>(Lg/hbg;Lg/fza;Lg/fza;)V

    invoke-virtual {p0, v0, v3}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v2}, Lg/afo;->am(Lg/hed;[Lg/fzf;Lg/fza;)V

    goto :goto_0

    :cond_3
    iget p0, p2, Lg/fza;->x:I

    sget-object p2, Lg/fzf;->BLACK:Lg/fzf;

    aput-object p2, p1, p0

    return-void
.end method

.method public static an(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.trinea.android.lib.view.developer.DeveloperOptionsGuideActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    move-object v2, v4

    if-nez p0, :cond_6

    invoke-static {v2}, Lg/fnp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lg/fnp;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f1201d2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-le v3, v4, :cond_1

    aget-object p0, v1, v5

    aget-object v1, v1, v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object v1, v3, v4

    const p0, 0x7f1201d3

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v2, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v2, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const v0, 0x7f1201d4

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<br/><br/>"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f1201d5

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    const v0, 0x3fb33333    # 1.4f

    invoke-virtual {v1, p0, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 p0, 0x41c00000    # 24.0f

    invoke-static {v2, p0}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result p0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v2, v0}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, p0, v3, p0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p0, 0x1010036

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const v0, -0xcccccd

    invoke-virtual {p0, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201d6

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120384

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v2, v1}, Lg/bfc;->s(Landroid/content/Context;Landroid/app/AlertDialog;)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    :try_start_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x1010433

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "colorPrimary"

    const-string v7, "attr"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    new-instance v0, Lg/anh;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lg/anh;-><init>(Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lg/eax;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Lg/ewy;

    invoke-direct {p0, v3, v0}, Lg/ewy;-><init>(Landroid/os/Handler;Lg/eax;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    return-void
.end method

.method public static ao(Landroid/content/Context;Z)Z
    .locals 9

    invoke-static {p0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lg/afo;->an(Landroid/content/Context;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lg/fnp;->f()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.vivo.settings.DevelpmentSettingsActivity2"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_2
    move-object v4, p0

    :cond_3
    const/16 p0, 0x1c

    invoke-static {p0}, Lg/dyd;->bp(I)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-class v3, Landroid/content/pm/PackageManager;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.DevelopmentSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance p0, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_6

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, ".DevelopmentSettingsDisabledActivity"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x24

    if-ne v2, v0, :cond_6

    :goto_0
    monitor-exit v3

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_6
    :goto_1
    move-object v5, p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v1

    goto :goto_4

    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    const/16 p0, 0x15

    invoke-static {p0}, Lg/dyd;->bp(I)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {p0, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string p0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_8
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string p0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    if-nez p0, :cond_8

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {p0, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    if-eqz p1, :cond_b

    invoke-static {v4}, Lg/afo;->an(Landroid/content/Context;)V

    :cond_b
    return v1
.end method

.method public static ap(Lg/gex;I)Lg/fqr;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    iget v0, p0, Lg/fqr;->b:I

    iget v1, p0, Lg/fqr;->c:I

    iget p0, p0, Lg/fqr;->a:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    new-instance p0, Lg/fqr;

    invoke-direct {p0, v0, v1, p1}, Lg/fqr;-><init>(III)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step must be positive, was: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aq(ILg/fkx;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lg/afo;->af(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "public "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "private "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v3, 0x4

    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "protected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "static "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "final "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v3, 0x400

    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "abstract "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v3, 0x100

    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "native "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v3, Lg/fy;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/16 v3, 0x80

    const/16 v4, 0x40

    const/16 v5, 0x20

    if-eq p1, v1, :cond_e

    if-eq p1, v2, :cond_c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const p1, 0x8000

    invoke-static {p0, p1}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "module "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 p1, 0x800

    invoke-static {p0, p1}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "strict "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {p0, v5}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "super "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 p1, 0x4000

    invoke-static {p0, p1}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "enum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/high16 p1, 0x40000

    invoke-static {p0, p1}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "data "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    invoke-static {p0, v4}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "volatile "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "transient "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_e
    invoke-static {p0, v5}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "synchronized "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-static {p0, v4}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "bridge "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-static {p0, v3}, Lg/afo;->af(II)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "varargs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_0
    const/16 p1, 0x1000

    invoke-static {p0, p1}, Lg/afo;->af(II)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "synthetic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lg/afo;->az(Landroid/view/View;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)Lg/sd;

    move-result-object p0

    return-object p0
.end method

.method public static as(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string p0, "/sdcard/"

    return-object p0
.end method

.method public static at(Ljava/util/Map;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

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

.method public static au(Lg/yu;)Lg/ful;
    .locals 2

    invoke-interface {p0}, Lg/yu;->e()Lg/enn;

    move-result-object v0

    sget-object v1, Lg/enn;->METHOD_REF:Lg/enn;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lg/yu;->l()Lg/gqi;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lg/ful;

    return-object v0

    :cond_1
    invoke-interface {p0}, Lg/yu;->d()Lg/ful;

    move-result-object p0

    return-object p0
.end method

.method public static final av(Lg/ewp;)Lg/gzf;
    .locals 7

    iget-object p0, p0, Lg/bin;->b:Ljava/util/LinkedHashMap;

    sget-object v0, Lg/afo;->y:Lg/cuf;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gff;

    if-eqz v0, :cond_8

    sget-object v1, Lg/afo;->z:Lg/cfg;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gyj;

    if-eqz v1, :cond_7

    sget-object v2, Lg/afo;->ab:Lg/bli;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Lg/bmr;->y:Lg/bmr;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v0}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    invoke-virtual {v0}, Lg/hbu;->i()Lg/fet;

    move-result-object v0

    instance-of v3, v0, Lg/dtj;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Lg/dtj;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v1}, Lg/afo;->aw(Lg/gyj;)Lg/wi;

    move-result-object v1

    iget-object v3, v1, Lg/wi;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gzf;

    if-nez v3, :cond_4

    sget-object v3, Lg/gzf;->a:[Ljava/lang/Class;

    invoke-virtual {v0}, Lg/dtj;->f()V

    iget-object v3, v0, Lg/dtj;->e:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, v0, Lg/dtj;->e:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v0, Lg/dtj;->e:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iput-object v4, v0, Lg/dtj;->e:Landroid/os/Bundle;

    :cond_3
    invoke-static {v3, v2}, Lg/byh;->n(Landroid/os/Bundle;Landroid/os/Bundle;)Lg/gzf;

    move-result-object v0

    iget-object v1, v1, Lg/wi;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final aw(Lg/gyj;)Lg/wi;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lg/wi;

    invoke-static {v1}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v2

    new-instance v3, Lg/exg;

    invoke-interface {v2}, Lg/hcp;->e()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v2, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lg/exg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/fc;

    const/4 v3, 0x0

    new-array v3, v3, [Lg/exg;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/exg;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/exg;

    invoke-direct {v2, v0}, Lg/fc;-><init>([Lg/exg;)V

    new-instance v0, Lg/fpd;

    invoke-interface {p0}, Lg/gyj;->getViewModelStore()Lg/wg;

    move-result-object v3

    instance-of v4, p0, Lg/hcr;

    if-eqz v4, :cond_0

    check-cast p0, Lg/hcr;

    invoke-interface {p0}, Lg/hcr;->getDefaultViewModelCreationExtras()Lg/bin;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lg/aje;->a:Lg/aje;

    :goto_0
    invoke-direct {v0, v3, v2, p0}, Lg/fpd;-><init>(Lg/wg;Lg/dqr;Lg/bin;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v1, p0}, Lg/fpd;->t(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;

    move-result-object p0

    check-cast p0, Lg/wi;

    return-object p0
.end method

.method public static ax(Lg/dvq;)Lg/bjl;
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lg/dvq;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_18

    invoke-virtual {v0, v6}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v2

    const/16 v22, 0x1

    invoke-virtual {v0, v6}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cache-Control"

    invoke-static {v2, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v8, :cond_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    move-object v8, v4

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    invoke-static {v2, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v23, v1

    const-string v1, "=,;"

    invoke-static {v1, v0}, Lg/dcv;->bg(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_4

    :cond_3
    move/from16 v23, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_5
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2c

    if-eq v2, v5, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3b

    if-ne v2, v5, :cond_4

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v3, v3, 0x1

    sget-object v2, Lg/erq;->c:[B

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v24, v2

    const/16 v2, 0x20

    if-eq v5, v2, :cond_5

    const/16 v2, 0x9

    if-eq v5, v2, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v24

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x22

    if-ne v2, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x4

    invoke-static {v4, v5, v3, v2}, Lg/dcv;->bh(Ljava/lang/CharSequence;CII)I

    move-result v2

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v3

    :goto_8
    if-ge v5, v2, :cond_9

    move/from16 v24, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v5

    const-string v5, ",;"

    invoke-static {v5, v2}, Lg/dcv;->bg(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v5, v25

    goto :goto_9

    :cond_8
    add-int/lit8 v5, v25, 0x1

    move/from16 v2, v24

    goto :goto_8

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :goto_9
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v5

    goto :goto_b

    :cond_a
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    const/4 v3, 0x0

    :goto_b
    const-string v1, "no-cache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v9, 0x1

    :cond_b
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_3

    :cond_c
    const-string v1, "no-store"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v10, 0x1

    goto :goto_c

    :cond_d
    const-string v1, "max-age"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    invoke-static {v1, v3}, Lg/erq;->ad(ILjava/lang/String;)I

    move-result v11

    goto :goto_c

    :cond_e
    const/4 v1, -0x1

    const-string v5, "s-maxage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v1, v3}, Lg/erq;->ad(ILjava/lang/String;)I

    move-result v12

    goto :goto_c

    :cond_f
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v13, 0x1

    goto :goto_c

    :cond_10
    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v14, 0x1

    goto :goto_c

    :cond_11
    const-string v1, "must-revalidate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v15, 0x1

    goto :goto_c

    :cond_12
    const-string v1, "max-stale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x7fffffff

    invoke-static {v0, v3}, Lg/erq;->ad(ILjava/lang/String;)I

    move-result v16

    goto :goto_c

    :cond_13
    const-string v1, "min-fresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    invoke-static {v1, v3}, Lg/erq;->ad(ILjava/lang/String;)I

    move-result v17

    goto :goto_c

    :cond_14
    const/4 v1, -0x1

    const-string v3, "only-if-cached"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v18, 0x1

    goto :goto_c

    :cond_15
    const-string v3, "no-transform"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v19, 0x1

    goto :goto_c

    :cond_16
    const-string v3, "immutable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v20, 0x1

    goto/16 :goto_c

    :cond_17
    move/from16 v23, v1

    const/4 v1, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_0

    :cond_18
    if-nez v7, :cond_19

    const/16 v21, 0x0

    goto :goto_d

    :cond_19
    move-object/from16 v21, v8

    :goto_d
    new-instance v8, Lg/bjl;

    invoke-direct/range {v8 .. v21}, Lg/bjl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v8
.end method

.method public static ay(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "OfflineUpload.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftl;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftm;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftn;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzk()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzl()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftm;->zzj()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzftn;->zzb(Lcom/google/android/gms/internal/ads/zzfth;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "clearStorageOnIdlessMode"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static az(Landroid/view/View;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)Lg/sd;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, p1, p2}, Lg/sd;->d(Landroid/view/View;Ljava/lang/CharSequence;I)Lg/sd;

    move-result-object p1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Lg/sd;->e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p2, Lg/bo;

    invoke-direct {p2, p0, p1}, Lg/bo;-><init>(Landroid/view/View;Lg/sd;)V

    iget-object p0, p1, Lg/cle;->ae:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lg/cle;->ae:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, p1, Lg/cle;->ae:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p5}, Lg/afo;->bb(Lg/sd;Z)V

    invoke-virtual {p1}, Lg/sd;->f()V

    return-object p1
.end method

.method public static final ba(Landroid/content/Context;Lg/flk;)Lg/fxb;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "context"

    invoke-static {v1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lg/gkr;

    iget-object v0, v2, Lg/flk;->l:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v0}, Lg/gkr;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "context.applicationContext"

    invoke-static {v0, v4}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v5, Lg/aqv;

    const-string v6, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v5, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v2, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    const-string v8, "clock"

    invoke-static {v6, v8}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x16

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    new-instance v7, Lg/bst;

    invoke-direct {v7, v0, v9}, Lg/bst;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v10, v7, Lg/bst;->l:Z

    goto :goto_0

    :cond_0
    const-string v7, "androidx.work.workdb"

    invoke-static {v7}, Lg/dcv;->bo(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_29

    new-instance v11, Lg/bst;

    invoke-direct {v11, v0, v7}, Lg/bst;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lg/aoi;

    invoke-direct {v7, v8, v0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iput-object v7, v11, Lg/bst;->a:Lg/aoi;

    move-object v7, v11

    :goto_0
    iput-object v5, v7, Lg/bst;->i:Ljava/util/concurrent/Executor;

    new-instance v5, Lg/csa;

    invoke-direct {v5, v6}, Lg/csa;-><init>(Lg/dwm;)V

    iget-object v11, v7, Lg/bst;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->a:Lg/hdp;

    const/4 v13, 0x0

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-instance v5, Lg/gav;

    const/4 v12, 0x3

    const/4 v14, 0x2

    invoke-direct {v5, v0, v14, v12}, Lg/gav;-><init>(Landroid/content/Context;II)V

    new-array v12, v10, [Lg/hbi;

    aput-object v5, v12, v13

    invoke-virtual {v7, v12}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->k:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->l:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-instance v5, Lg/gav;

    const/4 v12, 0x5

    const/4 v15, 0x6

    invoke-direct {v5, v0, v12, v15}, Lg/gav;-><init>(Landroid/content/Context;II)V

    new-array v12, v10, [Lg/hbi;

    aput-object v5, v12, v13

    invoke-virtual {v7, v12}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->b:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->g:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->j:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-instance v5, Lg/gav;

    invoke-direct {v5, v0}, Lg/gav;-><init>(Landroid/content/Context;)V

    new-array v12, v10, [Lg/hbi;

    aput-object v5, v12, v13

    invoke-virtual {v7, v12}, Lg/bst;->q([Lg/hbi;)V

    new-instance v5, Lg/gav;

    const/16 v12, 0xa

    const/16 v15, 0xb

    invoke-direct {v5, v0, v12, v15}, Lg/gav;-><init>(Landroid/content/Context;II)V

    new-array v12, v10, [Lg/hbi;

    aput-object v5, v12, v13

    invoke-virtual {v7, v12}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->f:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->h:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->i:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-array v5, v10, [Lg/hbi;

    sget-object v12, Lg/hdp;->m:Lg/hdp;

    aput-object v12, v5, v13

    invoke-virtual {v7, v5}, Lg/bst;->q([Lg/hbi;)V

    new-instance v5, Lg/gav;

    const/16 v12, 0x15

    invoke-direct {v5, v0, v12, v8}, Lg/gav;-><init>(Landroid/content/Context;II)V

    new-array v0, v10, [Lg/hbi;

    aput-object v5, v0, v13

    invoke-virtual {v7, v0}, Lg/bst;->q([Lg/hbi;)V

    iput-boolean v13, v7, Lg/bst;->b:Z

    iput-boolean v10, v7, Lg/bst;->f:Z

    iget-object v0, v7, Lg/bst;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget-object v5, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_1

    sget-object v0, Lg/dav;->b:Lg/xh;

    iput-object v0, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    iput-object v0, v7, Lg/bst;->i:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    iput-object v0, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    iput-object v0, v7, Lg/bst;->i:Ljava/util/concurrent/Executor;

    :cond_3
    :goto_1
    iget-object v0, v7, Lg/bst;->j:Ljava/util/HashSet;

    iget-object v5, v7, Lg/bst;->c:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-static {v8, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, v7, Lg/bst;->a:Lg/aoi;

    if-nez v0, :cond_6

    new-instance v0, Lg/cuf;

    invoke-direct {v0, v14}, Lg/cuf;-><init>(I)V

    :cond_6
    iget-wide v13, v7, Lg/bst;->k:J

    const-wide/16 v15, 0x0

    const-string v8, "Required value was null."

    cmp-long v18, v13, v15

    if-lez v18, :cond_8

    iget-object v0, v7, Lg/bst;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v16, v11

    new-instance v11, Lg/hda;

    iget-boolean v13, v7, Lg/bst;->l:Z

    iget-object v14, v7, Lg/bst;->n:Lg/bjg;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lg/bjg;->AUTOMATIC:Lg/bjg;

    const/16 v18, 0x2

    iget-object v12, v7, Lg/bst;->h:Landroid/content/Context;

    if-eq v14, v15, :cond_9

    goto :goto_4

    :cond_9
    const-string v14, "activity"

    invoke-virtual {v12, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroid/app/ActivityManager;

    if-eqz v15, :cond_a

    check-cast v14, Landroid/app/ActivityManager;

    goto :goto_3

    :cond_a
    move-object v14, v9

    :goto_3
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v14

    if-nez v14, :cond_b

    sget-object v14, Lg/bjg;->WRITE_AHEAD_LOGGING:Lg/bjg;

    goto :goto_4

    :cond_b
    sget-object v14, Lg/bjg;->TRUNCATE:Lg/bjg;

    :goto_4
    iget-object v15, v7, Lg/bst;->i:Ljava/util/concurrent/Executor;

    if-eqz v15, :cond_28

    iget-object v9, v7, Lg/bst;->p:Ljava/util/concurrent/Executor;

    if-eqz v9, :cond_27

    iget-boolean v8, v7, Lg/bst;->b:Z

    const/16 v26, 0x1

    iget-boolean v10, v7, Lg/bst;->f:Z

    move/from16 v17, v13

    const/16 v19, 0x0

    iget-object v13, v7, Lg/bst;->m:Ljava/lang/String;

    move-object/from16 v19, v15

    const/16 v20, 0x0

    iget-object v15, v7, Lg/bst;->d:Lg/frk;

    move-object/from16 v21, v0

    iget-object v0, v7, Lg/bst;->e:Ljava/util/ArrayList;

    iget-object v7, v7, Lg/bst;->g:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v23, v5

    move-object/from16 v25, v7

    move-object/from16 v20, v9

    move/from16 v22, v10

    move-object/from16 v18, v14

    move-object/from16 v14, v21

    const/4 v7, 0x2

    move/from16 v21, v8

    const/4 v8, 0x0

    invoke-direct/range {v11 .. v25}, Lg/hda;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/hs;Lg/frk;Ljava/util/List;ZLg/bjg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/Set;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v5, v25

    const-class v9, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-static {v10}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lg/bff;->d(Ljava/lang/Object;)V

    const-string v13, "fullPackage"

    invoke-static {v10, v13}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "this as java.lang.String).substring(startIndex)"

    invoke-static {v12, v13}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const/16 v13, 0x5f

    const/16 v14, 0x2e

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    const-string v13, "replace(...)"

    invoke-static {v12, v13}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "_Impl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_d

    move-object v10, v12

    goto :goto_6

    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v10, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    const-string v13, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    invoke-static {v10, v13}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v9, Lg/gac;

    iget-object v10, v9, Lg/gac;->x:Lg/dbe;

    iget-object v10, v9, Lg/gac;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v11}, Lg/gac;->q(Lg/hda;)Lg/fgd;

    move-result-object v12

    iput-object v12, v9, Lg/gac;->v:Lg/fgd;

    invoke-virtual {v9}, Lg/gac;->o()Ljava/util/Set;

    move-result-object v12

    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, -0x1

    if-eqz v16, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v19, 0x0

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_10

    :goto_8
    move/from16 v13, v16

    add-int/lit8 v16, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->set(I)V

    goto :goto_a

    :cond_e
    if-gez v16, :cond_f

    goto :goto_9

    :cond_f
    const/4 v7, 0x2

    goto :goto_8

    :cond_10
    :goto_9
    const/4 v13, -0x1

    :goto_a
    if-ltz v13, :cond_11

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_15

    :goto_b
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_14

    if-gez v7, :cond_13

    goto :goto_c

    :cond_13
    move v5, v7

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_c
    invoke-virtual {v9, v10}, Lg/gac;->r(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hbi;

    iget v8, v7, Lg/hbi;->d:I

    iget v10, v7, Lg/hbi;->e:I

    iget-object v12, v15, Lg/frk;->a:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_17

    sget-object v8, Lg/dyq;->a:Lg/dyq;

    :cond_17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_e

    :cond_18
    const/4 v13, 0x0

    :goto_e
    if-nez v13, :cond_16

    const/4 v14, 0x1

    new-array v8, v14, [Lg/hbi;

    aput-object v7, v8, v19

    invoke-virtual {v15, v8}, Lg/frk;->c([Lg/hbi;)V

    goto :goto_d

    :cond_19
    const-class v5, Lg/goz;

    invoke-virtual {v9}, Lg/gac;->ao()Lg/fgd;

    move-result-object v7

    invoke-static {v5, v7}, Lg/gac;->af(Ljava/lang/Class;Lg/fgd;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/goz;

    const-class v5, Lg/qq;

    invoke-virtual {v9}, Lg/gac;->ao()Lg/fgd;

    move-result-object v7

    invoke-static {v5, v7}, Lg/gac;->af(Ljava/lang/Class;Lg/fgd;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/qq;

    iget-object v5, v11, Lg/hda;->n:Lg/bjg;

    sget-object v7, Lg/bjg;->WRITE_AHEAD_LOGGING:Lg/bjg;

    if-ne v5, v7, :cond_1a

    const/4 v13, 0x1

    goto :goto_f

    :cond_1a
    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v9}, Lg/gac;->ao()Lg/fgd;

    move-result-object v5

    invoke-interface {v5, v13}, Lg/fgd;->setWriteAheadLoggingEnabled(Z)V

    iget-object v5, v11, Lg/hda;->f:Ljava/util/List;

    iput-object v5, v9, Lg/gac;->ae:Ljava/util/List;

    iget-object v5, v11, Lg/hda;->a:Ljava/util/concurrent/Executor;

    iput-object v5, v9, Lg/gac;->ab:Ljava/util/concurrent/Executor;

    new-instance v5, Lg/aqv;

    iget-object v7, v11, Lg/hda;->j:Ljava/util/concurrent/Executor;

    const/4 v14, 0x1

    invoke-direct {v5, v7, v14}, Lg/aqv;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v5, v9, Lg/gac;->ad:Lg/aqv;

    iget-boolean v5, v11, Lg/hda;->h:Z

    iput-boolean v5, v9, Lg/gac;->z:Z

    invoke-virtual {v9}, Lg/gac;->s()Ljava/util/Map;

    move-result-object v5

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_1e

    :goto_11
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_13

    :cond_1c
    if-gez v13, :cond_1d

    goto :goto_12

    :cond_1d
    move v12, v13

    goto :goto_11

    :cond_1e
    :goto_12
    const/4 v12, -0x1

    :goto_13
    if-ltz v12, :cond_1f

    const/4 v13, 0x1

    goto :goto_14

    :cond_1f
    const/4 v13, 0x0

    :goto_14
    if-eqz v13, :cond_20

    iget-object v13, v9, Lg/gac;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_24

    :goto_15
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_23

    if-gez v8, :cond_22

    goto :goto_16

    :cond_22
    move v5, v8

    goto :goto_15

    :cond_23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    :goto_16
    check-cast v9, Landroidx/work/impl/WorkDatabase;

    new-instance v7, Lg/fzn;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v3}, Lg/fzn;-><init>(Landroid/content/Context;Lg/gkr;)V

    new-instance v4, Lg/egu;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v2, v3, v9}, Lg/egu;-><init>(Landroid/content/Context;Lg/flk;Lg/gkr;Landroidx/work/impl/WorkDatabase;)V

    sget v0, Lg/fje;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v0, v5, :cond_26

    new-instance v0, Lg/eyp;

    invoke-direct {v0, v1, v9, v2}, Lg/eyp;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg/flk;)V

    const-class v5, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v14, 0x1

    invoke-static {v1, v5, v14}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_25
    :goto_17
    move-object v8, v0

    goto :goto_19

    :cond_26
    :try_start_1
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v19

    const-class v8, Lg/dwm;

    const/16 v26, 0x1

    aput-object v8, v5, v26

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v1, v5, v19

    aput-object v6, v5, v26

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/giw;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_18

    :catchall_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_25

    new-instance v0, Lg/goj;

    invoke-direct {v0, v1}, Lg/goj;-><init>(Landroid/content/Context;)V

    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    const/4 v14, 0x1

    invoke-static {v1, v5, v14}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_17

    :goto_19
    new-instance v0, Lg/dio;

    new-instance v5, Lg/flz;

    invoke-direct {v5, v4, v3}, Lg/flz;-><init>(Lg/egu;Lg/ccc;)V

    move-object v6, v3

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lg/dio;-><init>(Landroid/content/Context;Lg/flk;Lg/fzn;Lg/egu;Lg/flz;Lg/ccc;)V

    move-object v3, v6

    const/4 v12, 0x2

    new-array v1, v12, [Lg/giw;

    aput-object v8, v1, v19

    const/16 v26, 0x1

    aput-object v0, v1, v26

    invoke-static {v1}, Lg/grj;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v0, Lg/fxb;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v6, v4

    move-object v4, v9

    invoke-direct/range {v0 .. v7}, Lg/fxb;-><init>(Landroid/content/Context;Lg/flk;Lg/ccc;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lg/egu;Lg/fzn;)V

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access the constructor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find implementation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bb(Lg/sd;Z)V
    .locals 6

    iget-object p0, p0, Lg/cle;->aa:Lg/cnp;

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f090310

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060054

    invoke-static {v3, v4}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040126

    invoke-static {v4, v5, v3}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0603fe

    invoke-static {v4, v5}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lg/cnp;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x17

    invoke-static {v3}, Lg/dyd;->bp(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lg/gdl;->ab(Landroid/widget/TextView;)V

    :cond_1
    if-eqz v2, :cond_2

    const v3, 0x7f0700c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v5, 0x7f0700bb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v0, 0x7f09030e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static bc(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract bd(Lg/cif;FF)V
.end method

.method public abstract be(Lg/cgy;)Lg/fkb;
.end method
