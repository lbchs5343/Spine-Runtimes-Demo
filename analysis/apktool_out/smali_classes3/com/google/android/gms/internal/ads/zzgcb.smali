.class public abstract Lcom/google/android/gms/internal/ads/zzgcb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bwk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/ata;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1, v2}, Lg/ata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg/ata;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v1, v2}, Lg/ata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg/azh;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v1, v2}, Lg/azh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg/azh;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v1, v2}, Lg/azh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg/bwk;

    new-instance v1, Lg/esw;

    const-string v2, "base16()"

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg/esw;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lg/bwk;-><init>(Lg/esw;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcb;->a:Lg/bwk;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/ads/zzgcb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcb;->a:Lg/bwk;

    return-object v0
.end method


# virtual methods
.method public abstract b(I)I
.end method

.method public c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract d([BLjava/lang/CharSequence;)I
.end method

.method public abstract e(Ljava/lang/StringBuilder;[BI)V
.end method

.method public abstract f(I)I
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/ads/zzgcb;
.end method

.method public final zzj([BII)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x0

    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzj(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzgcb;->b(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgcb;->e(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final zzk(Ljava/lang/CharSequence;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcb;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgcb;->f(I)I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcb;->d([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgbz; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
