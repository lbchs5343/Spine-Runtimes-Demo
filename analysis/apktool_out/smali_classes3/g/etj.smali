.class public final Lg/etj;
.super Lcom/google/android/gms/internal/ads/zzfzo;
.source "SourceFile"


# instance fields
.field public final transient a:I

.field public final transient b:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfzo;II)V
    .locals 0

    iput-object p1, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lg/etj;->a:I

    iput p3, p0, Lg/etj;->b:I

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzj;->f()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzj;->h()I

    move-result v0

    iget v1, p0, Lg/etj;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lg/etj;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/etj;->b:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    iget v1, p0, Lg/etj;->a:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzj;->h()I

    move-result v0

    iget v1, p0, Lg/etj;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/etj;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg/etj;->zzh(II)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzfzo;
    .locals 2

    iget v0, p0, Lg/etj;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzj(III)V

    iget-object v0, p0, Lg/etj;->zzc:Lcom/google/android/gms/internal/ads/zzfzo;

    iget v1, p0, Lg/etj;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzh(II)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    return-object p1
.end method
