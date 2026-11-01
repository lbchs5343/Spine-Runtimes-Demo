.class public Lg/fbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;
.implements Lg/eya;
.implements Lg/bsx;
.implements Lg/bol;
.implements Lg/dle;
.implements Lg/cqi;
.implements Lg/gmo;
.implements Lg/cld;
.implements Lg/arm;
.implements Lg/ano;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/gkj;
.implements Lcom/google/android/gms/internal/ads/zzfsj;
.implements Lg/ere;
.implements Lg/gpw;


# instance fields
.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fbc;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg/fbc;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "billingPeriod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "priceCurrencyCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "formattedPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "priceAmountMicros"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v0, "recurrenceMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v0, "billingCycleCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    return-void
.end method

.method public static n(Lg/dql;Landroid/text/Editable;IIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-gez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    if-eq v2, v3, :cond_19

    if-eq v1, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    if-eqz p4, :cond_16

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_3

    if-ge p4, v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p2, :cond_4

    :cond_3
    :goto_0
    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    :goto_1
    const/4 p4, 0x0

    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_9

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_0

    :cond_b
    const/4 p4, 0x1

    goto :goto_2

    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_d

    if-ge p3, v2, :cond_c

    goto :goto_4

    :cond_c
    if-gez p2, :cond_e

    :cond_d
    :goto_4
    const/4 p3, -0x1

    goto :goto_7

    :cond_e
    :goto_5
    const/4 p4, 0x0

    :goto_6
    if-nez p2, :cond_f

    move p3, v2

    goto :goto_7

    :cond_f
    if-lt v2, p3, :cond_10

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    const/4 p4, 0x1

    goto :goto_6

    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    if-ne p3, v3, :cond_17

    goto :goto_9

    :cond_16
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_17
    const-class p2, Lg/agc;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lg/agc;

    if-eqz p2, :cond_19

    array-length p4, p2

    if-lez p4, :cond_19

    array-length p4, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p4, :cond_18

    aget-object v3, p2, v2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    return v4

    :cond_19
    :goto_9
    return v0
.end method

.method public static final o()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhac;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhac;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhac;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhac;->zzb()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhac;->zzd(Lcom/google/android/gms/internal/ads/zzhac;)V

    :cond_1
    return-object p0
.end method

.method public static r(Lg/ggu;Z)V
    .locals 11

    iget-object v0, p0, Lg/ggu;->g:Lg/gqc;

    iget-object v1, p0, Lg/ggu;->i:Lg/fce;

    iget v2, v0, Lg/gqc;->ab:I

    iget v3, v1, Lg/fce;->ab:I

    rem-int/lit8 v4, v3, 0x4

    rsub-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Lg/gqc;->at(I)V

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v5

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    if-eqz p1, :cond_0

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v0, v6}, Lg/gqc;->at(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/ggu;->n(I)V

    new-array v7, v6, [I

    new-array v8, v6, [I

    :goto_0
    if-ge p1, v6, :cond_1

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v5, p1

    aput v10, v7, p1

    aput v9, v8, p1

    invoke-virtual {p0, v9}, Lg/ggu;->q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput v4, v1, Lg/fce;->s:I

    invoke-virtual {p0, v4}, Lg/ggu;->q(I)V

    new-instance p0, Lg/ddo;

    invoke-direct {p0, v6, v7, v8}, Lg/ddo;-><init>(I[I[I)V

    iput-object p0, v1, Lg/fce;->q:Lg/gqi;

    :goto_1
    iget p0, v0, Lg/gqc;->ab:I

    sub-int/2addr p0, v2

    iput p0, v1, Lg/fce;->v:I

    return-void
.end method

.method public static s(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lg/eha;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, La/u/e/TUE;

    invoke-direct {p1, p0}, La/u/e/TUE;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static final t(Ljava/lang/Object;Ljava/lang/Object;)Lg/ou;
    .locals 1

    check-cast p0, Lg/ou;

    check-cast p1, Lg/ou;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/ou;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/ou;->e()Lg/ou;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lg/ou;->f()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lg/ou;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public _bt(Lg/ggu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/fbc;->r(Lg/ggu;Z)V

    return-void
.end method

.method public _bu()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 11

    iget v0, p0, Lg/fbc;->m:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Lg/fml;->d(Landroid/content/Context;)V

    invoke-static {}, Lg/fnp;->m()Z

    move-result p2

    const/high16 v0, 0x10000000

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v2, "miui.intent.action.APP_MANAGER"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.appmanager.AppManagerMainActivity"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return v1

    :sswitch_0
    check-cast p1, Landroid/app/Activity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lg/fnp;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lg/fnp;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const v5, 0x7f1201f6

    if-nez v3, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1201f5

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1201f3

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1201f4

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1201f7

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const v2, 0x7f120163

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x15

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result v2

    const-string v3, "32-Bit"

    if-eqz v2, :cond_3

    const-string v2, ", "

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "64"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "64-Bit"

    :cond_3
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const v3, 0x7f120161

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg/fnp;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const v2, 0x7f120162

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const/16 v2, 0x10

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    new-array v8, v5, [J

    aput-wide v6, v8, v4

    aput-wide v2, v8, v1

    goto :goto_3

    :cond_5
    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    new-array v8, v5, [J

    const-wide/16 v6, -0x1

    aput-wide v6, v8, v4

    aput-wide v2, v8, v1

    :goto_3
    aget-wide v2, v8, v4

    invoke-static {v2, v3}, Lg/fnp;->k(J)Ljava/lang/String;

    move-result-object v2

    aget-wide v6, v8, v1

    invoke-static {v6, v7}, Lg/fnp;->k(J)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aput-object v3, v6, v1

    const v2, 0x7f12025f

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v5, [J

    fill-array-data v2, :array_0

    goto :goto_5

    :cond_6
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    :goto_4
    mul-long v2, v2, v6

    mul-long v8, v8, v6

    new-array v6, v5, [J

    aput-wide v2, v6, v4

    aput-wide v8, v6, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v6

    goto :goto_5

    :catch_1
    new-array v2, v5, [J

    fill-array-data v2, :array_1

    :goto_5
    aget-wide v6, v2, v4

    invoke-static {v6, v7}, Lg/fnp;->k(J)Ljava/lang/String;

    move-result-object v3

    aget-wide v6, v2, v1

    invoke-static {v6, v7}, Lg/fnp;->k(J)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v4

    aput-object v2, v6, v1

    const v2, 0x7f12022d

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/Point;->y:I

    const-string v8, " px"

    invoke-static {v6, v7, v8}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v7, " / "

    invoke-static {v6, v7}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v8, " dp"

    invoke-static {v6, v7, v8}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lg/fso;->ap(Landroid/util/DisplayMetrics;Landroid/graphics/Point;)D

    move-result-wide v7

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v1}, Lg/erl;->ax(DI)D

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v1}, Lg/erl;->ax(DI)D

    invoke-static {v7, v8, v1}, Lg/erl;->ax(DI)D

    :cond_8
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const v6, 0x7f1203f9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Lg/fso;->ap(Landroid/util/DisplayMetrics;Landroid/graphics/Point;)D

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v1}, Lg/erl;->ax(DI)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "\" * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3, v1}, Lg/erl;->ax(DI)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v1}, Lg/erl;->ax(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    aput-object v2, v5, v1

    const v2, 0x7f1203fa

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "\r\n"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lg/baf;->ag(Landroid/app/Activity;Lg/ert;Ljava/lang/String;)V

    return v1

    :sswitch_1
    invoke-static {p1}, Lg/fml;->d(Landroid/content/Context;)V

    sget-object p2, Lg/fnp;->b:Ljava/util/HashMap;

    const-string p2, "meizu"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/high16 v0, 0x20000000

    const-string v2, "com.android.settings.LanguageSettings"

    const-string v3, "com.android.settings"

    const-string v4, "android.intent.action.MAIN"

    if-eqz p2, :cond_9

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_6

    :cond_9
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v5}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_a
    :goto_6
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public _ct(Lg/ggu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/fbc;->r(Lg/ggu;Z)V

    return-void
.end method

.method public ak(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lg/bdx;->a:Lg/dpd;

    const/4 v1, 0x0

    new-array v2, v1, [Lg/gar;

    sget-object v3, Lg/ex;->d:Ljava/util/TimeZone;

    new-instance v3, Lg/cxa;

    sget v4, Lg/ex;->c:I

    invoke-direct {v3, v4, v2}, Lg/cxa;-><init>(I[Lg/gar;)V

    :try_start_0
    new-instance v2, Lg/cnu;

    sget-object v4, Lg/cbq;->a:Lg/cbq;

    invoke-direct {v2, v3, v4}, Lg/cnu;-><init>(Lg/cxa;Lg/cbq;)V

    invoke-virtual {v2, p1}, Lg/cnu;->r(Ljava/lang/Object;)V

    const-string p1, "UTF-8"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, v3, Lg/cxa;->l:[C

    iget v5, v3, Lg/cxa;->m:I

    invoke-direct {v2, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lg/cxa;->close()V

    const-string v2, "content"

    invoke-static {p1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p1

    array-length v3, p1

    int-to-long v4, v3

    int-to-long v6, v1

    int-to-long v8, v2

    invoke-static/range {v4 .. v9}, Lg/erq;->ac(JJJ)V

    new-instance v1, Lg/bab;

    invoke-direct {v1, v0, v2, p1}, Lg/bab;-><init>(Lg/dpd;I[B)V

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    new-instance v0, Lg/bfj;

    const-string v1, "toBytes error"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3}, Lg/cxa;->close()V

    throw p1
.end method

.method public c(Lcom/google/android/gms/internal/ads/zzacs;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d()Lg/flj;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dq(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/reflect/Method;I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parameter #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(F)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 16

    new-instance v0, Lg/cuf;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/cuf;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lg/cq;->DEFAULT:Lg/cq;

    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v9, "Null flags"

    if-eqz v8, :cond_4

    new-instance v3, Lg/emw;

    const-wide/16 v4, 0x7530

    const-wide/32 v6, 0x5265c00

    invoke-direct/range {v3 .. v8}, Lg/emw;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lg/cq;->HIGHEST:Lg/cq;

    if-eqz v8, :cond_3

    new-instance v3, Lg/emw;

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0x5265c00

    invoke-direct/range {v3 .. v8}, Lg/emw;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lg/cq;->VERY_LOW:Lg/cq;

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Lg/ftx;

    sget-object v4, Lg/ftx;->DEVICE_IDLE:Lg/ftx;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v15

    if-eqz v15, :cond_1

    new-instance v10, Lg/emw;

    const-wide/32 v11, 0x5265c00

    const-wide/32 v13, 0x5265c00

    invoke-direct/range {v10 .. v15}, Lg/emw;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Lg/cq;->values()[Lg/cq;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lg/hau;

    invoke-direct {v2, v0, v1}, Lg/hau;-><init>(Lg/cqi;Ljava/util/HashMap;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lg/auj;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p1, p1, Lg/auj;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public j(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public k(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public ox()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Lorg/json/JSONObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_1

    array-length p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p3, "secure-playback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "video/avc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v(Landroid/content/Context;Ljava/lang/String;Lg/hc;)Lg/br;
    .locals 4

    new-instance v0, Lg/br;

    invoke-direct {v0}, Lg/br;-><init>()V

    invoke-interface {p3, p1, p2}, Lg/hc;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lg/br;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p3, p1, p2, v3}, Lg/hc;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lg/br;->b:I

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1, p2, v2}, Lg/hc;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lg/br;->b:I

    :goto_0
    iget p2, v0, Lg/br;->a:I

    if-nez p2, :cond_1

    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v3, p2

    :cond_2
    if-lt v3, p1, :cond_3

    const/4 v2, -0x1

    :cond_3
    :goto_1
    iput v2, v0, Lg/br;->c:I

    return-object v0
.end method

.method public w(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza()I
    .locals 1

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public zzb(I)Landroid/media/MediaCodecInfo;
    .locals 0

    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzr()V

    return-void
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzadq;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadp;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    return-object v0
.end method

.method public zze()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzg(J)V
    .locals 0

    return-void
.end method
