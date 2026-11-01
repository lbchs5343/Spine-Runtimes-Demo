.class public final Lg/ctm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/Serializable;

.field public final synthetic b:I

.field public final c:Ljava/lang/String;

.field public volatile d:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    iput p1, p0, Lg/ctm;->b:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/dys;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ctm;->a:Ljava/io/Serializable;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/ctm;->c:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfxn;-><init>()V

    iput-object p1, p0, Lg/ctm;->a:Ljava/io/Serializable;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/ctm;->c:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final f()Ljava/util/logging/Logger;
    .locals 2

    iget-object v0, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/ctm;->a:Ljava/io/Serializable;

    check-cast v0, Lg/dys;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/ctm;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final e()Ljava/util/logging/Logger;
    .locals 2

    iget v0, p0, Lg/ctm;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/ctm;->a:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    if-eqz v1, :cond_1

    monitor-exit v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lg/ctm;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lg/ctm;->d:Ljava/util/logging/Logger;

    monitor-exit v0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lg/ctm;->f()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
