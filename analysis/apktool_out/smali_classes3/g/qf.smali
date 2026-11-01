.class public final Lg/qf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbnu;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbnt;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzbmx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnu;JLcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbmx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lg/qf;->b:J

    iput-object p4, p0, Lg/qf;->c:Lcom/google/android/gms/internal/ads/zzbnt;

    iput-object p5, p0, Lg/qf;->d:Lcom/google/android/gms/internal/ads/zzbmx;

    iput-object p1, p0, Lg/qf;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnv;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->v:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lg/qf;->b:J

    sub-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGmsg /jsLoaded. JsLoaded latency is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lg/qf;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "loadJavascriptEngine > /jsLoaded handler: Lock acquired"

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lg/qf;->c:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lg/qf;->c:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lg/qf;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v0, 0x0

    iput v0, p2, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    iget-object p2, p0, Lg/qf;->d:Lcom/google/android/gms/internal/ads/zzbmx;

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjq;->zzg:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjq;->zzo:Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    iget-object p2, p0, Lg/qf;->c:Lcom/google/android/gms/internal/ads/zzbnt;

    iget-object v0, p0, Lg/qf;->d:Lcom/google/android/gms/internal/ads/zzbmx;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcav;->zzi(Ljava/lang/Object;)V

    iget-object p2, p0, Lg/qf;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v0, p0, Lg/qf;->c:Lcom/google/android/gms/internal/ads/zzbnt;

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p2, "loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled"

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
