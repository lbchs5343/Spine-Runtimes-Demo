.class public final Lcom/bykv/vk/openvk/preload/d/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/d/ia$dq;
    }
.end annotation


# instance fields
.field d:Lcom/bykv/vk/openvk/preload/d/d/dq;

.field dq:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ">;"
        }
    .end annotation
.end field

.field ox:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/preload/d/ia$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ia;->dq:Ljava/lang/Class;

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/d/ia;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/d/ia;->ox:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Interceptor class == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/d/ia$dq;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/d/ia;-><init>(Lcom/bykv/vk/openvk/preload/d/ia$dq;)V

    return-void
.end method
