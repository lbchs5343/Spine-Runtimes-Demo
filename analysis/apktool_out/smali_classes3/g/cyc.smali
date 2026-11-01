.class public final Lg/cyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gle;


# static fields
.field public static final a:Lg/dil;

.field public static final b:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Ljava/util/HashSet;

.field public final e:Lg/ff;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lg/g;

.field public final h:Lg/rm;

.field public final i:Lg/crg;

.field public final j:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final k:Lg/fmu;

.field public l:Ljava/lang/String;

.field public final m:Lg/gtb;

.field public final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/cyc;->b:Ljava/lang/Object;

    new-instance v0, Lg/dil;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/dil;-><init>(I)V

    sput-object v0, Lg/cyc;->a:Lg/dil;

    return-void
.end method

.method public constructor <init>(Lg/rm;Lg/boa;)V
    .locals 9

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v7, Lg/cyc;->a:Lg/dil;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lg/fmu;

    invoke-virtual {p1}, Lg/rm;->p()V

    iget-object v2, p1, Lg/rm;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lg/fmu;-><init>(Landroid/content/Context;Lg/boa;)V

    new-instance p2, Lg/gtb;

    const/16 v2, 0x9

    invoke-direct {p2, v2, p1}, Lg/gtb;-><init>(ILjava/lang/Object;)V

    sget-object v2, Lg/cfg;->f:Lg/cfg;

    if-nez v2, :cond_0

    new-instance v2, Lg/cfg;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lg/cfg;-><init>(I)V

    sput-object v2, Lg/cfg;->f:Lg/cfg;

    :cond_0
    sget-object v2, Lg/cfg;->f:Lg/cfg;

    sget-object v3, Lg/ff;->a:Lg/ff;

    if-nez v3, :cond_1

    new-instance v3, Lg/ff;

    invoke-direct {v3, v2}, Lg/ff;-><init>(Lg/cfg;)V

    sput-object v3, Lg/ff;->a:Lg/ff;

    :cond_1
    sget-object v2, Lg/ff;->a:Lg/ff;

    new-instance v3, Lg/g;

    invoke-direct {v3, p1}, Lg/g;-><init>(Lg/rm;)V

    new-instance v4, Lg/crg;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lg/cyc;->n:Ljava/lang/Object;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lg/cyc;->d:Ljava/util/HashSet;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lg/cyc;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/cyc;->h:Lg/rm;

    iput-object v1, p0, Lg/cyc;->k:Lg/fmu;

    iput-object p2, p0, Lg/cyc;->m:Lg/gtb;

    iput-object v2, p0, Lg/cyc;->e:Lg/ff;

    iput-object v3, p0, Lg/cyc;->g:Lg/g;

    iput-object v4, p0, Lg/cyc;->i:Lg/crg;

    iput-object v0, p0, Lg/cyc;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v8, v7

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v6, v5

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lg/cyc;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static o()Lg/cyc;
    .locals 2

    invoke-static {}, Lg/rm;->n()Lg/rm;

    move-result-object v0

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->e:Lg/dlf;

    const-class v1, Lg/gle;

    invoke-virtual {v0, v1}, Lg/erl;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cyc;

    return-object v0
.end method


