.class public Lcom/bytedance/msdk/api/p/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/ia$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Z

.field private ox:Z

.field private p:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/api/p/ia$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ia$dq;->dq(Lcom/bytedance/msdk/api/p/ia$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia;->dq:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ia$dq;->d(Lcom/bytedance/msdk/api/p/ia$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/ia;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ia$dq;->ox(Lcom/bytedance/msdk/api/p/ia$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia;->ox:Z

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/ia$dq;->p(Lcom/bytedance/msdk/api/p/ia$dq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/msdk/api/p/ia;->p:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/api/p/ia$dq;Lcom/bytedance/msdk/api/p/ia$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/p/ia;-><init>(Lcom/bytedance/msdk/api/p/ia$dq;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia;->dq:Z

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/ia;->d:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia;->ox:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/ia;->p:Z

    return v0
.end method
