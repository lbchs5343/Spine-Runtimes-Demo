.class public final Lg/bjp;
.super Lcom/google/android/gms/internal/ads/zzacf;
.source "SourceFile"

# interfaces
.implements Lg/deu;


# instance fields
.field public final g:I

.field public final h:I

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JIJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move-wide v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(JJIIZ)V

    iput-wide v3, v0, Lg/bjp;->j:J

    iput v5, v0, Lg/bjp;->g:I

    iput v6, v0, Lg/bjp;->h:I

    const-wide/16 p1, -0x1

    cmp-long p3, v1, p1

    if-eqz p3, :cond_0

    move-wide p1, v1

    :cond_0
    iput-wide p1, v0, Lg/bjp;->i:J

    return-void
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    iget v0, p0, Lg/bjp;->g:I

    return v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lg/bjp;->i:J

    return-wide v0
.end method