# virtual methods
.method public final p()V
    .locals 3

    iget-object v0, p0, Lg/cyc;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cyc;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dyk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized q(Lg/fsy;Lg/fsy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/cyc;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lg/fsy;->d:Ljava/lang/String;

    iget-object p2, p2, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/cyc;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r(Lg/fsy;)V
    .locals 3

    sget-object v0, Lg/cyc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v1}, Lg/rm;->p()V

    iget-object v1, v1, Lg/rm;->g:Landroid/content/Context;

    invoke-static {v1}, Lg/clx;->f(Landroid/content/Context;)Lg/clx;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lg/cyc;->m:Lg/gtb;

    invoke-virtual {v2, p1}, Lg/gtb;->u(Lg/fsy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lg/clx;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/clx;->r()V

    :cond_1
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final s()Lg/chw;
    .locals 4

    new-instance v0, Lg/eeo;

    invoke-direct {v0}, Lg/eeo;-><init>()V

    new-instance v1, Lg/dyk;

    invoke-direct {v1, v0}, Lg/dyk;-><init>(Lg/eeo;)V

    iget-object v2, p0, Lg/cyc;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lg/cyc;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lg/eeo;->a:Lg/chw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t(Lg/fsy;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->j:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    const-string v1, "[DEFAULT]"

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object p1, p1, Lg/fsy;->f:Lg/gyk;

    sget-object v0, Lg/gyk;->ATTEMPT_MIGRATION:Lg/gyk;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/cyc;->g:Lg/g;

    iget-object v0, p1, Lg/g;->d:Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lg/g;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lg/g;->g()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/cyc;->i:Lg/crg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/crg;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    iget-object p1, p0, Lg/cyc;->i:Lg/crg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/crg;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lg/fsy;)V
    .locals 7

    iget-object v0, p0, Lg/cyc;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cyc;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dyk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lg/fsy;->f:Lg/gyk;

    sget-object v4, Lg/gyk;->UNREGISTERED:Lg/gyk;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    sget-object v4, Lg/gyk;->REGISTERED:Lg/gyk;

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    sget-object v4, Lg/gyk;->REGISTER_ERROR:Lg/gyk;

    if-ne v3, v4, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_0

    :cond_4
    iget-object v2, v2, Lg/dyk;->a:Lg/eeo;

    iget-object v3, p1, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/eeo;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Lg/fsy;)Lg/fsy;
    .locals 14

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v1, v0, Lg/rm;->k:Lg/fpy;

    iget-object v1, v1, Lg/fpy;->c:Ljava/lang/String;

    iget-object v2, p1, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->g:Ljava/lang/String;

    iget-object v3, p1, Lg/fsy;->b:Ljava/lang/String;

    iget-object v4, p0, Lg/cyc;->k:Lg/fmu;

    iget-object v5, v4, Lg/fmu;->e:Lg/dd;

    invoke-virtual {v5}, Lg/dd;->h()Z

    move-result v6

    const-string v7, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "projects/"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/installations/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/authTokens:generate"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/fmu;->i(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-gt v8, v9, :cond_9

    const v10, 0x8003

    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v4, v2, v1}, Lg/fmu;->n(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v10

    :try_start_0
    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FIS_v2 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {v10}, Lg/fmu;->f(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v5, v11}, Lg/dd;->f(I)V

    const/16 v12, 0xc8

    if-lt v11, v12, :cond_0

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    if-eqz v12, :cond_1

    invoke-static {v10}, Lg/fmu;->j(Ljava/net/HttpURLConnection;)Lg/elz;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-static {v10, v13, v1, v0}, Lg/fmu;->l(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v12, 0x191

    if-eq v11, v12, :cond_5

    const/16 v12, 0x194

    if-ne v11, v12, :cond_2

    goto :goto_3

    :cond_2
    const/16 v12, 0x1ad

    if-eq v11, v12, :cond_4

    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_3

    const/16 v12, 0x258

    if-ge v11, v12, :cond_3

    :catch_0
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/16 :goto_6

    :cond_3
    :try_start_2
    const-string v11, "Firebase-Installations"

    const-string v12, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lg/elz;->d()Lg/dzh;

    move-result-object v11

    sget-object v12, Lg/deh;->BAD_CONFIG:Lg/deh;

    iput-object v12, v11, Lg/dzh;->g:Ljava/lang/Object;

    invoke-virtual {v11}, Lg/dzh;->t()Lg/elz;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v9, Lg/drg;

    const-string v11, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v12, Lg/ety;->TOO_MANY_REQUESTS:Lg/ety;

    invoke-direct {v9, v11, v12}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw v9

    :cond_5
    :goto_3
    invoke-static {}, Lg/elz;->d()Lg/dzh;

    move-result-object v11

    sget-object v12, Lg/deh;->AUTH_ERROR:Lg/deh;

    iput-object v12, v11, Lg/dzh;->g:Ljava/lang/Object;

    invoke-virtual {v11}, Lg/dzh;->t()Lg/elz;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    sget-object v1, Lg/axf;->b:[I

    iget-object v2, v0, Lg/elz;->c:Lg/deh;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v9, :cond_8

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    invoke-virtual {p0, v13}, Lg/cyc;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/fsy;->i()Lg/ph;

    move-result-object p1

    sget-object v0, Lg/gyk;->NOT_GENERATED:Lg/gyk;

    invoke-virtual {p1, v0}, Lg/ph;->j(Lg/gyk;)V

    invoke-virtual {p1}, Lg/ph;->i()Lg/fsy;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lg/drg;

    sget-object v0, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {p1, v7, v0}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw p1

    :cond_7
    invoke-virtual {p1}, Lg/fsy;->i()Lg/ph;

    move-result-object p1

    const-string v0, "BAD CONFIG"

    iput-object v0, p1, Lg/ph;->g:Ljava/lang/Object;

    sget-object v0, Lg/gyk;->REGISTER_ERROR:Lg/gyk;

    invoke-virtual {p1, v0}, Lg/ph;->j(Lg/gyk;)V

    invoke-virtual {p1}, Lg/ph;->i()Lg/fsy;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v1, v0, Lg/elz;->a:Ljava/lang/String;

    iget-wide v2, v0, Lg/elz;->b:J

    iget-object v0, p0, Lg/cyc;->e:Lg/ff;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lg/ff;->d:Lg/cfg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {p1}, Lg/fsy;->i()Lg/ph;

    move-result-object p1

    iput-object v1, p1, Lg/ph;->f:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lg/ph;->b:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lg/ph;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Lg/ph;->i()Lg/fsy;

    move-result-object p1

    return-object p1

    :goto_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lg/drg;

    sget-object v0, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {p1, v7, v0}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw p1

    :cond_a
    new-instance p1, Lg/drg;

    sget-object v0, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {p1, v7, v0}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw p1
.end method

.method public final declared-synchronized w(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lg/cyc;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final x()Lg/chw;
    .locals 4

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->e:Ljava/lang/String;

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lg/ckd;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->g:Ljava/lang/String;

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lg/ckd;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->c:Ljava/lang/String;

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lg/ckd;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->e:Ljava/lang/String;

    sget-object v3, Lg/ff;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v0}, Lg/ckd;->ar(Ljava/lang/String;Z)V

    iget-object v0, p0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v0, v0, Lg/rm;->k:Lg/fpy;

    iget-object v0, v0, Lg/fpy;->c:Ljava/lang/String;

    sget-object v1, Lg/ff;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v2, v0}, Lg/ckd;->ar(Ljava/lang/String;Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/cyc;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/byh;->w(Ljava/lang/Object;)Lg/chw;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/cyc;->s()Lg/chw;

    move-result-object v0

    iget-object v1, p0, Lg/cyc;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lg/gsz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/gsz;-><init>(Lg/cyc;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final y(Lg/fsy;)Lg/fsy;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lg/fsy;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_3

    iget-object v2, v1, Lg/cyc;->g:Lg/g;

    iget-object v5, v2, Lg/g;->d:Landroid/content/SharedPreferences;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lg/g;->b:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    iget-object v9, v2, Lg/g;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "|T|"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v2, "{"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v4, v8

    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    goto :goto_3

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_3
    iget-object v2, v1, Lg/cyc;->k:Lg/fmu;

    iget-object v5, v1, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v5}, Lg/rm;->p()V

    iget-object v5, v5, Lg/rm;->k:Lg/fpy;

    iget-object v5, v5, Lg/fpy;->c:Ljava/lang/String;

    iget-object v6, v0, Lg/fsy;->d:Ljava/lang/String;

    iget-object v7, v1, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v7}, Lg/rm;->p()V

    iget-object v7, v7, Lg/rm;->k:Lg/fpy;

    iget-object v7, v7, Lg/fpy;->g:Ljava/lang/String;

    iget-object v8, v1, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v8}, Lg/rm;->p()V

    iget-object v8, v8, Lg/rm;->k:Lg/fpy;

    iget-object v8, v8, Lg/fpy;->e:Ljava/lang/String;

    const-string v9, "Firebase Installations Service is unavailable. Please try again later."

    iget-object v10, v2, Lg/fmu;->e:Lg/dd;

    invoke-virtual {v10}, Lg/dd;->h()Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "projects/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/installations"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lg/fmu;->i(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x1

    if-gt v12, v13, :cond_b

    const v14, 0x8001

    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v2, v11, v5}, Lg/fmu;->n(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v14

    :try_start_3
    const-string v15, "POST"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz v4, :cond_4

    const-string v15, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v14, v15, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_4
    :goto_5
    invoke-static {v14, v6, v8}, Lg/fmu;->m(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v10, v15}, Lg/dd;->f(I)V

    const/16 v3, 0xc8

    if-lt v15, v3, :cond_5

    const/16 v3, 0x12c

    if-ge v15, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_6

    invoke-static {v14}, Lg/fmu;->h(Ljava/net/HttpURLConnection;)Lg/gug;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_7

    :cond_6
    :try_start_4
    invoke-static {v14, v8, v5, v7}, Lg/fmu;->l(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v3, 0x1ad

    if-eq v15, v3, :cond_a

    const/16 v3, 0x1f4

    if-lt v15, v3, :cond_7

    const/16 v3, 0x258

    if-ge v15, v3, :cond_7

    :catch_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/16 :goto_9

    :cond_7
    :try_start_5
    const-string v3, "Firebase-Installations"

    const-string v15, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lg/of;->BAD_CONFIG:Lg/of;

    new-instance v16, Lg/gug;

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v21}, Lg/gug;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/elz;Lg/of;)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object/from16 v2, v16

    :goto_7
    sget-object v3, Lg/axf;->a:[I

    iget-object v4, v2, Lg/gug;->b:Lg/of;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v13, :cond_9

    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    const-string v2, "BAD CONFIG"

    invoke-virtual {v0}, Lg/fsy;->i()Lg/ph;

    move-result-object v0

    iput-object v2, v0, Lg/ph;->g:Ljava/lang/Object;

    sget-object v2, Lg/gyk;->REGISTER_ERROR:Lg/gyk;

    invoke-virtual {v0, v2}, Lg/ph;->j(Lg/gyk;)V

    invoke-virtual {v0}, Lg/ph;->i()Lg/fsy;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lg/drg;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v3, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {v0, v2, v3}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw v0

    :cond_9
    iget-object v3, v2, Lg/gug;->d:Ljava/lang/String;

    iget-object v4, v2, Lg/gug;->e:Ljava/lang/String;

    iget-object v5, v1, Lg/cyc;->e:Lg/ff;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v5, Lg/ff;->d:Lg/cfg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    iget-object v2, v2, Lg/gug;->a:Lg/elz;

    iget-object v7, v2, Lg/elz;->a:Ljava/lang/String;

    iget-wide v8, v2, Lg/elz;->b:J

    invoke-virtual {v0}, Lg/fsy;->i()Lg/ph;

    move-result-object v0

    iput-object v3, v0, Lg/ph;->c:Ljava/lang/Object;

    sget-object v2, Lg/gyk;->REGISTERED:Lg/gyk;

    invoke-virtual {v0, v2}, Lg/ph;->j(Lg/gyk;)V

    iput-object v7, v0, Lg/ph;->f:Ljava/lang/Object;

    iput-object v4, v0, Lg/ph;->a:Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lg/ph;->b:Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lg/ph;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/ph;->i()Lg/fsy;

    move-result-object v0

    return-object v0

    :cond_a
    :try_start_6
    new-instance v3, Lg/drg;

    const-string v13, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v15, Lg/ety;->TOO_MANY_REQUESTS:Lg/ety;

    invoke-direct {v3, v13, v15}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_b
    new-instance v0, Lg/drg;

    sget-object v2, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {v0, v9, v2}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw v0

    :cond_c
    new-instance v0, Lg/drg;

    sget-object v2, Lg/ety;->UNAVAILABLE:Lg/ety;

    invoke-direct {v0, v9, v2}, Lg/drg;-><init>(Ljava/lang/String;Lg/ety;)V

    throw v0
.end method
