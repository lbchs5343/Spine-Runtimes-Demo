.class public final Lg/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:Z

.field public c:Z

.field public final d:Lcom/google/android/gms/internal/ads/zzed;

.field public e:I

.field public f:[Z

.field public g:I

.field public h:Lg/akq;

.field public i:[J

.field public j:J

.field public k:Lcom/google/android/gms/internal/ads/zzajf;

.field public l:[J

.field public m:J

.field public n:[Z

.field public o:Z

.field public p:J

.field public q:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lg/jk;->i:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lg/jk;->q:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lg/jk;->a:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lg/jk;->l:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lg/jk;->n:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lg/jk;->f:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method
