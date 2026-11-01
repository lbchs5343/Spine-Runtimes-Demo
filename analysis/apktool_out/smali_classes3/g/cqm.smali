.class public final Lg/cqm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field public c:I

.field public d:J

.field public e:J

.field public final f:Lcom/google/android/gms/internal/ads/zzadx;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cqm;->f:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 8

    iget-wide v1, p0, Lg/cqm;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lg/cqm;->h:Z

    iget-wide v4, p0, Lg/cqm;->j:J

    iget-wide v6, p0, Lg/cqm;->b:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v6, 0x0

    iget-object v0, p0, Lg/cqm;->f:Lcom/google/android/gms/internal/ads/zzadx;

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    return-void
.end method
