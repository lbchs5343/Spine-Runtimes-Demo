.class public abstract Lg/bvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final i:Z

.field public final synthetic j:Lg/bhz;

.field public final k:J

.field public final l:J


# direct methods
.method public constructor <init>(Lg/bhz;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bvf;->j:Lg/bhz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/bvf;->k:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lg/bvf;->l:J

    iput-boolean p2, p0, Lg/bvf;->i:Z

    return-void
.end method


# virtual methods
.method public abstract g()V
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lg/bvf;->j:Lg/bhz;

    iget-boolean v1, v0, Lg/bhz;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/bvf;->h()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lg/bvf;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lg/bvf;->i:Z

    invoke-virtual {v0, v1, v2, v3}, Lg/bhz;->j(Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lg/bvf;->h()V

    return-void
.end method
