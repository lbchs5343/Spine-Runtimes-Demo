.class public final Lcom/google/android/gms/internal/ads/zzhj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/MediaCodec$CryptoInfo;

.field public final b:Lg/clx;

.field public zza:[B

.field public zzb:[B

.field public zzc:I

.field public zzd:[I

.field public zze:[I

.field public zzf:I

.field public zzg:I

.field public zzh:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->a:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Lg/clx;

    invoke-direct {v1, v0}, Lg/clx;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->b:Lg/clx;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->a:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final zzb(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->a:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public final zzc(I[I[I[B[BIII)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zze:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->a:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->b:Lg/clx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast p2, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {p2, p7, p8}, Lg/fid;->a(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V

    iget-object p2, p1, Lg/clx;->e:Ljava/lang/Object;

    check-cast p2, Landroid/media/MediaCodec$CryptoInfo;

    iget-object p1, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {p2, p1}, Lg/fid;->l(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_0
    return-void
.end method
