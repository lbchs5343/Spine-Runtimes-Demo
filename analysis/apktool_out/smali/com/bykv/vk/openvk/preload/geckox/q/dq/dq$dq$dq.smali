.class public Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "reason"
    .end annotation
.end field

.field public dq:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "domain"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;->d:Ljava/lang/String;

    return-void
.end method
