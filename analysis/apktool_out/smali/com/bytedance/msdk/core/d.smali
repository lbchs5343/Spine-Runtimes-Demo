.class public Lcom/bytedance/msdk/core/d;
.super Ljava/lang/Object;


# static fields
.field private static final vf:Lcom/bytedance/msdk/core/d;


# instance fields
.field private bl:Z

.field private c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field private final cd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ce:I

.field private d:[Ljava/lang/String;

.field private dq:I

.field private e:Z

.field private er:Lcom/bytedance/msdk/dq/ox/q;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fw:Z

.field private gh:Lcom/bytedance/msdk/api/p/iw;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Ljava/lang/String;

.field private ig:Ljava/lang/String;

.field private ir:Lcom/bytedance/msdk/api/p/dq/kk/dq;

.field private iw:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ji:Ljava/lang/String;

.field private jy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kk:Z

.field private kx:Lorg/json/JSONObject;

.field private l:Lcom/bytedance/msdk/api/p/q;

.field private le:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mn:Z

.field private mp:Ljava/lang/String;

.field private n:Z

.field private final nh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private ob:[I

.field private op:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private s:Z

.field private u:Z

.field private wn:J

.field private wp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/d;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/d;->vf:Lcom/bytedance/msdk/core/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/d;->dq:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-boolean v1, p0, Lcom/bytedance/msdk/core/d;->s:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/d;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/d;->mn:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/d;->q:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/d;->jy:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/d;->f:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/d;->fw:Z

    new-instance v0, Lcom/bytedance/msdk/ia/le;

    invoke-direct {v0}, Lcom/bytedance/msdk/ia/le;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->cd:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/msdk/core/d;->r:J

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->i:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->le:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/core/d;->ce:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->j:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/d;->nh:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->er()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adGap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adLoad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sectionId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pageId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "custom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static dq(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static kk(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/msdk/ia/kx;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static no()Lcom/bytedance/msdk/core/d;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/d;->vf:Lcom/bytedance/msdk/core/d;

    return-object v0
.end method


# virtual methods
.method public bl()Lcom/bytedance/msdk/api/p/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->l:Lcom/bytedance/msdk/api/p/q;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->d()Lcom/bytedance/msdk/dq/ox/q;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/q;->dq(Lcom/bytedance/msdk/dq/ox/q;)Lcom/bytedance/msdk/api/p/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->l:Lcom/bytedance/msdk/api/p/q;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->l:Lcom/bytedance/msdk/api/p/q;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->wp:Z

    return v0
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public ce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->e:Z

    return v0
.end method

.method public d()Lcom/bytedance/msdk/dq/ox/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->er:Lcom/bytedance/msdk/dq/ox/q;

    if-nez v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/s;->dq(Lg/hat;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/q;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/msdk/dq/ox/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->er:Lcom/bytedance/msdk/dq/ox/q;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->er:Lcom/bytedance/msdk/dq/ox/q;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/d;->wn:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->op:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/Map;)V
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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->kk:Z

    return-void
.end method

.method public dq(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->nh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/d;->dq:I

    return-void
.end method

.method public dq(J)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/mn/ox/dq;->dq(J)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/kk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ir:Lcom/bytedance/msdk/api/p/dq/kk/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/iw;Z)V
    .locals 0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/msdk/core/d;->gh:Lcom/bytedance/msdk/api/p/iw;

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/api/p/iw;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->gh:Lcom/bytedance/msdk/api/p/iw;

    if-nez p2, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/d;->dq()Lcom/bytedance/msdk/core/f/d;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/f/d;->dq(I)V

    :cond_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->gh:Lcom/bytedance/msdk/api/p/iw;

    return-void
.end method

.method public dq(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->nh:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->k:Ljava/util/List;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->no:Ljava/util/Map;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->kx:Lorg/json/JSONObject;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->fw:Z

    return-void
.end method

.method public varargs dq([I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ob:[I

    return-void
.end method

.method public dq([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->d:[Ljava/lang/String;

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->fw:Z

    return v0
.end method

.method public e()Z
    .locals 3

    :try_start_0
    const-string v0, "com.union_test.toutiao"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "5001121"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "com.pangolin_demo.toutiao"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "com.bytedance.mediation_demo"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "com.msdk.qa.monkey"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.bytedance.mediation_demo_csj"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public er()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->kx:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public fw()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->no:Ljava/util/Map;

    return-object v0
.end method

.method public gh()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ob:[I

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.union_test.toutiao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "5001121"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.bytedance.mediation_demo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    const-string v0, "tt_mediation_ppe_info"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "tt_ppe_content"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public ia(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ji:Ljava/lang/String;

    return-void
.end method

.method public ia(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->e:Z

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "com.bykv.vk.openvk.TTVfSdk"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/d;->e:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public ir()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->le:Ljava/util/Map;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->op:Ljava/lang/String;

    return-object v0
.end method

.method public iw(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->p:Ljava/lang/String;

    return-void
.end method

.method public iw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->iw:Z

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ji:Ljava/lang/String;

    return-object v0
.end method

.method public ji()Lcom/bytedance/msdk/api/p/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->gh:Lcom/bytedance/msdk/api/p/iw;

    return-object v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->mn:Z

    return v0
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public kk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->h:Z

    return-void
.end method

.method public kk()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.bytedance.mediation_demo_csj"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kx()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/ia/c;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.union_test.toutiao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.bytedance.mediation_demo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.msdk.qa.monkey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method public l()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

.method public le()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/d;->dq:I

    return v0
.end method

.method public mn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ig:Ljava/lang/String;

    return-void
.end method

.method public mn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->wp:Z

    return-void
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->kk:Z

    return v0
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->u:Z

    return v0
.end method

.method public n()V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->d()Lcom/bytedance/msdk/dq/ox/q;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/q;->dq(Lcom/bytedance/msdk/dq/ox/q;)Lcom/bytedance/msdk/api/p/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->l:Lcom/bytedance/msdk/api/p/q;

    return-void
.end method

.method public nh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->bl:Z

    return v0
.end method

.method public no(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->n:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->bl:Z

    return-void
.end method

.method public o()Z
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->ox(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/msdk/core/d;->ce:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v4, "/e2e.text"

    invoke-static {v0, v4}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/bytedance/msdk/core/d;->ce:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/bytedance/msdk/core/d;->ce:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/msdk/core/d;->ce:I

    if-lez v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public ob()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->cd:Ljava/util/Map;

    const-string v1, "gm_usb"

    invoke-static {}, Lcom/bytedance/msdk/core/o/s;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->cd:Ljava/util/Map;

    return-object v0
.end method

.method public op()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->i:Ljava/util/Map;

    return-object v0
.end method

.method public ox()J
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/msdk/core/d;->r:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/ox/dq;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/d;->r:J

    return-wide v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/core/d;->kk(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ox:Ljava/lang/String;

    return-void
.end method

.method public ox(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->le:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->u:Z

    return-void
.end method

.method public p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->ia:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->mn:Z

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->s:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->iw:Z

    return v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/d;->wn:J

    return-wide v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/d;->o:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/d;->s:Z

    return-void
.end method

.method public t()Lcom/bytedance/msdk/api/p/dq/kk/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->ir:Lcom/bytedance/msdk/api/p/dq/kk/dq;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->k:Ljava/util/List;

    return-object v0
.end method

.method public vf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->n:Z

    return v0
.end method

.method public wn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/d;->h:Z

    return v0
.end method

.method public wp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->mp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->mp:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ia/bl;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->mp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/d;->mp:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/d;->mp:Ljava/lang/String;

    return-object v0
.end method
