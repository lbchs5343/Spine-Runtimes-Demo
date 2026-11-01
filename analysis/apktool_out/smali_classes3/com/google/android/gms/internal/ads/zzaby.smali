.class public final Lcom/google/android/gms/internal/ads/zzaby;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:J

.field public e:J

.field public final f:J

.field public final g:J

.field public h:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaby;->d:J

    move-wide v0, p3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaby;->f:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaby;->b:J

    move-wide/from16 v4, p5

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaby;->c:J

    move-wide/from16 v6, p7

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaby;->e:J

    move-wide/from16 v8, p9

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaby;->h:J

    move-wide/from16 v10, p11

    iput-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaby;->g:J

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzaby;->i(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaby;->a:J

    return-void
.end method

.method public static i(JJJJJJ)J
    .locals 5

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_1

    add-long/2addr v0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, p2

    sub-long v0, p8, p6

    sub-long/2addr p4, p2

    long-to-float p0, p0

    long-to-float p1, v0

    long-to-float p2, p4

    div-float/2addr p1, p2

    mul-float p1, p1, p0

    float-to-long p0, p1

    add-long p2, p6, p0

    sub-long/2addr p2, p10

    const-wide/16 p4, -0x1

    add-long/2addr p4, p8

    const-wide/16 v0, 0x14

    div-long/2addr p0, v0

    sub-long/2addr p2, p0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p6
.end method
