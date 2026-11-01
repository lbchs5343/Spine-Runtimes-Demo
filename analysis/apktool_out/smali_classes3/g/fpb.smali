.class public final Lg/fpb;
.super Lcom/google/android/gms/internal/ads/zzfvg;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:B


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvg;
    .locals 0

    iput-object p1, p0, Lg/fpb;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfvg;
    .locals 0

    iput p1, p0, Lg/fpb;->a:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lg/fpb;->c:B

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfvh;
    .locals 3

    iget-byte v0, p0, Lg/fpb;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lg/gty;

    iget v1, p0, Lg/fpb;->a:I

    iget-object v2, p0, Lg/fpb;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lg/gty;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: statusCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
