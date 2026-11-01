.class public final Lg/gqn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzad;

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzcj;

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzad;IIIIIIILcom/google/android/gms/internal/ads/zzcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gqn;->d:Lcom/google/android/gms/internal/ads/zzad;

    iput p2, p0, Lg/gqn;->g:I

    iput p3, p0, Lg/gqn;->h:I

    iput p4, p0, Lg/gqn;->b:I

    iput p5, p0, Lg/gqn;->c:I

    iput p6, p0, Lg/gqn;->e:I

    iput p7, p0, Lg/gqn;->i:I

    iput p8, p0, Lg/gqn;->a:I

    iput-object p9, p0, Lg/gqn;->f:Lcom/google/android/gms/internal/ads/zzcj;

    return-void
.end method


# virtual methods
.method public final j(Lcom/google/android/gms/internal/ads/zzg;I)Landroid/media/AudioTrack;
    .locals 12

    iget-object v5, p0, Lg/gqn;->d:Lcom/google/android/gms/internal/ads/zzad;

    iget v1, p0, Lg/gqn;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v4, 0x1d

    iget v6, p0, Lg/gqn;->i:I

    iget v7, p0, Lg/gqn;->e:I

    iget v8, p0, Lg/gqn;->c:I

    if-lt v0, v4, :cond_1

    :try_start_1
    invoke-static {v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzx(III)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzg;->zza()Lcom/google/android/gms/internal/ads/zze;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zze;->zza:Landroid/media/AudioAttributes;

    invoke-static {}, Lg/dll;->a()V

    invoke-static {}, Lg/dll;->d()Landroid/media/AudioTrack$Builder;

    move-result-object v4

    invoke-static {v4, p1}, Lg/dll;->b(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Lg/dll;->c(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-static {p1}, Lg/dll;->g(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Lg/gqn;->a:I

    invoke-static {p1, v0}, Lg/dll;->i(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-static {p1, p2}, Lg/dll;->h(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    if-ne v1, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lg/avm;->h(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-static {p1}, Lg/dll;->e(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move p2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_2
    move-object p1, v0

    move-object v7, p1

    move p2, v1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v6

    :try_start_2
    new-instance v6, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzg;->zza()Lcom/google/android/gms/internal/ads/zze;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zze;->zza:Landroid/media/AudioAttributes;

    invoke-static {v8, v7, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzx(III)Landroid/media/AudioFormat;

    move-result-object v8

    iget v9, p0, Lg/gqn;->a:I

    const/4 v10, 0x1

    move-object v7, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    move-object p1, v6

    goto :goto_1

    :goto_3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    return-object p1

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    nop

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    if-ne p2, v3, :cond_3

    const/4 v6, 0x1

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x0

    iget v2, p0, Lg/gqn;->c:I

    iget v3, p0, Lg/gqn;->e:I

    iget v4, p0, Lg/gqn;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(IIIILcom/google/android/gms/internal/ads/zzad;ZLjava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception v0

    :goto_6
    move p2, v1

    move-object p1, v0

    move-object v7, p1

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    if-ne p2, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_8

    :cond_4
    const/4 v6, 0x0

    :goto_8
    const/4 v1, 0x0

    iget v2, p0, Lg/gqn;->c:I

    iget v3, p0, Lg/gqn;->e:I

    iget v4, p0, Lg/gqn;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(IIIILcom/google/android/gms/internal/ads/zzad;ZLjava/lang/Exception;)V

    throw v0
.end method
