.class public final Lg/ggr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzed;

.field public e:I

.field public f:I

.field public final g:[I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lg/ggr;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lg/ggr;->g:[I

    return-void
.end method
