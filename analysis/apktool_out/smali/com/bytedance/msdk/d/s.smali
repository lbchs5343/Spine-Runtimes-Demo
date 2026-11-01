.class public abstract Lcom/bytedance/msdk/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/d/d;
.implements Lcom/bytedance/msdk/d/ox;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/msdk/d/d;",
        "Lcom/bytedance/msdk/d/ox;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/msdk/d/s;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private bf:J

.field private bl:Ljava/lang/String;

.field private final bu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bx:Ljava/lang/String;

.field private by:I

.field private c:Ljava/lang/String;

.field private cc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private ce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cv:Z

.field private d:Ljava/lang/String;

.field private volatile dc:Z

.field private dk:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

.field private dq:Ljava/lang/String;

.field private ds:Ljava/lang/String;

.field private e:I

.field private er:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private volatile fd:Z

.field private fw:Ljava/lang/String;

.field private gh:D

.field private gx:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private ha:I

.field private hf:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field protected ia:Lcom/bytedance/msdk/api/p/dq/d;

.field protected ig:Lcom/bytedance/msdk/dq/d/iw;

.field private ij:Z

.field private io:I

.field private ir:Ljava/lang/String;

.field protected iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

.field private j:D

.field private ji:Z

.field private jo:Ljava/lang/String;

.field private volatile jw:Z

.field private jy:I

.field private k:I

.field protected kk:Lcom/bytedance/msdk/api/p/dq/p;

.field private kx:Z

.field private l:I

.field private le:D

.field private m:I

.field private mc:I

.field protected mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

.field protected mp:Lcom/bytedance/msdk/dq/d/iw;

.field private n:Ljava/lang/String;

.field private nh:I

.field protected no:Lcom/bytedance/msdk/api/p/dq/ox/d;

.field private nt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ny:Ljava/lang/String;

.field protected o:Lcom/bytedance/msdk/api/p/dq/mn/o;

.field private ob:I

.field private op:J

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private pa:I

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private tl:Z

.field private tv:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private uh:I

.field private v:Ljava/lang/String;

.field private vf:I

.field private vw:Z

.field private wi:Ljava/lang/String;

.field private wn:D

.field private wp:I

.field private ws:Z

.field private x:Ljava/lang/String;

.field private xi:I

.field private volatile xj:Z

.field private xv:I

.field private xz:Ljava/lang/String;

.field private yo:Ljava/lang/String;

.field private yy:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->r:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/d/s;->wp:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/d/s;->vf:I

    iput v0, p0, Lcom/bytedance/msdk/d/s;->ob:I

    iput v0, p0, Lcom/bytedance/msdk/d/s;->l:I

    iput v0, p0, Lcom/bytedance/msdk/d/s;->t:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->cv:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->dc:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->jw:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->fd:Z

    new-instance v1, Lcom/bytedance/msdk/ia/le;

    invoke-direct {v1}, Lcom/bytedance/msdk/ia/le;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/d/s;->bu:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->ws:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/d/s;->ij:Z

    const-string v0, "1"

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->jo:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->nt:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->a:Ljava/util/Map;

    return-void
.end method

