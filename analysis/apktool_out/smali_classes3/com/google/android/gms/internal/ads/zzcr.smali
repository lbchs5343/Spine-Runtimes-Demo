.class public final Lcom/google/android/gms/internal/ads/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:Landroid/text/Layout$Alignment;

.field public f:F

.field public g:F

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field public j:F

.field public k:I

.field public l:Landroid/graphics/Bitmap;

.field public m:I

.field public n:Landroid/text/Layout$Alignment;

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->l:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->n:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->e:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->g:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcr;->i:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcr;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->a:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcr;->k:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcr;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->b:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->f:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->j:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcr;->d:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->o:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->k:I

    return v0
.end method

.method public final zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final zzd(F)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->j:F

    return-object p0
.end method

.method public final zze(FI)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->g:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcr;->i:I

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->o:I

    return-object p0
.end method

.method public final zzg(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->e:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zzh(F)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->a:F

    return-object p0
.end method

.method public final zzi(I)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->k:I

    return-object p0
.end method

.method public final zzj(F)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->c:F

    return-object p0
.end method

.method public final zzk(F)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->f:F

    return-object p0
.end method

.method public final zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->n:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zzn(FI)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->b:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcr;->m:I

    return-object p0
.end method

.method public final zzo(I)Lcom/google/android/gms/internal/ads/zzcr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcr;->d:I

    return-object p0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzct;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzct;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcr;->h:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcr;->n:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcr;->e:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcr;->l:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcr;->g:F

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcr;->i:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcr;->o:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcr;->a:F

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcr;->k:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcr;->m:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcr;->b:F

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzcr;->f:F

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzcr;->j:F

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzcr;->d:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcr;->c:F

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzct;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final zzq()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcr;->h:Ljava/lang/CharSequence;

    return-object v0
.end method
