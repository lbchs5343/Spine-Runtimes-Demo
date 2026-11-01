.class public final Lcom/google/android/gms/internal/ads/zzof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlz;
.implements Lcom/google/android/gms/internal/ads/zzog;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Lg/ffr;

.field public c:Lcom/google/android/gms/internal/ads/zzad;

.field public final d:Ljava/util/HashMap;

.field public e:I

.field public f:Z

.field public g:Lg/ffr;

.field public h:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public final i:Landroid/media/metrics/PlaybackSession;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Lcom/google/android/gms/internal/ads/zzad;

.field public final n:J

.field public final o:Lcom/google/android/gms/internal/ads/zzbu;

.field public p:Lcom/google/android/gms/internal/ads/zzad;

.field public final q:Landroid/content/Context;

.field public r:Z

.field public s:I

.field public t:Ljava/lang/String;

.field public final u:Lcom/google/android/gms/internal/ads/zzod;

.field public v:Lcom/google/android/gms/internal/ads/zzbi;

.field public w:I

.field public x:Lg/ffr;

.field public y:I

.field public final z:Lcom/google/android/gms/internal/ads/zzbt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->q:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->o:Lcom/google/android/gms/internal/ads/zzbu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->z:Lcom/google/android/gms/internal/ads/zzbt;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->a:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->d:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzof;->n:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzof;->y:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzod;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->u:Lcom/google/android/gms/internal/ads/zzod;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzoh;->zzh(Lcom/google/android/gms/internal/ads/zzog;)V

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzof;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/equ;->k(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzof;

    invoke-static {v0}, Lg/equ;->w(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method


# virtual methods
.method public final aa(Lg/ffr;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/ffr;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->u:Lcom/google/android/gms/internal/ads/zzod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoh;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ab()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzof;->e:I

    invoke-static {v0, v2}, Lg/dgd;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzof;->w:I

    invoke-static {v0, v2}, Lg/equ;->s(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzof;->s:I

    invoke-static {v0, v2}, Lg/equ;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lg/eee;->f(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lg/eee;->y(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v2, v0}, Lg/eee;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v2}, Lg/eee;->b(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Lg/eee;->d(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->t:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzof;->e:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzof;->w:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzof;->s:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    return-void
.end method

.method public final ac(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzof;->z:Lcom/google/android/gms/internal/ads/zzbt;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    iget p2, v1, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    const-wide/16 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzof;->o:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {p1, p2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzd:Lcom/google/android/gms/internal/ads/zzaw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaw;->zzb:Lcom/google/android/gms/internal/ads/zzar;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzar;->zza:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzo(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    :goto_0
    invoke-static {v0, v2}, Lg/eee;->t(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzm:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzk:Z

    if-nez p1, :cond_5

    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzi:Z

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbu;->zzb()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lg/eee;->p(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbu;->zzb()Z

    move-result p1

    if-eq v3, p1, :cond_6

    const/4 p2, 0x1

    :cond_6
    invoke-static {v0, p2}, Lg/eee;->o(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final ad(IJLcom/google/android/gms/internal/ads/zzad;I)V
    .locals 2

    invoke-static {p1}, Lg/eee;->w(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzof;->n:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lg/equ;->f(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_b

    invoke-static {p1}, Lg/equ;->y(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    const/4 p3, 0x2

    if-eq p5, p2, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x2

    :goto_0
    invoke-static {p1, p5}, Lg/equ;->h(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzn:Ljava/lang/String;

    if-eqz p5, :cond_1

    invoke-static {p1, p5}, Lg/eee;->x(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_1
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-eqz p5, :cond_2

    invoke-static {p1, p5}, Lg/eee;->e(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_2
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzk:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-static {p1, p5}, Lg/eee;->n(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_3
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    invoke-static {p1, p5}, Lg/eee;->s(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_4
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    if-eq p5, v0, :cond_5

    invoke-static {p1, p5}, Lg/eee;->ab(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_5
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    if-eq p5, v0, :cond_6

    invoke-static {p1, p5}, Lg/eee;->h(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_6
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-eq p5, v0, :cond_7

    invoke-static {p1, p5}, Lg/eee;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_7
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    if-eq p5, v0, :cond_8

    invoke-static {p1, p5}, Lg/equ;->p(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_8
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    if-eqz p5, :cond_a

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string v1, "-"

    invoke-virtual {p5, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aget-object v0, p5, v0

    array-length v1, p5

    if-lt v1, p3, :cond_9

    aget-object p3, p5, p2

    goto :goto_1

    :cond_9
    const/4 p3, 0x0

    :goto_1
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lg/equ;->ab(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_a

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lg/equ;->n(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_a
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_c

    invoke-static {p1, p3}, Lg/equ;->o(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    goto :goto_2

    :cond_b
    invoke-static {p1}, Lg/equ;->l(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    :cond_c
    :goto_2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    invoke-static {p1}, Lg/equ;->d(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-static {p2, p1}, Lg/equ;->z(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public final zza()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0}, Lg/dgd;->i(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzof;->ab()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzof;->t:Ljava/lang/String;

    invoke-static {}, Lg/eee;->q()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    invoke-static {p2}, Lg/eee;->ac(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    invoke-static {p2}, Lg/eee;->l(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzof;->ac(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->t:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzof;->ab()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzlx;IJJ)V
    .locals 6

    iget-object p5, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz p5, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzof;->u:Lcom/google/android/gms/internal/ads/zzod;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzof;->a:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez p6, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    int-to-long p2, p2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzun;->zzb:Lcom/google/android/gms/internal/ads/zzad;

    new-instance v2, Lg/ffr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzof;->u:Lcom/google/android/gms/internal/ads/zzod;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-direct {v2, v1, v0, p1}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzun;->zza:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->x:Lg/ffr;

    return-void

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->b:Lg/ffr;

    return-void

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    return-void
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzlx;IJ)V
    .locals 0

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbp;Lcom/google/android/gms/internal/ads/zzly;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzly;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_23

    :cond_0
    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzly;->zzb()I

    move-result v2

    const/16 v8, 0xb

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzof;->u:Lcom/google/android/gms/internal/ads/zzod;

    if-ge v1, v2, :cond_3

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzly;->zza(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzly;->zzc(I)Lcom/google/android/gms/internal/ads/zzlx;

    move-result-object v3

    if-nez v2, :cond_1

    invoke-interface {v9, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zzk(Lcom/google/android/gms/internal/ads/zzlx;)V

    goto :goto_1

    :cond_1
    if-ne v2, v8, :cond_2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzof;->k:I

    invoke-interface {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzoh;->zzj(Lcom/google/android/gms/internal/ads/zzlx;I)V

    goto :goto_1

    :cond_2
    invoke-interface {v9, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zzi(Lcom/google/android/gms/internal/ads/zzlx;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzly;->zzc(I)Lcom/google/android/gms/internal/ads/zzlx;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlx;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzof;->ac(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)V

    :cond_4
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v1

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzo()Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zza()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_7

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzcc;

    const/4 v8, 0x0

    :goto_3
    iget v11, v15, Lcom/google/android/gms/internal/ads/zzcc;->zza:I

    add-int/lit8 v16, v14, 0x1

    if-ge v8, v11, :cond_6

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zzd(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzad;->zzs:Lcom/google/android/gms/internal/ads/zzw;

    if-eqz v11, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move/from16 v14, v16

    const/16 v8, 0xb

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->h:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-static {v1}, Lg/equ;->u(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v1

    const/4 v5, 0x0

    :goto_5
    iget v8, v11, Lcom/google/android/gms/internal/ads/zzw;->zzb:I

    if-ge v5, v8, :cond_b

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzw;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzv;->zza:Ljava/util/UUID;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzj;->zzd:Ljava/util/UUID;

    invoke-virtual {v8, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v5, 0x3

    goto :goto_6

    :cond_8
    sget-object v14, Lcom/google/android/gms/internal/ads/zzj;->zze:Ljava/util/UUID;

    invoke-virtual {v8, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v5, 0x2

    goto :goto_6

    :cond_9
    sget-object v14, Lcom/google/android/gms/internal/ads/zzj;->zzc:Ljava/util/UUID;

    invoke-virtual {v8, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v5, 0x6

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x1

    :goto_6
    invoke-static {v1, v5}, Lg/equ;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    :cond_c
    const/16 v1, 0x3f3

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzof;->e:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzof;->e:I

    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->v:Lcom/google/android/gms/internal/ads/zzbi;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzof;->q:Landroid/content/Context;

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzof;->n:J

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x5

    const/16 v19, 0x9

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_7
    const/4 v4, 0x2

    goto/16 :goto_f

    :cond_e
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbi;->zza:I

    const/16 v8, 0x3e9

    if-ne v5, v8, :cond_f

    const/16 v5, 0x14

    :goto_8
    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_f
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzig;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzig;->zzc:I

    if-ne v8, v13, :cond_10

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzig;->zzg:I

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v7, Ljava/io/IOException;

    const/16 v20, 0x19

    const/16 v21, 0x1a

    const/16 v22, 0x18

    const/16 v23, 0x1c

    const/16 v24, 0x1b

    const/16 v10, 0x17

    if-eqz v4, :cond_24

    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzgw;

    if-eqz v4, :cond_11

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgw;

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgw;->zzc:I

    const/4 v5, 0x5

    goto/16 :goto_e

    :cond_11
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzgv;

    if-nez v4, :cond_12

    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzbh;

    if-eqz v4, :cond_13

    :cond_12
    const/4 v4, 0x0

    const/16 v5, 0xb

    goto/16 :goto_e

    :cond_13
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzgu;

    if-nez v4, :cond_1f

    instance-of v5, v7, Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v5, :cond_14

    goto/16 :goto_d

    :cond_14
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbi;->zza:I

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_15

    const/16 v5, 0x15

    goto :goto_8

    :cond_15
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v4, :cond_1c

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v5, :cond_16

    check-cast v4, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v4}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzm(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzl(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_a
    goto :goto_b

    :pswitch_0
    const/16 v5, 0x1a

    goto/16 :goto_e

    :pswitch_1
    const/16 v5, 0x19

    goto/16 :goto_e

    :cond_16
    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v5, v10, :cond_17

    invoke-static {v4}, Lg/fnh;->ab(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v4, 0x0

    :goto_b
    const/16 v5, 0x1b

    goto/16 :goto_e

    :cond_17
    instance-of v5, v4, Landroid/media/NotProvisionedException;

    if-eqz v5, :cond_18

    const/4 v4, 0x0

    :pswitch_2
    const/16 v5, 0x18

    goto/16 :goto_e

    :cond_18
    instance-of v5, v4, Landroid/media/DeniedByServerException;

    if-eqz v5, :cond_19

    const/16 v5, 0x1d

    goto/16 :goto_8

    :cond_19
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v5, :cond_1a

    :goto_c
    const/4 v4, 0x0

    const/16 v5, 0x17

    goto/16 :goto_e

    :cond_1a
    instance-of v4, v4, Lcom/google/android/gms/internal/ads/zzrh;

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    :pswitch_3
    const/16 v5, 0x1c

    goto/16 :goto_e

    :cond_1b
    const/16 v5, 0x1e

    goto/16 :goto_8

    :cond_1c
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzgr;

    if-eqz v4, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v5, v4, Landroid/system/ErrnoException;

    const/16 v7, 0x1f

    if-eqz v5, :cond_1d

    check-cast v4, Landroid/system/ErrnoException;

    iget v4, v4, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EACCES:I

    if-ne v4, v5, :cond_1d

    const/16 v5, 0x20

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    const/16 v5, 0x1f

    goto/16 :goto_e

    :cond_1e
    const/4 v4, 0x0

    const/16 v5, 0x9

    goto/16 :goto_e

    :cond_1f
    :goto_d
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzeb;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeb;->zza()I

    move-result v5

    if-ne v5, v13, :cond_20

    const/4 v4, 0x0

    const/4 v5, 0x3

    goto/16 :goto_e

    :cond_20
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v8, v5, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_21

    const/4 v4, 0x0

    const/4 v5, 0x6

    goto/16 :goto_e

    :cond_21
    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_22

    const/4 v4, 0x0

    const/4 v5, 0x7

    goto/16 :goto_e

    :cond_22
    if-eqz v4, :cond_23

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgu;

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgu;->zzb:I

    if-ne v4, v13, :cond_23

    const/4 v4, 0x0

    const/4 v5, 0x4

    goto/16 :goto_e

    :cond_23
    const/4 v4, 0x0

    const/16 v5, 0x8

    goto/16 :goto_e

    :cond_24
    if-eqz v8, :cond_26

    const/16 v4, 0x23

    if-eqz v5, :cond_25

    if-ne v5, v13, :cond_26

    :cond_25
    const/4 v4, 0x0

    const/16 v5, 0x23

    goto :goto_e

    :cond_26
    if-eqz v8, :cond_27

    if-ne v5, v12, :cond_27

    const/16 v5, 0xf

    goto/16 :goto_8

    :cond_27
    if-eqz v8, :cond_28

    const/4 v4, 0x2

    if-ne v5, v4, :cond_28

    goto/16 :goto_c

    :cond_28
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v4, :cond_29

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsu;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzsu;->zzd:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzm(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xd

    goto :goto_e

    :cond_29
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzsp;

    const/16 v5, 0xe

    if-eqz v4, :cond_2a

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsp;

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzsp;->zzb:I

    goto :goto_e

    :cond_2a
    instance-of v4, v7, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_2b

    goto/16 :goto_8

    :cond_2b
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzpq;

    if-eqz v4, :cond_2c

    check-cast v7, Lcom/google/android/gms/internal/ads/zzpq;

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzpq;->zza:I

    const/16 v5, 0x11

    goto :goto_e

    :cond_2c
    instance-of v4, v7, Lcom/google/android/gms/internal/ads/zzpt;

    if-eqz v4, :cond_2d

    check-cast v7, Lcom/google/android/gms/internal/ads/zzpt;

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzpt;->zza:I

    const/16 v5, 0x12

    goto :goto_e

    :cond_2d
    instance-of v4, v7, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_2e

    check-cast v7, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v7}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzl(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_a

    :cond_2e
    const/16 v5, 0x16

    goto/16 :goto_8

    :goto_e
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lg/eee;->j()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    sub-long v12, v2, v14

    invoke-static {v8, v12, v13}, Lg/equ;->q(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v5}, Lg/equ;->j(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    invoke-static {v5, v4}, Lg/equ;->e(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v4

    invoke-static {v4, v1}, Lg/equ;->ac(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v1

    invoke-static {v1}, Lg/equ;->b(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v1

    invoke-static {v7, v1}, Lg/equ;->ad(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->v:Lcom/google/android/gms/internal/ads/zzbi;

    goto/16 :goto_7

    :goto_f
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzo()Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzb(I)Z

    move-result v7

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzb(I)Z

    move-result v8

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zzb(I)Z

    move-result v1

    if-nez v7, :cond_30

    if-nez v8, :cond_30

    if-eqz v1, :cond_2f

    const/4 v12, 0x1

    goto :goto_10

    :cond_2f
    const/4 v7, 0x4

    const/4 v8, 0x0

    goto :goto_18

    :cond_30
    move v12, v1

    :goto_10
    if-nez v7, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_12

    :cond_31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_32

    const/4 v5, 0x1

    goto :goto_11

    :cond_32
    const/4 v5, 0x0

    :goto_11
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x1

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    goto :goto_13

    :cond_33
    const/4 v4, 0x0

    :goto_12
    const/4 v7, 0x4

    :goto_13
    if-nez v8, :cond_36

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_15

    :cond_34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_35

    const/4 v5, 0x1

    goto :goto_14

    :cond_35
    const/4 v5, 0x0

    :goto_14
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    :cond_36
    :goto_15
    if-nez v12, :cond_39

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_17

    :cond_37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_38

    const/4 v5, 0x1

    goto :goto_16

    :cond_38
    const/4 v5, 0x0

    :goto_16
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    :cond_39
    :goto_17
    move-object v8, v4

    :goto_18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->aa(Lg/ffr;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    iget-object v1, v1, Lg/ffr;->f:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_1a

    :cond_3a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_3b

    const/4 v5, 0x1

    goto :goto_19

    :cond_3b
    const/4 v5, 0x0

    :goto_19
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->p:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    :goto_1a
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    :cond_3c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->b:Lg/ffr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->aa(Lg/ffr;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->b:Lg/ffr;

    iget-object v1, v1, Lg/ffr;->f:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_1c

    :cond_3d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_3e

    const/4 v5, 0x1

    goto :goto_1b

    :cond_3e
    const/4 v5, 0x0

    :goto_1b
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->m:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    :goto_1c
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzof;->b:Lg/ffr;

    :cond_3f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->x:Lg/ffr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->aa(Lg/ffr;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->x:Lg/ffr;

    iget-object v1, v1, Lg/ffr;->f:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_1e

    :cond_40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v1, :cond_41

    const/4 v5, 0x1

    goto :goto_1d

    :cond_41
    const/4 v5, 0x0

    :goto_1d
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->c:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->ad(IJLcom/google/android/gms/internal/ads/zzad;I)V

    :goto_1e
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzof;->x:Lg/ffr;

    :cond_42
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzeb;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeb;->zza()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :pswitch_4
    const/4 v1, 0x1

    goto :goto_1f

    :pswitch_5
    const/4 v1, 0x7

    goto :goto_1f

    :pswitch_6
    const/16 v1, 0x8

    goto :goto_1f

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_1f

    :pswitch_8
    const/4 v1, 0x6

    goto :goto_1f

    :pswitch_9
    const/4 v1, 0x5

    goto :goto_1f

    :pswitch_a
    const/4 v1, 0x4

    goto :goto_1f

    :pswitch_b
    const/4 v1, 0x2

    goto :goto_1f

    :pswitch_c
    const/16 v1, 0x9

    goto :goto_1f

    :pswitch_d
    const/4 v1, 0x0

    :goto_1f
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzof;->y:I

    if-eq v1, v4, :cond_43

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzof;->y:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lg/eee;->g()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    invoke-static {v5, v1}, Lg/equ;->v(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    sub-long v11, v2, v14

    invoke-static {v1, v11, v12}, Lg/equ;->aa(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    invoke-static {v1}, Lg/equ;->g(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v1

    invoke-static {v4, v1}, Lg/equ;->x(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    :cond_43
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_44

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzof;->l:Z

    goto :goto_20

    :cond_44
    const/4 v1, 0x0

    :goto_20
    move-object/from16 v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzlu;->zzC()Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v4

    const/16 v5, 0xa

    if-nez v4, :cond_45

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzof;->f:Z

    goto :goto_21

    :cond_45
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzof;->f:Z

    :cond_46
    :goto_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf()I

    move-result v1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzof;->l:Z

    if-eqz v4, :cond_47

    const/4 v4, 0x1

    const/4 v8, 0x5

    goto :goto_22

    :cond_47
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzof;->f:Z

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    const/16 v8, 0xd

    goto :goto_22

    :cond_48
    if-ne v1, v7, :cond_49

    const/4 v4, 0x1

    const/16 v8, 0xb

    goto :goto_22

    :cond_49
    const/16 v8, 0xc

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4e

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    if-eqz v1, :cond_4a

    if-eq v1, v4, :cond_4a

    if-ne v1, v8, :cond_4b

    :cond_4a
    const/4 v4, 0x1

    const/4 v8, 0x2

    goto :goto_22

    :cond_4b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzu()Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v4, 0x1

    const/4 v8, 0x7

    goto :goto_22

    :cond_4c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzg()I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4d

    const/16 v8, 0xa

    goto :goto_22

    :cond_4d
    const/4 v8, 0x6

    goto :goto_22

    :cond_4e
    const/4 v10, 0x3

    if-ne v1, v10, :cond_51

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzu()Z

    move-result v1

    if-nez v1, :cond_4f

    const/4 v4, 0x1

    const/4 v8, 0x4

    goto :goto_22

    :cond_4f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzg()I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_50

    const/16 v8, 0x9

    goto :goto_22

    :cond_50
    const/4 v8, 0x3

    goto :goto_22

    :cond_51
    const/4 v4, 0x1

    if-ne v1, v4, :cond_52

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    if-eqz v1, :cond_52

    goto :goto_22

    :cond_52
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    :goto_22
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    if-eq v1, v8, :cond_53

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzof;->r:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzof;->i:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lg/eee;->u()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v4

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzof;->j:I

    invoke-static {v4, v5}, Lg/equ;->c(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v4

    sub-long/2addr v2, v14

    invoke-static {v4, v2, v3}, Lg/equ;->i(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-static {v2}, Lg/equ;->t(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lg/equ;->r(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_53
    const/16 v1, 0x404

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzly;->zzd(I)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzly;->zzc(I)Lcom/google/android/gms/internal/ads/zzlx;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzoh;->zzg(Lcom/google/android/gms/internal/ads/zzlx;)V

    :cond_54
    :goto_23
    return-void

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/ads/zzlx;I)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzbi;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzof;->v:Lcom/google/android/gms/internal/ads/zzbi;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzbn;Lcom/google/android/gms/internal/ads/zzbn;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzof;->l:Z

    const/4 p4, 0x1

    :cond_0
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzof;->k:I

    return-void
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/ads/zzlx;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzhx;)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzof;->w:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzhx;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzof;->w:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzof;->s:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzhx;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzof;->s:I

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzci;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzci;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzci;->zzc:I

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    iget-object p1, p1, Lg/ffr;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lg/ffr;

    const/16 v1, 0x14

    invoke-direct {v0, p2, v1, p1}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzof;->g:Lg/ffr;

    :cond_0
    return-void
.end method
