.class public final Lg/mr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzadx;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/mr;->d:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method


# virtual methods
.method public final i([BII)V
    .locals 2

    iget-boolean v0, p0, Lg/mr;->g:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lg/mr;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lg/mr;->b:Z

    iput-boolean p2, p0, Lg/mr;->g:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr p3, v1

    iput p3, p0, Lg/mr;->e:I

    :cond_2
    return-void
.end method

.method public final j(IZJ)V
    .locals 9

    iget-wide v0, p0, Lg/mr;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget v0, p0, Lg/mr;->c:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lg/mr;->f:Z

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lg/mr;->h:J

    sub-long v0, p3, v0

    iget-boolean v5, p0, Lg/mr;->b:Z

    iget-wide v3, p0, Lg/mr;->a:J

    long-to-int v6, v0

    const/4 v8, 0x0

    iget-object v2, p0, Lg/mr;->d:Lcom/google/android/gms/internal/ads/zzadx;

    move v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_1
    iget p1, p0, Lg/mr;->c:I

    const/16 p2, 0xb3

    if-eq p1, p2, :cond_2

    iput-wide p3, p0, Lg/mr;->h:J

    :cond_2
    return-void
.end method
