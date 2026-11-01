.class public final Lg/dwx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzbwb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/dwx;->a:J

    iput-object p1, p0, Lg/dwx;->b:Lcom/google/android/gms/internal/ads/zzbwb;

    return-void
.end method
