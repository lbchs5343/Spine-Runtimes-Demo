.class public final Lg/ftb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwg;


# instance fields
.field public final a:I

.field public final synthetic b:Lg/fkd;


# direct methods
.method public constructor <init>(Lg/fkd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ftb;->b:Lg/fkd;

    iput p2, p0, Lg/ftb;->a:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I
    .locals 5

    iget-object v0, p0, Lg/ftb;->b:Lg/fkd;

    invoke-virtual {v0}, Lg/fkd;->av()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lg/ftb;->a:I

    invoke-virtual {v0, v1}, Lg/fkd;->as(I)V

    iget-object v3, v0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v3, v3, v1

    iget-boolean v4, v0, Lg/fkd;->q:Z

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/gms/internal/ads/zzwf;->zze(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;IZ)I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0, v1}, Lg/fkd;->ax(I)V

    :cond_1
    return p1
.end method

.method public final zzb(J)I
    .locals 5

    iget-object v0, p0, Lg/ftb;->b:Lg/fkd;

    invoke-virtual {v0}, Lg/fkd;->av()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lg/ftb;->a:I

    invoke-virtual {v0, v1}, Lg/fkd;->as(I)V

    iget-object v3, v0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v3, v3, v1

    iget-boolean v4, v0, Lg/fkd;->q:Z

    invoke-virtual {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzc(JZ)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzwf;->zzv(I)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Lg/fkd;->ax(I)V

    return v2

    :cond_1
    return p1
.end method

.method public final zzd()V
    .locals 3

    iget v0, p0, Lg/ftb;->a:I

    iget-object v1, p0, Lg/ftb;->b:Lg/fkd;

    iget-object v2, v1, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzm()V

    iget v0, v1, Lg/fkd;->ai:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)I

    move-result v0

    iget-object v1, v1, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzg;->zzi(I)V

    return-void
.end method

.method public final zze()Z
    .locals 3

    iget-object v0, p0, Lg/ftb;->b:Lg/fkd;

    invoke-virtual {v0}, Lg/fkd;->av()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    iget v2, p0, Lg/ftb;->a:I

    aget-object v1, v1, v2

    iget-boolean v0, v0, Lg/fkd;->q:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzx(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
