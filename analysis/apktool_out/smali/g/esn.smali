.class public final Lg/esn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private initializer:Lg/cvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cvw;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/cvw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/esn;->initializer:Lg/cvw;

    sget-object p1, Lg/acq;->ai:Lg/acq;

    iput-object p1, p0, Lg/esn;->_value:Ljava/lang/Object;

    iput-object p0, p0, Lg/esn;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/ewm;

    invoke-virtual {p0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/ewm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/esn;->_value:Ljava/lang/Object;

    sget-object v1, Lg/acq;->ai:Lg/acq;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/esn;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lg/esn;->_value:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/esn;->initializer:Lg/cvw;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-interface {v1}, Lg/cvw;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lg/esn;->_value:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/esn;->initializer:Lg/cvw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lg/esn;->_value:Ljava/lang/Object;

    sget-object v1, Lg/acq;->ai:Lg/acq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/esn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    return-object v0
.end method
