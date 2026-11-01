.class public final synthetic Lcom/google/android/gms/internal/ads/zzeol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeom;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeol;->zza:Lcom/google/android/gms/internal/ads/zzeom;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeol;->zza:Lcom/google/android/gms/internal/ads/zzeom;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzewi;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeom;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    iget-object v3, v4, Lg/eno;->zzg:[Lg/eno;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-object v3, v4, Lg/eno;->zza:Ljava/lang/String;

    iget-boolean v8, v4, Lg/eno;->zzi:Z

    goto :goto_2

    :cond_0
    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    array-length v13, v3

    if-ge v10, v13, :cond_4

    aget-object v13, v3, v10

    iget-boolean v14, v13, Lg/eno;->zzi:Z

    if-nez v14, :cond_1

    if-nez v11, :cond_1

    iget-object v8, v13, Lg/eno;->zza:Ljava/lang/String;

    const/4 v11, 0x1

    :cond_1
    if-eqz v14, :cond_3

    if-nez v12, :cond_2

    const/4 v9, 0x1

    :cond_2
    const/4 v12, 0x1

    :cond_3
    if-eqz v11, :cond_5

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v8

    move v8, v9

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :goto_2
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeom;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeom;->a:Lcom/google/android/gms/internal/ads/zzbzz;

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v1

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->bd()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v11

    move-object v11, v1

    move/from16 v1, v17

    goto :goto_3

    :cond_6
    move-object v11, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lg/eno;->zzg:[Lg/eno;

    if-eqz v13, :cond_f

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v6, v13

    const/16 v16, 0x0

    const-string v10, "|"

    if-ge v14, v6, :cond_d

    aget-object v6, v13, v14

    iget-boolean v7, v6, Lg/eno;->zzi:Z

    if-eqz v7, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v7, v6, Lg/eno;->zze:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_a

    cmpl-float v7, v5, v16

    if-eqz v7, :cond_9

    iget v7, v6, Lg/eno;->zzf:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-int v7, v7

    goto :goto_5

    :cond_9
    const/4 v7, -0x1

    :cond_a
    :goto_5
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lg/eno;->zzb:I

    const/4 v10, -0x2

    if-ne v7, v10, :cond_c

    cmpl-float v7, v5, v16

    if-eqz v7, :cond_b

    iget v6, v6, Lg/eno;->zzc:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v7, v6

    goto :goto_6

    :cond_b
    const/4 v7, -0x2

    :cond_c
    :goto_6
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_d
    if-eqz v15, :cond_f

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v12, v6, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    :goto_8
    const-string v7, "320x50"

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzq:Z

    move v6, v8

    move v8, v5

    move-object v5, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeon;

    move v10, v9

    move v9, v1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzeon;-><init>(Lg/eno;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v3
.end method
