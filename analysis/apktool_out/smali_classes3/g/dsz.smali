.class public final Lg/dsz;
.super Lg/gnx;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/fxy;

.field public final synthetic b:Lg/egq;

.field public d:Z


# direct methods
.method public constructor <init>(Lg/dix;Lg/fxy;Lg/egq;)V
    .locals 0

    iput-object p2, p0, Lg/dsz;->a:Lg/fxy;

    iput-object p3, p0, Lg/dsz;->b:Lg/egq;

    invoke-direct {p0, p1}, Lg/gnx;-><init>(Lg/cpv;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    invoke-super {p0}, Lg/gnx;->close()V

    iget-boolean v0, p0, Lg/dsz;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dsz;->d:Z

    iget-object v0, p0, Lg/dsz;->a:Lg/fxy;

    iget-object v1, p0, Lg/dsz;->b:Lg/egq;

    monitor-enter v0

    :try_start_0
    iget v2, v1, Lg/egq;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lg/egq;->a:I

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lg/egq;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lg/fxy;->ab(Lg/egq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    return-void
.end method
