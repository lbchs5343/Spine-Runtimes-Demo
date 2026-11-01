.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;,
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;
    }
.end annotation


# instance fields
.field d:Landroid/view/View;

.field dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field private final f:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

.field private ia:J

.field private ig:J

.field private iw:Ljava/lang/String;

.field private jy:Z

.field private kk:J

.field private mn:Ljava/lang/String;

.field private mp:J

.field private no:J

.field private o:J

.field final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/o/d/ox;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

.field private q:Z

.field private s:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->d:Landroid/view/View;

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ia:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->kk:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->o:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->no:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ig:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->q:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->o:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->o:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ia:J

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ia:J

    return-wide p1
.end method

.method private dq(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$1;

    const-string v1, "executeMultiProcessAppDownloadCallBack"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-object p0
.end method

.method private ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    :cond_0
    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mp:J

    return-wide v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mp:J

    return-wide p1
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->kk:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->kk:J

    return-wide p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->no:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->no:J

    return-wide p1
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ig:J

    return-wide v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ig:J

    return-wide p1
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object v0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/fw;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(I)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/fw$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06fe9c

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const-string p1, "click_play_star_level"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06feb1

    if-ne p3, v0, :cond_1

    const-string p1, "click_play_star_nums"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7e06ffa8

    if-ne p3, v0, :cond_2

    const-string p1, "click_play_source"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7e06ff56

    if-ne p1, p3, :cond_3

    const-string p1, "click_play_logo"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$dq;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(ILcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->q:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ia()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mn:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(I)V

    :cond_0
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(I)V

    :cond_5
    instance-of p2, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz p2, :cond_6

    move-object p2, v0

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p2

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    goto :goto_1

    :cond_6
    instance-of p2, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    if-eqz p2, :cond_7

    move-object p2, v0

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p2

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->jy:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    :cond_1
    return-void
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "RewardFullDownloadManager"

    const-string v2, "remove from ITTAppDownloadListener throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public mn()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
