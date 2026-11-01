.class public final Lcom/bykv/vk/openvk/preload/dq/mp;
.super Lcom/bykv/vk/openvk/preload/dq/no;


# static fields
.field public static final dq:Lcom/bykv/vk/openvk/preload/dq/mp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/mp;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/mp;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/no;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    instance-of p1, p1, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lcom/bykv/vk/openvk/preload/dq/mp;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
