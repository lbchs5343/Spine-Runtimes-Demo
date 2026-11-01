.class public final Lg/ffm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/clx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ffm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/ffm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lg/ffm;->a:Ljava/lang/Object;

    iput-object p1, p0, Lg/ffm;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v0, Lg/clx;

    iget-object v1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lg/clx;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Lg/gsj;->e:Landroid/net/Uri;

    const-class v3, Lg/gsj;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lg/gsj;->d:Ljava/util/HashMap;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lg/gsj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/gsj;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gsj;->i:Ljava/lang/Object;

    sget-object v0, Lg/gsj;->e:Landroid/net/Uri;

    new-instance v5, Lg/bua;

    invoke-direct {v5, v9, v4}, Lg/bua;-><init>(Landroid/os/Handler;I)V

    invoke-virtual {v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lg/gsj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/gsj;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lg/gsj;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lg/gsj;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lg/gsj;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lg/gsj;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gsj;->i:Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object v0, Lg/gsj;->i:Ljava/lang/Object;

    sget-object v4, Lg/gsj;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lg/gsj;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v9, v0

    :goto_1
    monitor-exit v3

    return-object v9

    :cond_3
    sget-object v4, Lg/gsj;->b:[Ljava/lang/String;

    array-length v4, v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lg/gsj;->e:Landroid/net/Uri;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v9

    :cond_4
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v9, v0}, Lg/gsj;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v9

    :cond_6
    invoke-static {v1, v3, v0}, Lg/gsj;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v3

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v9

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeif;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeif;->a:Lg/cls;

    iget-object v1, p0, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0, v1}, Lg/cls;->s(Lcom/google/android/gms/internal/ads/zzfet;)V

    iget-object v0, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeif;->a:Lg/cls;

    invoke-virtual {v0}, Lg/cls;->p()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v0

    iget-object v1, p0, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzav:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeif;->j(Lcom/google/android/gms/internal/ads/zzfet;)V

    iget-object v0, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeif;->a:Lg/cls;

    invoke-virtual {v0}, Lg/cls;->p()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeif;->j(Lcom/google/android/gms/internal/ads/zzfet;)V

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeif;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeif;->a:Lg/cls;

    iget-object v2, p0, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v1, p1, v2}, Lg/cls;->t(Lcom/google/android/gms/internal/ads/zzeiw;Lcom/google/android/gms/internal/ads/zzfet;)V

    iget-object p1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeif;->a:Lg/cls;

    invoke-virtual {p1}, Lg/cls;->p()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeif;->j(Lcom/google/android/gms/internal/ads/zzfet;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
