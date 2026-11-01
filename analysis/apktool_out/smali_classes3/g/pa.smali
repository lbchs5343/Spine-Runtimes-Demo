.class public final Lg/pa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:J

.field public d:I

.field public final e:Lcom/google/android/gms/internal/ads/zzfhz;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhz;-><init>()V

    iput-object v0, p0, Lg/pa;->e:Lcom/google/android/gms/internal/ads/zzfhz;

    const/4 v0, 0x0

    iput v0, p0, Lg/pa;->a:I

    iput v0, p0, Lg/pa;->b:I

    iput v0, p0, Lg/pa;->d:I

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/pa;->c:J

    iput-wide v0, p0, Lg/pa;->f:J

    return-void
.end method
