.class public final Lg/et;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public final c:Z

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/ads/zzed;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzed;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/et;->i:Lcom/google/android/gms/internal/ads/zzed;

    iput-object p2, p0, Lg/et;->e:Lcom/google/android/gms/internal/ads/zzed;

    iput-boolean p3, p0, Lg/et;->c:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result p2

    iput p2, p0, Lg/et;->d:I

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result p2

    iput p2, p0, Lg/et;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lg/et;->g:I

    return-void
.end method


# virtual methods
.method public final j()Z
    .locals 4

    iget v0, p0, Lg/et;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/et;->g:I

    iget v2, p0, Lg/et;->d:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lg/et;->c:Z

    iget-object v2, p0, Lg/et;->e:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lg/et;->b:J

    iget v0, p0, Lg/et;->g:I

    iget v2, p0, Lg/et;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lg/et;->i:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    iput v2, p0, Lg/et;->h:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    iget v2, p0, Lg/et;->f:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lg/et;->f:I

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iput v3, p0, Lg/et;->a:I

    :cond_3
    return v1
.end method
