.class public Lcom/bykv/vk/component/ttvideo/player/NativeLoadControl;
.super Lcom/bykv/vk/component/ttvideo/player/LoadControl;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/LoadControl;-><init>()V

    return-void
.end method

.method private static isNativeLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)Z
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    instance-of p0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeLoadControl;

    return p0
.end method


# virtual methods
.method public onCodecStackSelected(I)I
    .locals 1

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFilterStackSelected(I)I
    .locals 1

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTrackSelected(I)I
    .locals 1

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 0

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Should not be here"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
