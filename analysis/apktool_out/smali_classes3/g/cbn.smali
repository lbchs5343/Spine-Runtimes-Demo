.class public final Lg/cbn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/cbn;

.field public static final b:Lg/fzo;


# instance fields
.field public c:Lg/fzo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/fzo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lg/fzo;-><init>(IZZII)V

    sput-object v0, Lg/cbn;->b:Lg/fzo;

    return-void
.end method

.method public static declared-synchronized d()Lg/cbn;
    .locals 2

    const-class v0, Lg/cbn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/cbn;->a:Lg/cbn;

    if-nez v1, :cond_0

    new-instance v1, Lg/cbn;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg/cbn;->a:Lg/cbn;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg/cbn;->a:Lg/cbn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
