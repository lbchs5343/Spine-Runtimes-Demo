.class public final Lcom/google/android/gms/internal/ads/zzfpz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)Lcom/google/android/gms/internal/ads/zzfri;
    .locals 1

    move-object p1, p0

    new-instance p0, Lg/acj;

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lg/acj;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lg/acj;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 p4, 0xc350

    invoke-virtual {p2, p4, p5, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfri;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    const/16 p3, 0x7d9

    iget-wide p4, p0, Lg/acj;->b:J

    invoke-virtual {p0, p3, p4, p5, p2}, Lg/acj;->j(IJLjava/lang/Exception;)V

    move-object p2, p1

    :goto_0
    const/16 p3, 0xbbc

    iget-wide p4, p0, Lg/acj;->b:J

    invoke-virtual {p0, p3, p4, p5, p1}, Lg/acj;->j(IJLjava/lang/Exception;)V

    if-eqz p2, :cond_1

    iget p0, p2, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    const/4 p0, 0x3

    sput p0, Lcom/google/android/gms/internal/ads/zzfpp;->a:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    sput p0, Lcom/google/android/gms/internal/ads/zzfpp;->a:I

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfri;

    const/4 p0, 0x1

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzfri;-><init>([BI)V

    :cond_2
    return-object p2
.end method
