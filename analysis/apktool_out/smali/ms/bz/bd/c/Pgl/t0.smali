.class public Lms/bz/bd/c/Pgl/t0;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lms/bz/bd/c/Pgl/t0;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public static c()Lms/bz/bd/c/Pgl/t0;
    .locals 3

    sget-object v0, Lms/bz/bd/c/Pgl/t0;->a:Lms/bz/bd/c/Pgl/t0;

    if-nez v0, :cond_1

    const-class v0, Lms/bz/bd/c/Pgl/t0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/t0;->a:Lms/bz/bd/c/Pgl/t0;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/t0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lms/bz/bd/c/Pgl/t0;->b:Ljava/lang/String;

    sput-object v1, Lms/bz/bd/c/Pgl/t0;->a:Lms/bz/bd/c/Pgl/t0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lms/bz/bd/c/Pgl/t0;->a:Lms/bz/bd/c/Pgl/t0;

    return-object v0
.end method