.method private dq(Landroid/view/ViewGroup;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/d/s;->ox(Landroid/view/ViewGroup;)V

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_mtg_ad_choice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p2, Lcom/bytedance/msdk/api/p/dq/mn/no;->ig:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private ox(Landroid/view/ViewGroup;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "tt_gdt_developer_view_root"

    sget v3, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_gdt_developer_view_root_tag_key:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v4, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, "tt_gdt_developer_view"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "tt_admob_native_view_root_tag"

    sget v3, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_admob_developer_view_root_tag_key:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v3, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_admob_developer_view_tag_key:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "tt_admob_native_view_tag"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->er:Ljava/util/Map;

    return-object v0
.end method

.method public ae()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->m:I

    return v0
.end method

.method public ah()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->n:Ljava/lang/String;

    return-object v0
.end method

.method public bl()V
    .locals 0

    return-void
.end method

.method public bl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->cd:Ljava/lang/String;

    return-void
.end method

.method public bn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->s:I

    return v0
.end method

.method public final bu()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->nt:Ljava/util/Map;

    return-object v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public by()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->jw:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/msdk/d/s;->jw:Z

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object v0
.end method

.method public cc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->yo:Ljava/lang/String;

    return-object v0
.end method

.method public cd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public cd(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->m:I

    return-void
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->wi:Ljava/lang/String;

    return-void
.end method

.method public ce()V
    .locals 0

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/d/s;)I

    move-result p1

    return p1
.end method

.method public cv()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->uh:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->jy:I

    return v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->wn:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->pa:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->op:J

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/bytedance/msdk/dq/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public dc()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->by:I

    return v0
.end method

.method public dk()D
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->xx()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->le:D

    iget-object v2, p0, Lcom/bytedance/msdk/d/s;->jo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v0, v0, v2

    return-wide v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->le:D

    return-wide v0
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/msdk/d/s;->m:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/bytedance/msdk/d/s;->m:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lcom/bytedance/msdk/d/s;->io:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lcom/bytedance/msdk/d/s;->io:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result p1

    if-ge v0, p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->bu:Ljava/util/Map;

    return-object v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->le:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

.method public final dq(J)V
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->bf:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->bf:J

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0, p2, p6}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/msdk/d/s;->dk:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->o:Lcom/bytedance/msdk/api/p/dq/mn/o;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->kk:Lcom/bytedance/msdk/api/p/dq/p;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/dq/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->nt:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public ds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ds:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public en()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->nh:I

    return v0
.end method

.method public er()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->xv:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->b:Ljava/lang/String;

    return-void
.end method

.method public fd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->tv:Ljava/lang/String;

    return-object v0
.end method

.method public fp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->r:Ljava/util/List;

    return-object v0
.end method

.method public fq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->p:Ljava/lang/String;

    return-object v0
.end method

.method public fw()V
    .locals 0

    return-void
.end method

.method public fw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->io:I

    return-void
.end method

.method public fw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->yo:Ljava/lang/String;

    return-void
.end method

.method public fx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->tl:Z

    return v0
.end method

.method public g()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->wn:D

    return-wide v0
.end method

.method public gh()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public gh(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->s:I

    return-void
.end method

.method public gh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->cc:Ljava/lang/String;

    return-void
.end method

.method public gl()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->gh:D

    return-wide v0
.end method

.method public gm()Lcom/bytedance/msdk/dq/d/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object v0
.end method

.method public gx()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->dc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/msdk/d/s;->dc:Z

    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->p:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ha()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->yy:Ljava/lang/String;

    return-object v0
.end method

.method public hf()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->mc:I

    return v0
.end method

.method public hy()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zi()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "-1"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zi()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->nh:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->bl:Ljava/lang/String;

    return-void
.end method

.method public ia(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->gx:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/msdk/d/s;->l:I

    return p1

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/d/s;->vf:I

    return p1
.end method

.method public ia()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ia(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->l:I

    return-void
.end method

.method public ia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->ji:Z

    return-void
.end method

.method public ig()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ig(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->k:I

    return-void
.end method

.method public ig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->bx:Ljava/lang/String;

    return-void
.end method

.method public ij()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->x:Ljava/lang/String;

    return-object v0
.end method

.method public io()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->jo:Ljava/lang/String;

    return-object v0
.end method

.method public ip()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ir()Lcom/bytedance/msdk/api/p/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object v0
.end method

.method public ir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->i:Ljava/lang/String;

    return-void
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->uh:I

    return-void
.end method

.method public iw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->yy:Ljava/lang/String;

    return-void
.end method

.method public iw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->xj:Z

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->pa:I

    return v0
.end method

.method public ji(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->fw:Ljava/lang/String;

    return-void
.end method

.method public ji()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public jn()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jo()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->wp:I

    return v0
.end method

.method public jv()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ny:Ljava/lang/String;

    return-object v0
.end method

.method public jy()V
    .locals 0

    return-void
.end method

.method public jy(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->e:I

    return-void
.end method

.method public jy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->hf:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->f:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ir:Ljava/lang/String;

    return-void
.end method

.method public kk(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->gx:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/msdk/d/s;->t:I

    return p1

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/d/s;->ob:I

    return p1
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public kk(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->t:I

    return-void
.end method

.method public kk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->tl:Z

    return-void
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public kx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ox:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->ws:Z

    return v0
.end method

.method public le()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public le(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->jy:I

    return-void
.end method

.method public le(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->n:Ljava/lang/String;

    return-void
.end method

.method public lk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->hf:Ljava/lang/String;

    return-object v0
.end method

.method public mc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->kx:Z

    return v0
.end method

.method public mn()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->by:I

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->gx:Ljava/lang/String;

    return-void
.end method

.method public mn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->kx:Z

    return-void
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mp(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->wp:I

    return-void
.end method

.method public mp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->x:Ljava/lang/String;

    return-void
.end method

.method public n()Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->dq:Ljava/lang/String;

    return-void
.end method

.method public nh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->z:I

    return v0
.end method

.method public no()V
    .locals 0

    return-void
.end method

.method public no(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->ob:I

    return-void
.end method

.method public no(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->tv:Ljava/lang/String;

    return-void
.end method

.method public nt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->u:Ljava/lang/String;

    return-object v0
.end method

.method public ny()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ce:Ljava/util/Map;

    return-object v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->vf:I

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ny:Ljava/lang/String;

    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->ij:Z

    return v0
.end method

.method public oh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->q:I

    return v0
.end method

.method public op()Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object v0
.end method

.method public op(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->d:Ljava/lang/String;

    return-void
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->f:I

    return v0
.end method

.method public ox(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->j:D

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->z:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->v:Ljava/lang/String;

    return-void
.end method

.method public ox(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "setMediaExtraInfo "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->bu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->ij:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    iput-object v0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-void
.end method

.method public p(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/d/s;->gh:D

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->xi:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ds:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->nt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->ws:Z

    return-void
.end method

.method public pa()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->a:Ljava/util/Map;

    return-object v0
.end method

.method public py()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->mc:I

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->jo:Ljava/lang/String;

    return-void
.end method

.method public qz()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->e:I

    return v0
.end method

.method public r()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->q:I

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->h:Ljava/lang/String;

    return-void
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/d/s;->ha:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->xz:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->ce:Ljava/util/Map;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/d/s;->vw:Z

    return-void
.end method

.method public abstract s()Z
.end method

.method public sc()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "-1"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sy()D
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->g()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->le:D

    return-wide v0
.end method

.method public t()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->cv:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/msdk/d/s;->cv:Z

    const/4 v0, 0x0

    return v0
.end method

.method public tl()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->bl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/bytedance/msdk/d/s;->op:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ce:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->tv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public tu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public tv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/msdk/core/s/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public uh()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->fd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/msdk/d/s;->fd:Z

    const/4 v0, 0x0

    return v0
.end method

.method public ux()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->v:Ljava/lang/String;

    return-object v0
.end method

.method public vf()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xi:I

    return v0
.end method

.method public vw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->xz:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->hf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->hf:Ljava/lang/String;

    return-object v0
.end method

.method public wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->dk:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-object v0
.end method

.method public wp()Lcom/bytedance/sdk/openadsdk/f/d/d/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public wp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/d/s;->u:Ljava/lang/String;

    return-void
.end method

.method public wq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->io:I

    return v0
.end method

.method public ws()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->bx:Ljava/lang/String;

    return-object v0
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->op:J

    return-wide v0
.end method

.method public xi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->xj:Z

    return v0
.end method

.method public xj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->bl:Ljava/lang/String;

    return-object v0
.end method

.method public xv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public xx()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public xz()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->ha:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->xv:I

    return v0
.end method

.method public yo()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/d/s;->k:I

    return v0
.end method

.method public yy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/d/s;->vw:Z

    return v0
.end method

.method public final z()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->bf:J

    return-wide v0
.end method

.method public zc()Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public zi()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/d/s;->j:D

    return-wide v0
.end method
