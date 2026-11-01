.class public final Lg/bak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzamm;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzek;

.field public final f:Lcom/google/android/gms/internal/ads/zzec;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bak;->c:Lcom/google/android/gms/internal/ads/zzamm;

    iput-object p2, p0, Lg/bak;->e:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object p1, p0, Lg/bak;->f:Lcom/google/android/gms/internal/ads/zzec;

    return-void
.end method
