.class public final Lg/cbv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cbv;


# instance fields
.field public final b:Lg/akx;

.field public final c:Ljava/util/Random;

.field public final d:Lg/mx;

.field public final e:Lg/ph;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cbv;

    invoke-direct {v0}, Lg/cbv;-><init>()V

    sput-object v0, Lg/cbv;->a:Lg/cbv;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    new-instance v0, Lg/mx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lg/mx;->h:F

    new-instance v1, Lg/ph;

    new-instance v2, Lg/ejy;

    const-string v3, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {v2, v3}, Lg/cgo;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lg/dfk;

    const-string v4, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lg/dfk;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lg/dfk;

    const-string v5, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lg/dfk;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbhx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbhx;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbxo;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbtd;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbhy;-><init>()V

    new-instance v7, Lg/dfk;

    const-string v8, "com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lg/dfk;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lg/ph;->c:Ljava/lang/Object;

    iput-object v3, v1, Lg/ph;->e:Ljava/lang/Object;

    iput-object v4, v1, Lg/ph;->f:Ljava/lang/Object;

    iput-object v5, v1, Lg/ph;->a:Ljava/lang/Object;

    iput-object v6, v1, Lg/ph;->b:Ljava/lang/Object;

    iput-object v7, v1, Lg/ph;->g:Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v9, 0x8

    new-array v10, v9, [B

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v6, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lg/akx;

    const v3, 0xe8813d8

    invoke-direct {v2, v6, v3, v5}, Lg/akx;-><init>(IIZ)V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cbv;->d:Lg/mx;

    iput-object v1, p0, Lg/cbv;->e:Lg/ph;

    iput-object v4, p0, Lg/cbv;->f:Ljava/lang/String;

    iput-object v2, p0, Lg/cbv;->b:Lg/akx;

    iput-object v3, p0, Lg/cbv;->c:Ljava/util/Random;

    return-void
.end method
