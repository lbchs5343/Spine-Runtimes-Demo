.class public Lcom/bytedance/msdk/core/no/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/no/ia$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ia:Lorg/json/JSONObject;

.field private iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/mn;",
            ">;"
        }
    .end annotation
.end field

.field private kk:D

.field private mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/kk;",
            ">;"
        }
    .end annotation
.end field

.field private no:D

.field private o:I

.field private ox:Ljava/lang/String;

.field private p:Lcom/bytedance/msdk/core/no/kk;

.field private s:Lcom/bytedance/msdk/core/no/ia$dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ia;->o:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/no/ia;->no:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/mn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->iw:Ljava/util/List;

    return-void
.end method

.method public dq()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/ia;->kk:D

    return-wide v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ia;->o:I

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/ia$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->s:Lcom/bytedance/msdk/core/no/ia$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->p:Lcom/bytedance/msdk/core/no/kk;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/no/ia;->kk:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/kk;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->mn:Ljava/util/List;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->ia:Lorg/json/JSONObject;

    return-void
.end method

.method public ia()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->s:Lcom/bytedance/msdk/core/no/ia$dq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/bytedance/msdk/core/no/ia$dq;->dq(Lcom/bytedance/msdk/core/no/ia$dq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public kk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->s:Lcom/bytedance/msdk/core/no/ia$dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/bytedance/msdk/core/no/ia$dq;->d(Lcom/bytedance/msdk/core/no/ia$dq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->ia:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ox()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/ia;->no:D

    return-wide v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->dq:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/kk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->mn:Ljava/util/List;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->d:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/mn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ia;->iw:Ljava/util/List;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ia;->ox:Ljava/lang/String;

    return-void
.end method
