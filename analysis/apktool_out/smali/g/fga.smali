.class public abstract Lg/fga;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cyl;

.field public static final b:I

.field public static final c:J

.field public static final d:Ljava/lang/String;

.field public static final e:Lg/acq;

.field public static final f:J

.field public static final g:I

.field public static final h:Lg/cyl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    sget v1, Lg/fst;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "DefaultDispatcher"

    :cond_0
    sput-object v0, Lg/fga;->d:Ljava/lang/String;

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v2, 0x186a0

    invoke-static/range {v1 .. v7}, Lg/dzm;->aj(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lg/fga;->f:J

    sget v0, Lg/fst;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    invoke-static {v0, v1, v2}, Lg/dzm;->ai(IILjava/lang/String;)I

    move-result v0

    sput v0, Lg/fga;->g:I

    const v0, 0x1ffffe

    const/4 v1, 0x4

    const-string v2, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static {v0, v1, v2}, Lg/dzm;->ai(IILjava/lang/String;)I

    move-result v0

    sput v0, Lg/fga;->b:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    invoke-static/range {v1 .. v7}, Lg/dzm;->aj(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lg/fga;->c:J

    sget-object v0, Lg/acq;->bd:Lg/acq;

    sput-object v0, Lg/fga;->e:Lg/acq;

    new-instance v0, Lg/cyl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/cyl;-><init>(I)V

    sput-object v0, Lg/fga;->h:Lg/cyl;

    new-instance v0, Lg/cyl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/cyl;-><init>(I)V

    sput-object v0, Lg/fga;->a:Lg/cyl;

    return-void
.end method
