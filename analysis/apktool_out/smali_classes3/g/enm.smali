.class public final Lg/enm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:J

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzaej;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaej;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/enm;->b:Lcom/google/android/gms/internal/ads/zzaej;

    iput-wide p2, p0, Lg/enm;->a:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lg/enm;->a:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 9

    iget-object v0, p0, Lg/enm;->b:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Lg/ae;->n(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lg/ae;->n(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzadr;->zzc:J

    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzadr;->zzc:J

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
