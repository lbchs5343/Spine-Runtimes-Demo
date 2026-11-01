.class public Lcom/ss/android/socialbase/appdownloader/iw/s;
.super Ljava/lang/Object;


# static fields
.field public static d:Ljava/lang/String; = ""

.field public static dq:Ljava/lang/String; = null

.field private static ia:Ljava/lang/Boolean; = null

.field private static iw:Ljava/lang/String; = null

.field private static mn:Ljava/lang/String; = null

.field public static ox:Ljava/lang/String; = null

.field private static p:Ljava/lang/String; = ""

.field private static s:Ljava/lang/String;


# direct methods
.method private static cd()V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->u()V

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/s;->d:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.build.version."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/s;->ox:Ljava/lang/String;

    const-string v2, "rom"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/s;->ox:Ljava/lang/String;

    const-string v2, ".market"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "getprop "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v3, v4, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-object v3, v2

    :catchall_1
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    return-object v2
.end method

.method public static d()Z
    .locals 1

    const-string v0, "MAGICUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dq()Z
    .locals 1

    const-string v0, "EMUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MAGICUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->cd()V

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.xiaomi.market"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.hihonor.appmarket"

    const-string v2, "MAGICUI"

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->fw()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "EMUI"

    :goto_0
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "com.huawei.appmarket"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "ro.build.version.magic"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.heytap.market"

    if-nez v0, :cond_7

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/mn;->dq(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->d:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "VIVO"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.bbk.appstore"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "SMARTISAN"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.smartisanos.appstore"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "ro.gn.sv.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "QIONEE"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.gionee.aora.market"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v0, "ro.lenovo.lvp.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "LENOVO"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.lenovo.leos.appstore"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SAMSUNG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.sec.android.app.samsungapps"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "zte.com.market"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto :goto_1

    :cond_d
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NUBIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "cn.nubia.neostore"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FLYME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "com.meizu.mstore"

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->ig()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ONEPLUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    sput-object v2, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, "ro.rom.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/mn;->dq(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->d:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto :goto_1

    :cond_10
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    goto :goto_1

    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ia:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/p;->mn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "harmony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ia:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ia:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static fw()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "honor"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static gh()V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static ia()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static ig()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iw()Z
    .locals 1

    const-string v0, "FLYME"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static jy()Z
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->gh()V

    const-string v0, "V12"

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static kk()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public static mn()Z
    .locals 1

    const-string v0, "SAMSUNG"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mp()Z
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->gh()V

    const-string v0, "V10"

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static no()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v3, Landroid/os/SystemProperties;

    const-string v4, "get"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static ox()Z
    .locals 1

    const-string v0, "MIUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable_reflect_system_properties"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p()Z
    .locals 1

    const-string v0, "VIVO"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->gh()V

    const-string v0, "V11"

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/iw/s;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->cd()V

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
