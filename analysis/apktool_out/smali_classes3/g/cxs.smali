.class public final Lg/cxs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:[I

.field public e:J

.field public f:I

.field public final g:Lcom/google/android/gms/internal/ads/zzed;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lg/cxs;->d:[I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v1, p0, Lg/cxs;->g:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lg/cxs;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lg/cxs;->e:J

    iput v0, p0, Lg/cxs;->f:I

    iput v0, p0, Lg/cxs;->a:I

    iput v0, p0, Lg/cxs;->b:I

    iget-object v1, p0, Lg/cxs;->g:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-static {p1, v3, v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzacv;->zzc(Lcom/google/android/gms/internal/ads/zzacs;[BIIZ)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v2

    const-wide/32 v4, 0x4f676753

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "unsupported bit stream revision"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    iput v2, p0, Lg/cxs;->c:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzr()J

    move-result-wide v2

    iput-wide v2, p0, Lg/cxs;->e:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzs()J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzs()J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzs()J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    iput v2, p0, Lg/cxs;->f:I

    add-int/lit8 v3, v2, 0x1b

    iput v3, p0, Lg/cxs;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    iget v3, p0, Lg/cxs;->f:I

    invoke-static {p1, v2, v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzacv;->zzc(Lcom/google/android/gms/internal/ads/zzacs;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget p1, p0, Lg/cxs;->f:I

    if-ge v0, p1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p1

    iget-object p2, p0, Lg/cxs;->d:[I

    aput p1, p2, v0

    iget p2, p0, Lg/cxs;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lg/cxs;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzacs;J)Z
    .locals 9

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget-object v0, p0, Lg/cxs;->g:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v6, p2, v2

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    const-wide/16 v7, 0x4

    add-long/2addr v2, v7

    cmp-long v7, v2, p2

    if-ltz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-static {p1, v2, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzc(Lcom/google/android/gms/internal/ads/zzacs;[BIIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return v5

    :cond_2
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-gez v2, :cond_5

    :cond_4
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzc(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_5
    return v4
.end method
