.class public final Lcom/google/android/gms/internal/ads/zzgoz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cqw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqw;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/cqw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoz;->a:Lg/cqw;

    return-void
.end method

.method public static zzb(I)[B
    .locals 1

    new-array p0, p0, [B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgoz;->a:Lg/cqw;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
