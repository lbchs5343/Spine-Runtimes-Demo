.class public Lcom/bykv/vk/component/ttvideo/player/NativeObject;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation


# instance fields
.field protected mNativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->mNativeObj:J

    return-void
.end method

.method private getNativeObj()J
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->mNativeObj:J

    return-wide v0
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized release()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->nativeRelease(J)V

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->mNativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNativeObj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/NativeObject;->mNativeObj:J

    return-void
.end method
