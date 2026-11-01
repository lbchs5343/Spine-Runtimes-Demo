.class public final Lcom/bykv/vk/openvk/preload/geckox/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dq:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

.field ia:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

.field ig:Ljava/lang/String;

.field iw:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

.field jy:Ljava/lang/String;

.field kk:Ljava/lang/Long;

.field mn:Z

.field mp:Ljava/io/File;

.field no:Ljava/lang/String;

.field o:Ljava/lang/String;

.field ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/content/Context;

.field q:Ljava/lang/String;

.field s:Lcom/bykv/vk/openvk/preload/geckox/kk/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->mn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->p:Landroid/content/Context;

    return-void
.end method
