.class public Lcom/bykv/vk/openvk/component/video/api/ox/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cd:Z

.field public d:I

.field public dq:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private fw:Z

.field private gh:I

.field private i:I

.field private ia:I

.field private ig:I

.field private iw:Ljava/lang/String;

.field private jy:Ljava/lang/String;

.field private k:I

.field private kk:I

.field private le:I

.field private mn:I

.field private mp:I

.field private no:Ljava/lang/String;

.field private o:I

.field public final ox:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

.field private wp:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/ox;Lcom/bykv/vk/openvk/component/video/api/ox/ox;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x32000

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ia:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->r:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox:Ljava/util/HashMap;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->i:I

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->le:I

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->k:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->wp:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    iput-object p3, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    iput p4, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh:I

    iput p5, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->r:I

    return-void
.end method


# virtual methods
.method public cd()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh:I

    return v0
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e:Lorg/json/JSONObject;

    const-string v1, "pitaya_cache_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->no:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw:Z

    return-void
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q:Ljava/util/List;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd:Z

    return-void
.end method

.method public e()Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->k:I

    return v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig:I

    return v0
.end method

.method public ia(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->k:I

    return-void
.end method

.method public ig()J
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public iw()I
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->i:I

    return-void
.end method

.method public jy()F
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public k()Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp:I

    return v0
.end method

.method public kk(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->wp:I

    return-void
.end method

.method public le()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->wp:I

    return v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->le:I

    return-void
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd:Z

    return v0
.end method

.method public mp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->k()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->k()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public no()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw:Z

    return v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f:J

    return-wide v0
.end method

.method public ox()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e:Lorg/json/JSONObject;

    const-string v1, "pitaya_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->jy:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e:Lorg/json/JSONObject;

    const-string v1, "pitaya_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq:Ljava/lang/String;

    return-void
.end method

.method public q()Z
    .locals 3

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->s()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    return v1

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->le:I

    return v0
.end method

.method public declared-synchronized s(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh:I

    return-void
.end method

.method public wp()Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object v0
.end method
