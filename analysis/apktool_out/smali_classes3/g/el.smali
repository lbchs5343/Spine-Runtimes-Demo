.class public final Lg/el;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public _s:I

.field public a:I

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzed;

.field public final e:Lcom/google/android/gms/internal/ads/zzed;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p1, p0, Lg/el;->c:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lg/el;->e:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method
