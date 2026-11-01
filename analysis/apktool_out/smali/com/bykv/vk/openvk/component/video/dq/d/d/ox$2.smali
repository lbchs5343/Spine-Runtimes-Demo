.class Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->delete(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->dq:Ljava/lang/String;

    iput p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->d(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/d/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const-string v2, "key=? AND flag=?"

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->dq:Ljava/lang/String;

    iget v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox$2;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
