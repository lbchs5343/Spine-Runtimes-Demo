.class public Lcom/bytedance/sdk/component/panglearmor/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/panglearmor/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final dq:Landroid/content/Context;

.field private final ox:Ljava/lang/String;

.field private p:Z

.field private s:Lcom/bytedance/sdk/component/panglearmor/ia;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->ox:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->p:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->s:Lcom/bytedance/sdk/component/panglearmor/ia;

    return-void
.end method


# virtual methods
.method public dq(Z)Lcom/bytedance/sdk/component/panglearmor/mn$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->p:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/panglearmor/mn;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/panglearmor/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/panglearmor/mn;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->dq:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq(Lcom/bytedance/sdk/component/panglearmor/mn;Landroid/content/Context;)Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq(Lcom/bytedance/sdk/component/panglearmor/mn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->ox:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/panglearmor/mn;->d(Lcom/bytedance/sdk/component/panglearmor/mn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->s:Lcom/bytedance/sdk/component/panglearmor/ia;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq(Lcom/bytedance/sdk/component/panglearmor/mn;Lcom/bytedance/sdk/component/panglearmor/ia;)Lcom/bytedance/sdk/component/panglearmor/ia;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->p:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq(Lcom/bytedance/sdk/component/panglearmor/mn;Z)Z

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/panglearmor/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn$dq;->s:Lcom/bytedance/sdk/component/panglearmor/ia;

    return-void
.end method
