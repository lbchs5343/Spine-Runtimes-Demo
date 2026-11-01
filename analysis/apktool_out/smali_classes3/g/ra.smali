.class public final Lg/ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbmx;

.field public final synthetic b:Lg/fc;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbnu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzbmx;Lg/fc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ra;->a:Lcom/google/android/gms/internal/ads/zzbmx;

    iput-object p3, p0, Lg/ra;->b:Lg/fc;

    iput-object p1, p0, Lg/ra;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnv;

    const-string p1, "loadJavascriptEngine > /requestReload handler: Trying to acquire lock"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lg/ra;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "loadJavascriptEngine > /requestReload handler: Lock acquired"

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lg/agd;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lg/ra;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static {p2}, Lg/agd;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lg/ra;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v0, 0x2

    iput v0, p2, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbnu;->i()Lcom/google/android/gms/internal/ads/zzbnt;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lg/ra;->a:Lcom/google/android/gms/internal/ads/zzbmx;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lg/ra;->b:Lg/fc;

    iget-object v1, v1, Lg/fc;->e:Ljava/lang/Object;

    check-cast v1, Lg/ra;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /requestReload handler: Lock released"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
