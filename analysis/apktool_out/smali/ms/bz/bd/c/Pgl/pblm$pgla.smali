.class public Lms/bz/bd/c/Pgl/pblm$pgla;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pgla"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;I)V
    .locals 10

    const-class v1, Lms/bz/bd/c/Pgl/pblm;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lms/bz/bd/c/Pgl/pblm;->g:Lms/bz/bd/c/Pgl/pblm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lms/bz/bd/c/Pgl/pblm$pgla;->a:J

    sub-long v3, v0, v5

    iget-object v7, p0, Lms/bz/bd/c/Pgl/pblm$pgla;->b:Ljava/lang/String;

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lms/bz/bd/c/Pgl/pblm;->f(JJLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;I)V
    .locals 10

    const-class v1, Lms/bz/bd/c/Pgl/pblm;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lms/bz/bd/c/Pgl/pblm;->g:Lms/bz/bd/c/Pgl/pblm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lms/bz/bd/c/Pgl/pblm$pgla;->a:J

    sub-long v3, v0, v5

    iget-object v7, p0, Lms/bz/bd/c/Pgl/pblm$pgla;->b:Ljava/lang/String;

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lms/bz/bd/c/Pgl/pblm;->c(JJLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
