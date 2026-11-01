.class public final Lcom/google/android/gms/internal/ads/zzgky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cqw;

.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqw;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/cqw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgky;->a:Lg/cqw;

    return-void
.end method

.method public static zza()Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgky;->a:Lg/cqw;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method
