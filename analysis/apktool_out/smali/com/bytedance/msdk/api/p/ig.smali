.class public Lcom/bytedance/msdk/api/p/ig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/ig$dq;
    }
.end annotation


# instance fields
.field private d:I

.field private dq:Z

.field private ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iw:[Ljava/lang/String;

.field private kk:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private ox:Z

.field private p:Z

.field private s:[I


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/api/p/ig$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->dq(Lcom/bytedance/msdk/api/p/ig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->dq:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->d(Lcom/bytedance/msdk/api/p/ig$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/api/p/ig;->d:I

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->ox(Lcom/bytedance/msdk/api/p/ig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->ox:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->p(Lcom/bytedance/msdk/api/p/ig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->p:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->s(Lcom/bytedance/msdk/api/p/ig$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->s:[I

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->iw(Lcom/bytedance/msdk/api/p/ig$dq;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->iw:[Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->mn(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->mn:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->ia(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->ia:Ljava/util/Map;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ig$dq;->kk(Lcom/bytedance/msdk/api/p/ig$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/ig;->kk:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/api/p/ig$dq;Lcom/bytedance/msdk/api/p/ig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/p/ig;-><init>(Lcom/bytedance/msdk/api/p/ig$dq;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/ig;->d:I

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->dq:Z

    return v0
.end method

.method public ia()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->ia:Ljava/util/Map;

    return-object v0
.end method

.method public iw()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->iw:[Ljava/lang/String;

    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->kk:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->ox:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ig;->p:Z

    return v0
.end method

.method public s()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ig;->s:[I

    return-object v0
.end method
