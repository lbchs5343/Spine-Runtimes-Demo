.class public final Lg/apg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:J

.field public final d:Lcom/google/android/gms/internal/ads/zzur;

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p12, :cond_0

    if-eqz p10, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    if-eqz p11, :cond_2

    if-eqz p10, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput-object p1, p0, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iput-wide p2, p0, Lg/apg;->f:J

    iput-wide p4, p0, Lg/apg;->g:J

    iput-wide p6, p0, Lg/apg;->b:J

    iput-wide p8, p0, Lg/apg;->c:J

    iput-boolean p10, p0, Lg/apg;->e:Z

    iput-boolean p11, p0, Lg/apg;->h:Z

    iput-boolean p12, p0, Lg/apg;->a:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lg/apg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/apg;

    iget-wide v2, p0, Lg/apg;->f:J

    iget-wide v4, p1, Lg/apg;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lg/apg;->g:J

    iget-wide v4, p1, Lg/apg;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lg/apg;->b:J

    iget-wide v4, p1, Lg/apg;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lg/apg;->c:J

    iget-wide v4, p1, Lg/apg;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lg/apg;->e:Z

    iget-boolean v3, p1, Lg/apg;->e:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lg/apg;->h:Z

    iget-boolean v3, p1, Lg/apg;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lg/apg;->a:Z

    iget-boolean v3, p1, Lg/apg;->a:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzur;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/apg;->f:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/apg;->g:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/apg;->b:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/apg;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lg/apg;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/apg;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/apg;->a:Z

    add-int/2addr v0, v1

    return v0
.end method
