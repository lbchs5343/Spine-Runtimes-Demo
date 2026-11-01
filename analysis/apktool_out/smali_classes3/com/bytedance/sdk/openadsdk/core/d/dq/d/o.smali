.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;,
        Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;
    }
.end annotation


# static fields
.field private static volatile ia:Z


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Landroid/widget/Toast;

.field private iw:Z

.field private mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

.field private final ox:Landroid/content/Context;

.field private p:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ox:Landroid/content/Context;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gs()Lcom/bytedance/sdk/openadsdk/core/r/io;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->iw()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox()Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq()Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;)V

    const/4 p1, 0x2

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq:Landroid/widget/Toast;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq:Landroid/widget/Toast;

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;)V
    .locals 8

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq:Landroid/widget/Toast;

    move-object v5, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/widget/Toast;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V

    move-object p1, v1

    move-object v1, v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p2

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x7d0

    move-object v4, v0

    move-object v0, p2

    invoke-interface/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;J)V
    .locals 8

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d()V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq:Landroid/widget/Toast;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/widget/Toast;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object v1, p2

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->s:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->p:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ox:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V

    const-string p1, "main"

    const-string p2, "internal"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v1, v0, v2, p1}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z

    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ia:Z

    return-void
.end method

.method public static dq()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ia:Z

    return v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->iw:Z

    return p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ox:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public d(Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->iw:Z

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->p:I

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->s:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gs()Lcom/bytedance/sdk/openadsdk/core/r/io;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->d()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)I

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    if-ne v0, v2, :cond_5

    return v3

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;J)V

    return v3

    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->iw:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->mn:Lcom/bytedance/sdk/openadsdk/core/r/io;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)I

    move-result p1

    if-ne p1, v2, :cond_9

    :cond_8
    return v3

    :cond_9
    :goto_1
    return v1
.end method
