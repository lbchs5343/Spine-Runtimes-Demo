.class public final Lg/bxw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/fc;

.field public b:I

.field public final c:[B

.field public d:I

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Lg/gvg;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lg/bxw;->c:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lg/bxw;->e:Ljava/util/ArrayDeque;

    new-instance v0, Lg/gvg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/gvg;-><init>(I)V

    iput-object v0, p0, Lg/bxw;->f:Lg/gvg;

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/internal/ads/zzacs;I)J
    .locals 6

    iget-object v0, p0, Lg/bxw;->c:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
