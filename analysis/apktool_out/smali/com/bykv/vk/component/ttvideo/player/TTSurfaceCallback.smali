.class public Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSurfaceCallback"


# instance fields
.field private mListener:Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;->mListener:Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;->mListener:Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;->onSurfaceChanged(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;->mListener:Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;->mListener:Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
