.class public final Lg/epy;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public f:J

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/app/Application;

.field public final i:Ljava/util/ArrayList;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public final m:Landroid/content/Context;

.field public n:J

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:Ljava/lang/String;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/epy;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/epy;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/epy;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/epy;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lg/epy;->o:I

    iput-boolean v0, p0, Lg/epy;->r:Z

    new-instance v0, Lg/eoa;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/eoa;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/epy;->m:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lg/epy;->h:Landroid/app/Application;

    :cond_0
    iget-object p1, p0, Lg/epy;->h:Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public static s(JLjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "time"

    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
