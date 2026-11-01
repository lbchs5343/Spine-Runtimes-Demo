.class public Lcom/bykv/vk/component/ttvideo/player/NativeMaskInfo;
.super Lcom/bykv/vk/component/ttvideo/player/MaskInfo;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/MaskInfo;-><init>()V

    return-void
.end method

.method private static isNativeMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)Z
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    instance-of p0, p0, Lcom/bykv/vk/component/ttvideo/player/NativeMaskInfo;

    return p0
.end method


# virtual methods
.method public onMaskInfoCallback(IILjava/lang/String;)V
    .locals 0

    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Should not be here"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
