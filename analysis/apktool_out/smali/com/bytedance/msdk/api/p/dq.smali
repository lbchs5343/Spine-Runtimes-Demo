.class public Lcom/bytedance/msdk/api/p/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/dq$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private f:Z

.field private ia:Lcom/bytedance/msdk/api/p/p;

.field private ig:Z

.field private iw:Lcom/bytedance/msdk/api/p/ig;

.field private jy:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field private kk:Lcom/bytedance/msdk/api/p/iw;

.field private mn:Lcom/bytedance/msdk/api/p/ia;

.field private mp:Lorg/json/JSONObject;

.field private no:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/api/p/dq$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lcom/bytedance/msdk/api/p/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->d(Lcom/bytedance/msdk/api/p/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->ox(Lcom/bytedance/msdk/api/p/dq$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->ox:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->p(Lcom/bytedance/msdk/api/p/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->s(Lcom/bytedance/msdk/api/p/dq$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->s:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->iw(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->iw(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->iw:Lcom/bytedance/msdk/api/p/ig;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/p/ig$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/ig$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/ig$dq;->dq()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->iw:Lcom/bytedance/msdk/api/p/ig;

    :goto_0
    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->mn(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/ia;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->mn(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->mn:Lcom/bytedance/msdk/api/p/ia;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/bytedance/msdk/api/p/ia$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/ia$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/ia$dq;->dq()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->mn:Lcom/bytedance/msdk/api/p/ia;

    :goto_1
    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->ia(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->ia(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->ia:Lcom/bytedance/msdk/api/p/p;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/bytedance/msdk/api/p/p$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/p$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/p$dq;->dq()Lcom/bytedance/msdk/api/p/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->ia:Lcom/bytedance/msdk/api/p/p;

    :goto_2
    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->kk(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/iw;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->kk(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bytedance/msdk/api/p/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->kk:Lcom/bytedance/msdk/api/p/iw;

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/bytedance/msdk/api/p/iw;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/iw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->kk:Lcom/bytedance/msdk/api/p/iw;

    :goto_3
    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->o(Lcom/bytedance/msdk/api/p/dq$dq;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->o:Ljava/util/Map;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->no(Lcom/bytedance/msdk/api/p/dq$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->no:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->ig(Lcom/bytedance/msdk/api/p/dq$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->ig:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->mp(Lcom/bytedance/msdk/api/p/dq$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->mp:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->q(Lcom/bytedance/msdk/api/p/dq$dq;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->q:Ljava/util/Map;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->jy(Lcom/bytedance/msdk/api/p/dq$dq;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->jy:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->f(Lcom/bytedance/msdk/api/p/dq$dq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/dq;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/api/p/dq$dq;Lcom/bytedance/msdk/api/p/dq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/p/dq;-><init>(Lcom/bytedance/msdk/api/p/dq$dq;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->f:Z

    return v0
.end method

.method public ia()Lcom/bytedance/msdk/api/p/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->ia:Lcom/bytedance/msdk/api/p/p;

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->ig:Z

    return v0
.end method

.method public iw()Lcom/bytedance/msdk/api/p/ig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->iw:Lcom/bytedance/msdk/api/p/ig;

    return-object v0
.end method

.method public jy()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->jy:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

.method public kk()Lcom/bytedance/msdk/api/p/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->kk:Lcom/bytedance/msdk/api/p/iw;

    return-object v0
.end method

.method public mn()Lcom/bytedance/msdk/api/p/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->mn:Lcom/bytedance/msdk/api/p/ia;

    return-object v0
.end method

.method public mp()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->mp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->no:Z

    return v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->o:Ljava/util/Map;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->ox:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq;->q:Ljava/util/Map;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq;->s:Z

    return v0
.end method
