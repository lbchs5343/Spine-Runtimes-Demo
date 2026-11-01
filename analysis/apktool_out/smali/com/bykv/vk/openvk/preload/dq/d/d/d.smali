.class public abstract Lcom/bykv/vk/openvk/preload/dq/d/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final dq:Lcom/bykv/vk/openvk/preload/dq/d/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bykv/vk/openvk/preload/dq/d/s;->dq()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/d/dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d/dq;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/d/ox;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d/ox;-><init>()V

    :goto_0
    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bykv/vk/openvk/preload/dq/d/d/d;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    return-object v0
.end method


# virtual methods
.method public abstract dq(Ljava/lang/reflect/AccessibleObject;)V
.end method
