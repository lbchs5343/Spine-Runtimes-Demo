.class public abstract Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CI_StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final d:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

.field public static final dq:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

.field public static final ox:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;


# instance fields
.field protected iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

.field protected s:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/p;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/p;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/iw;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/iw;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->d:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/s;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/s;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->ox:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dq()V
.end method

.method public dq(Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;Ljava/io/File;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->p:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->s:Ljava/io/File;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->iw:Ljava/util/List;

    return-void
.end method
