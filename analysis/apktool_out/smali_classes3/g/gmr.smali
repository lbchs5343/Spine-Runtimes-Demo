.class public final Lg/gmr;
.super Lg/bkw;
.source "SourceFile"


# static fields
.field public static final a:Landroid/util/Pair;


# instance fields
.field public final al:Lg/dxb;

.field public final ap:Lg/fou;

.field public b:Ljava/lang/String;

.field public c:Z

.field public final g:Lg/dxb;

.field public final h:Lg/dxb;

.field public final j:Lg/fou;

.field public final k:Lg/fou;

.field public l:J

.field public final m:Lg/avz;

.field public final o:Lg/fou;

.field public final p:Lg/dxb;

.field public final q:Lg/fou;

.field public r:Landroid/content/SharedPreferences;

.field public s:Lg/dkh;

.field public final t:Lg/avz;

.field public u:Z

.field public final v:Lg/avz;

.field public final w:Lg/dpa;

.field public final x:Lg/avz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lg/gmr;->a:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lg/cyg;)V
    .locals 4

    invoke-direct {p0, p1}, Lg/bkw;-><init>(Lg/cyg;)V

    new-instance p1, Lg/fou;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p1, p0, v0, v1, v2}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/gmr;->o:Lg/fou;

    new-instance p1, Lg/avz;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lg/avz;-><init>(Lg/gmr;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg/gmr;->m:Lg/avz;

    new-instance p1, Lg/fou;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/gmr;->k:Lg/fou;

    new-instance p1, Lg/dxb;

    const-string v0, "non_personalized_ads"

    invoke-direct {p1, p0, v0}, Lg/dxb;-><init>(Lg/gmr;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gmr;->al:Lg/dxb;

    new-instance p1, Lg/avz;

    const-string v0, "allow_remote_dynamite"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lg/avz;-><init>(Lg/gmr;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg/gmr;->v:Lg/avz;

    new-instance p1, Lg/fou;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/gmr;->ap:Lg/fou;

    const-string p1, "app_install_time"

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance p1, Lg/dxb;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0}, Lg/dxb;-><init>(Lg/gmr;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gmr;->h:Lg/dxb;

    new-instance p1, Lg/avz;

    const-string v0, "app_backgrounded"

    invoke-direct {p1, p0, v0, v3}, Lg/avz;-><init>(Lg/gmr;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg/gmr;->x:Lg/avz;

    new-instance p1, Lg/avz;

    const-string v0, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v0, v3}, Lg/avz;-><init>(Lg/gmr;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg/gmr;->t:Lg/avz;

    new-instance p1, Lg/fou;

    const-string v0, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v0, v1, v2}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/gmr;->q:Lg/fou;

    new-instance p1, Lg/dxb;

    const-string v0, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v0}, Lg/dxb;-><init>(Lg/gmr;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gmr;->g:Lg/dxb;

    new-instance p1, Lg/dxb;

    const-string v0, "deferred_attribution_cache"

    invoke-direct {p1, p0, v0}, Lg/dxb;-><init>(Lg/gmr;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gmr;->p:Lg/dxb;

    new-instance p1, Lg/fou;

    const-string v0, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v0, v1, v2}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/gmr;->j:Lg/fou;

    new-instance p1, Lg/dpa;

    invoke-direct {p1, p0}, Lg/dpa;-><init>(Lg/gmr;)V

    iput-object p1, p0, Lg/gmr;->w:Lg/dpa;

    return-void
.end method


# virtual methods
.method public final aq(I)Z
    .locals 3

    invoke-virtual {p0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lg/rs;->a:Lg/rs;

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ar()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0}, Lg/bkw;->an()V

    iget-object v0, p0, Lg/gmr;->r:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/gmr;->r:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final as()Lg/rs;
    .locals 3

    invoke-virtual {p0}, Lg/bgf;->_e()V

    invoke-virtual {p0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v0

    return-object v0
.end method

.method public final at(Z)V
    .locals 3

    invoke-virtual {p0}, Lg/bgf;->_e()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "App measurement setting deferred collection"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final au(J)Z
    .locals 3

    iget-object v0, p0, Lg/gmr;->o:Lg/fou;

    invoke-virtual {v0}, Lg/fou;->f()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lg/gmr;->k:Lg/fou;

    invoke-virtual {v0}, Lg/fou;->f()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
