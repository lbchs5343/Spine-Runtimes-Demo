.class public final Lcom/bykv/vk/openvk/preload/d/ia$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field public d:Lcom/bykv/vk/openvk/preload/d/d/dq;

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

.field public ox:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ">;)",
            "Lcom/bykv/vk/openvk/preload/d/ia$dq;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor class == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq()Lcom/bykv/vk/openvk/preload/d/ia;
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/ia;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/preload/d/ia;-><init>(Lcom/bykv/vk/openvk/preload/d/ia$dq;B)V

    return-object v0
.end method
