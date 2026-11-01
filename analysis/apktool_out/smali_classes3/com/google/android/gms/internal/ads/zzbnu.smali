.class public final Lcom/google/android/gms/internal/ads/zzbnu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lg/akx;

.field public final c:Lcom/google/android/gms/internal/ads/zzfko;

.field public final d:Ljava/lang/Object;

.field public final e:Lg/ano;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/internal/ads/zzbnt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akx;Ljava/lang/String;Lg/ano;Lg/ano;Lcom/google/android/gms/internal/ads/zzfko;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnu;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnu;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnu;->b:Lg/akx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbnu;->c:Lcom/google/android/gms/internal/ads/zzfko;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbnu;->e:Lg/ano;

    return-void
.end method


# virtual methods
.method public final i()Lcom/google/android/gms/internal/ads/zzbnt;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->f:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnu;->e:Lg/ano;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lg/ano;)V

    const-string v2, "loadJavascriptEngine > Before UI_THREAD_EXECUTOR"

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbne;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/internal/ads/zzbne;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzbnt;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v2, "loadNewJavascriptEngine: Promise created"

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    new-instance v2, Lg/fpd;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v1, v0, v3}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lg/dzh;

    const/16 v4, 0x14

    invoke-direct {v3, p0, v1, v0, v4}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavc;)Lcom/google/android/gms/internal/ads/zzbno;
    .locals 4

    const-string p1, "getEngine: Trying to acquire lock"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "getEngine: Lock acquired"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    const-string v0, "refreshIfDestroyed: Trying to acquire lock"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "refreshIfDestroyed: Lock acquired"

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbna;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbna;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbnb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbnb;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "refreshIfDestroyed: Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    if-nez v0, :cond_2

    const-string v0, "getEngine (NO_UPDATE): Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zza()Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->i()Lcom/google/android/gms/internal/ads/zzbnt;

    const-string v0, "getEngine (PENDING_UPDATE): Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zza()Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    const-string v0, "getEngine (UPDATING): Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zza()Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->i()Lcom/google/android/gms/internal/ads/zzbnt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    const-string v0, "getEngine (NULL or REJECTED): Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zza()Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
