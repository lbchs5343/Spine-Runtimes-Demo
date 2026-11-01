.class public Lcom/bykv/vk/openvk/preload/geckox/ig/d;
.super Ljava/lang/Object;


# instance fields
.field public d:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "app_version"
    .end annotation
.end field

.field public dq:J
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "aid"
    .end annotation
.end field

.field public ia:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "device_model"
    .end annotation
.end field

.field public ig:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "uid"
    .end annotation
.end field

.field public iw:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "ac"
    .end annotation
.end field

.field public kk:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "device_platform"
    .end annotation
.end field

.field public mn:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "os_version"
    .end annotation
.end field

.field public no:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "region"
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "sdk_version"
    .end annotation
.end field

.field public ox:I
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "os"
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "device_id"
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "app_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->ox:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->mn:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->ia:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->kk:Ljava/lang/String;

    const-string v0, "2.0.3-rc.9-pangle"

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->o:Ljava/lang/String;

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->dq:J

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->p:Ljava/lang/String;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->s:Ljava/lang/String;

    iput-object p6, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->iw:Ljava/lang/String;

    iput-object p7, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->ig:Ljava/lang/String;

    iput-object p8, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->no:Ljava/lang/String;

    return-void
.end method
