.class public final Lg/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/aij;


# direct methods
.method public constructor <init>(Lg/aij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eb;->a:Lg/aij;

    return-void
.end method

.method public static final b(Landroid/content/Context;)Lg/eb;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    sget-object v2, Lg/qw;->a:Lg/qw;

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Lg/qw;->b()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x0

    const-string v7, "context.getSystemService\u2026opicsManager::class.java)"

    if-lt v4, v5, :cond_1

    new-instance v0, Lg/hn;

    invoke-static {}, Lg/fvr;->l()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lg/fdj;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lg/fvr;->b(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/hn;-><init>(Landroid/adservices/topics/TopicsManager;I)V

    goto :goto_1

    :cond_1
    if-lt v0, v3, :cond_2

    invoke-virtual {v2}, Lg/qw;->b()I

    move-result v1

    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    new-instance v0, Lg/hn;

    invoke-static {}, Lg/fvr;->l()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lg/fdj;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lg/fvr;->b(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/hn;-><init>(Landroid/adservices/topics/TopicsManager;I)V

    goto :goto_1

    :cond_3
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_4

    new-instance p0, Lg/eb;

    invoke-direct {p0, v0}, Lg/eb;-><init>(Lg/aij;)V

    return-object p0

    :cond_4
    return-object v6
.end method


# virtual methods
.method public c(Lg/eph;)Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/eph;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/uj;->a:Lg/nt;

    sget-object v0, Lg/hcw;->a:Lg/drl;

    invoke-static {v0}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object v0

    new-instance v1, Lg/bzy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/bzy;-><init>(Lg/eb;Lg/eph;Lg/bdp;)V

    invoke-static {v0, v1}, Lg/baf;->ba(Lg/dlg;Lg/bto;)Lg/ghn;

    move-result-object p1

    invoke-static {p1}, Lg/awt;->ae(Lg/ghn;)Lg/gbb;

    move-result-object p1

    return-object p1
.end method
