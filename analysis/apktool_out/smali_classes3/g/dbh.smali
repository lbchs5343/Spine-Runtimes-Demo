.class public abstract Lg/dbh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public j:I

.field public k:J

.field public l:Lg/arm;

.field public m:Z

.field public n:J

.field public final o:Lg/abb;

.field public p:J

.field public q:Z

.field public r:I

.field public s:Lcom/google/android/gms/internal/ads/zzadx;

.field public t:Lg/ffr;

.field public u:Lcom/google/android/gms/internal/ads/zzacu;

.field public v:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/abb;

    invoke-direct {v0}, Lg/abb;-><init>()V

    iput-object v0, p0, Lg/dbh;->o:Lg/abb;

    new-instance v0, Lg/ffr;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/ffr;-><init>(IZ)V

    iput-object v0, p0, Lg/dbh;->t:Lg/ffr;

    return-void
.end method


# virtual methods
.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lg/dbh;->v:J

    return-void
.end method

.method public abstract g(Lcom/google/android/gms/internal/ads/zzed;)J
.end method

.method public h(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lg/ffr;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lg/ffr;-><init>(IZ)V

    iput-object p1, p0, Lg/dbh;->t:Lg/ffr;

    iput-wide v0, p0, Lg/dbh;->p:J

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lg/dbh;->j:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lg/dbh;->n:J

    iput-wide v0, p0, Lg/dbh;->v:J

    return-void
.end method

.method public abstract i(Lcom/google/android/gms/internal/ads/zzed;JLg/ffr;)Z
.end method
