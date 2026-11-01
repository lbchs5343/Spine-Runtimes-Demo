.class public final Lg/ckw;
.super Lg/ewq;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/aju;

.field public final synthetic b:Lg/fvd;


# direct methods
.method public constructor <init>(Lg/fvd;Lg/aju;Lg/evq;)V
    .locals 0

    iput-object p1, p0, Lg/ckw;->b:Lg/fvd;

    iput-object p2, p0, Lg/ckw;->a:Lg/aju;

    invoke-direct {p0, p3}, Lg/ewq;-><init>(Lg/evq;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lg/ckw;->b:Lg/fvd;

    iget-object v1, p0, Lg/ckw;->a:Lg/aju;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v1, Lg/aju;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lg/aju;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-super {p0}, Lg/ewq;->close()V

    iget-object v0, p0, Lg/ckw;->a:Lg/aju;

    iget-object v0, v0, Lg/aju;->d:Ljava/lang/Object;

    check-cast v0, Lg/abv;

    invoke-virtual {v0}, Lg/abv;->g()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
