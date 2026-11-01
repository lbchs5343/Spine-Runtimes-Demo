.class final Lms/bz/bd/c/Pgl/c0;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    sget-boolean p1, Lms/bz/bd/c/Pgl/n0;->a:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x19

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "5c855f"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lms/bz/bd/c/Pgl/n0;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/volcengine/mobsecBiz/metasec/listener/PglITokenObserver;

    invoke-interface {v0, p2}, Lcom/volcengine/mobsecBiz/metasec/listener/PglITokenObserver;->onTokenLoaded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :array_0
    .array-data 1
        0x2bt
        0x6ft
        0x79t
        0x44t
        0x1at
        0x7et
        0x24t
        0x56t
        0x4ft
        0x6ct
        0x2at
        0x68t
        0x58t
        0x49t
        0x4at
        0x65t
        0x39t
        0x49t
        0x6ct
        0x6bt
        0x64t
        0x2ct
        0x6t
        0xct
        0x4at
    .end array-data
.end method
