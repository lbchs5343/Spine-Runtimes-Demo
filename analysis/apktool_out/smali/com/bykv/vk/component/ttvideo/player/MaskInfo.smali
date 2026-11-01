.class public abstract Lcom/bykv/vk/component/ttvideo/player/MaskInfo;
.super Lcom/bykv/vk/component/ttvideo/player/NativeObject;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/NativeObject;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMaskInfoCallback(IILjava/lang/String;)V
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation
.end method
