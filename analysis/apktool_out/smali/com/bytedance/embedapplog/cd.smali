.class public Lcom/bytedance/embedapplog/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static d:Lcom/bytedance/embedapplog/bu; = null

.field private static dq:I = 0x0

.field private static iw:Ljava/lang/String; = null

.field private static final kk:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mn:I = -0x1

.field private static ox:J

.field private static p:Ljava/lang/String;

.field private static s:J


# instance fields
.field private final ia:Lcom/bytedance/embedapplog/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/cd;->kk:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/embedapplog/cd;->ia:Lcom/bytedance/embedapplog/iw;

    return-void
.end method

.method public static dq(Lcom/bytedance/embedapplog/bu;J)Lcom/bytedance/embedapplog/bu;
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ds;->mn()Lcom/bytedance/embedapplog/ds;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/bu;

    iput-wide p1, v0, Lcom/bytedance/embedapplog/ds;->d:J

    iget-wide v1, p0, Lcom/bytedance/embedapplog/ds;->d:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    iput-wide p1, v0, Lcom/bytedance/embedapplog/bu;->ig:J

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-object v0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/bu;
    .locals 2

    new-instance v0, Lcom/bytedance/embedapplog/bu;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bu;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":"

    invoke-static {p0, v1, p1}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p0, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    :goto_0
    iput-wide p2, v0, Lcom/bytedance/embedapplog/ds;->d:J

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lcom/bytedance/embedapplog/bu;->ig:J

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, ""

    :goto_1
    iput-object p4, v0, Lcom/bytedance/embedapplog/bu;->mp:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lcom/bytedance/embedapplog/cd;->kk:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/cd;->kk:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/bytedance/embedapplog/cd;->d:Lcom/bytedance/embedapplog/bu;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/embedapplog/cd;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/embedapplog/cd;->ox:J

    sget-object v2, Lcom/bytedance/embedapplog/cd;->d:Lcom/bytedance/embedapplog/bu;

    invoke-static {v2, v0, v1}, Lcom/bytedance/embedapplog/cd;->dq(Lcom/bytedance/embedapplog/bu;J)Lcom/bytedance/embedapplog/bu;

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/embedapplog/cd;->d:Lcom/bytedance/embedapplog/bu;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    sput p1, Lcom/bytedance/embedapplog/cd;->mn:I

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/bytedance/embedapplog/cd;->p:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/bytedance/embedapplog/cd;->dq(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/bu;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/cd;->d:Lcom/bytedance/embedapplog/bu;

    sget-object v1, Lcom/bytedance/embedapplog/cd;->kk:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bytedance/embedapplog/bu;->gh:I

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sput p1, Lcom/bytedance/embedapplog/cd;->mn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    sget p1, Lcom/bytedance/embedapplog/cd;->dq:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/bytedance/embedapplog/cd;->dq:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    sget-object p1, Lcom/bytedance/embedapplog/cd;->p:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/embedapplog/cd;->dq:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/bytedance/embedapplog/cd;->dq:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/bytedance/embedapplog/cd;->p:Ljava/lang/String;

    sput-object p1, Lcom/bytedance/embedapplog/cd;->iw:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/embedapplog/cd;->s:J

    sput-wide v0, Lcom/bytedance/embedapplog/cd;->ox:J

    :cond_0
    return-void
.end method
