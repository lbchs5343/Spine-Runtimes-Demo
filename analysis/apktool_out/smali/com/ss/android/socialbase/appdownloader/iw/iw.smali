.class public Lcom/ss/android/socialbase/appdownloader/iw/iw;
.super Ljava/lang/Object;


# static fields
.field private static dq:Ljava/lang/Boolean;


# direct methods
.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->s()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized dq(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/appdownloader/iw/iw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->ox(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->ox()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->s(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dq()Z
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static iw()Z
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v4, ".so"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "636f6d2e73617572696b2e737562737472617465"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    const-string v2, "58706f7365644272696467652e6a6172"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    const-string v2, "6c696273616e64686f6f6b2e656478702e736f"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    return v3

    :catch_0
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static iw(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "64652e726f62762e616e64726f69642e78706f736564"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "636f6d2e746f706a6f686e77752e6d616769736b"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "696f2e76612e6578706f736564"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "636f6d2e77696e642e636f74746572"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "6f72672e6d656f776361742e656478706f7365642e6d616e61676572"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "6d652e7765697368752e657870"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "636f6d2e73617572696b2e737562737472617465"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ox()Z
    .locals 3

    const-string v0, "3132372e302e302e31"

    :try_start_0
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    new-instance v1, Ljava/net/Socket;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "3237303432"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static p()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/os/SystemProperties;

    const-string v4, "get"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "726f2e736563757265"

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    return v1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static s()Z
    .locals 9

    const-string v0, "2f7362696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "2f73797374656d2f62696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "2f73797374656d2f7862696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "2f646174612f6c6f63616c2f7862696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "2f646174612f6c6f63616c2f62696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "2f73797374656d2f73642f7862696e2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "2f73797374656d2f62696e2f6661696c736166652f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "2f646174612f6c6f63616c2f7375"

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->iw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->iw(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
