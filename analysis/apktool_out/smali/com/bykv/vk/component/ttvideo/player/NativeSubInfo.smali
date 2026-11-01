.class public Lcom/bykv/vk/component/ttvideo/player/NativeSubInfo;
.super Lcom/bykv/vk/component/ttvideo/player/SubInfo;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/SubInfo;-><init>()V

    return-void
.end method

.method private static isNativeSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)Z
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    instance-of p0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeSubInfo;

    return p0
.end method


# virtual methods
.method public onSubInfoCallback(IILjava/lang/String;)V
    .locals 0

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Should not be here"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSubInfoCallback2(ILjava/lang/String;)V
    .locals 0

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Should not be here"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSubLoadFinished(I)V
    .locals 1

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSubSwitchCompleted(II)V
    .locals 0

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Should not be here"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
