.class public final Lg/fvj;
.super Lcom/google/android/gms/internal/ads/zzfzt;
.source "SourceFile"


# instance fields
.field public final transient a:Lg/fqf;

.field public final transient b:Lg/az;


# direct methods
.method public constructor <init>(Lg/fqf;Lg/az;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lg/fvj;->a:Lg/fqf;

    iput-object p2, p0, Lg/fvj;->b:Lg/az;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/fvj;->a:Lg/fqf;

    invoke-virtual {v0, p1}, Lg/fqf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lg/fvj;->b:Lg/az;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzo;->e(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lg/fvj;->b:Lg/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzu(I)Lcom/google/android/gms/internal/ads/zzgbv;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/fvj;->a:Lg/fqf;

    iget v0, v0, Lg/fqf;->j:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfzo;
    .locals 1

    iget-object v0, p0, Lg/fvj;->b:Lg/az;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgbu;
    .locals 2

    iget-object v0, p0, Lg/fvj;->b:Lg/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzu(I)Lcom/google/android/gms/internal/ads/zzgbv;

    move-result-object v0

    return-object v0
.end method
