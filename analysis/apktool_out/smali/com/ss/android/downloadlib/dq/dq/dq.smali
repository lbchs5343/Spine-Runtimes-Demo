.class public Lcom/ss/android/downloadlib/dq/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static iw:Ljava/lang/String; = ""

.field private static volatile mn:Lcom/ss/android/downloadlib/dq/dq/dq; = null

.field private static p:Ljava/lang/String; = ""

.field private static s:Ljava/lang/String; = ""


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public dq:Lcom/ss/android/downloadlib/dq/dq/ox;

.field private ia:Z

.field private final ig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/ss/android/downloadlib/dq/dq/d;",
            "Lcom/ss/android/downloadlib/dq/dq/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private kk:Z

.field private final mp:Landroid/content/ServiceConnection;

.field private no:Landroid/content/Context;

.field private volatile o:Z

.field public final ox:Ljava/lang/Object;

.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ia:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->kk:Z

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ig:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->d:Ljava/util/List;

    new-instance v0, Lcom/ss/android/downloadlib/dq/dq/dq$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/dq/dq/dq$1;-><init>(Lcom/ss/android/downloadlib/dq/dq/dq;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->mp:Landroid/content/ServiceConnection;

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ox:Ljava/lang/Object;

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/dq/dq/dq;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/dq/dq/dq;->mn:Lcom/ss/android/downloadlib/dq/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/dq/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/dq/dq/dq;->mn:Lcom/ss/android/downloadlib/dq/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/dq/dq/dq;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/dq/dq/dq;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/dq/dq/dq;->mn:Lcom/ss/android/downloadlib/dq/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/android/downloadlib/dq/dq/dq;->mn:Lcom/ss/android/downloadlib/dq/dq/dq;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->no:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->mp:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ig:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dq(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/ss/android/downloadlib/dq/dq/dq;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/ss/android/downloadlib/dq/dq/dq;->s:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public dq(Lcom/ss/android/downloadlib/dq/dq/d;Lcom/ss/android/downloadlib/dq/dq/p;)V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/dq/dq/dq;->iw:Ljava/lang/String;

    iput-object v1, p1, Lcom/ss/android/downloadlib/dq/dq/d;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/android/downloadlib/dq/dq/d;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->q:Ljava/lang/String;

    iput-object v1, p1, Lcom/ss/android/downloadlib/dq/dq/d;->iw:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/ss/android/downloadlib/dq/dq/ox;->dq(Lcom/ss/android/downloadlib/dq/dq/d;Lcom/ss/android/downloadlib/dq/dq/p;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/dq/dq/dq;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->no:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->kk:Z

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/dq/dq/dq;->dq(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ig:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->o:Z

    return-void
.end method

.method public dq(Landroid/content/Context;Z)Z
    .locals 3

    sget-object v0, Lcom/ss/android/downloadlib/dq/dq/dq;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/appdownloader/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/downloadlib/dq/dq/dq;->p:Ljava/lang/String;

    const-string v2, "u"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/appdownloader/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/downloadlib/dq/dq/dq;->s:Ljava/lang/String;

    const-string v2, "w"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/dq/dq/dq;->iw:Ljava/lang/String;

    :cond_0
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->kk:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->no:Landroid/content/Context;

    sget-object p2, Lcom/ss/android/downloadlib/dq/dq/dq;->iw:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->no:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ss/android/downloadlib/dq/dq/dq;->iw:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/dq/dq/dq;->p()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/dq/dq/dq;->dq(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->no:Landroid/content/Context;

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->mp:Landroid/content/ServiceConnection;

    const/16 v1, 0x21

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public ox()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ig:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->dq:Lcom/ss/android/downloadlib/dq/dq/ox;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/ss/android/downloadlib/dq/dq/d;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/ss/android/downloadlib/dq/dq/p;

    invoke-interface {v2, v3, v1}, Lcom/ss/android/downloadlib/dq/dq/ox;->dq(Lcom/ss/android/downloadlib/dq/dq/d;Lcom/ss/android/downloadlib/dq/dq/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->ig:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/dq/dq/dq;->o:Z

    return v0
.end method
