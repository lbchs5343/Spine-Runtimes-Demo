.class public Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/ig/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation


# instance fields
.field public dq:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;->dq:Ljava/lang/String;

    return-void
.end method
