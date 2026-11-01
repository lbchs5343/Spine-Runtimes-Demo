.class public final Lg/crj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lg/dxp;

.field public d:J

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dxp;

    invoke-direct {v0, p1}, Lg/dxp;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lg/crj;->c:Lg/dxp;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/crj;->g(I)V

    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 6

    iput p1, p0, Lg/crj;->e:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    :goto_0
    iput-wide v0, p0, Lg/crj;->a:J

    return-void

    :cond_0
    const-wide/32 v0, 0x989680

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lg/crj;->a:J

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lg/crj;->b:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lg/crj;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lg/crj;->f:J

    goto :goto_0
.end method
