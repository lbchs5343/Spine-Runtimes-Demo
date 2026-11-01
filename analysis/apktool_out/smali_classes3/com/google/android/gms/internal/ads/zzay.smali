.class public final Lcom/google/android/gms/internal/ads/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/Integer;

.field public l:[B

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/lang/CharSequence;

.field public u:Ljava/lang/CharSequence;

.field public v:Ljava/lang/Integer;

.field public w:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza([BI)Lcom/google/android/gms/internal/ads/zzay;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->l:[B

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->v:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->l:[B

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzba;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzb:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->h:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->q:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzd:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->u:Ljava/lang/CharSequence;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zze:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->e:Ljava/lang/CharSequence;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzf:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->g:Ljava/lang/CharSequence;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzg:[B

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzba;->zzh:Ljava/lang/Integer;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->l:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzay;->v:Ljava/lang/Integer;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzi:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->a:Ljava/lang/Integer;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzj:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->p:Ljava/lang/Integer;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzk:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->r:Ljava/lang/Integer;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzl:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->b:Ljava/lang/Boolean;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzm:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->f:Ljava/lang/Integer;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzn:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->f:Ljava/lang/Integer;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzo:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->o:Ljava/lang/Integer;

    :cond_d
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzp:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->d:Ljava/lang/Integer;

    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzq:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->c:Ljava/lang/Integer;

    :cond_f
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzr:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->n:Ljava/lang/Integer;

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzs:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->s:Ljava/lang/Integer;

    :cond_11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzt:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->w:Ljava/lang/CharSequence;

    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzu:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->m:Ljava/lang/CharSequence;

    :cond_13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzv:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->t:Ljava/lang/CharSequence;

    :cond_14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->i:Ljava/lang/CharSequence;

    :cond_15
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzx:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzay;->j:Ljava/lang/CharSequence;

    :cond_16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzba;->zzy:Ljava/lang/Integer;

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->k:Ljava/lang/Integer;

    :cond_17
    :goto_0
    return-object p0
.end method

.method public final zzc(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->u:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zze(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzf(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzg(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->t:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzh(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzi(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzj(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzl(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzm(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzn(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzo(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzp(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzq(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzr(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzs(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzt(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzay;->w:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzu()Lcom/google/android/gms/internal/ads/zzba;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Lcom/google/android/gms/internal/ads/zzay;)V

    return-object v0
.end method
