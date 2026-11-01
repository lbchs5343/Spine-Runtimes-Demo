.class public Lcom/bytedance/sdk/component/panglearmor/mn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/panglearmor/mn$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Landroid/content/Context;

.field private ox:Ljava/lang/String;

.field private p:Z

.field private s:Lcom/bytedance/sdk/component/panglearmor/ia;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/panglearmor/mn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->ox:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/mn;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->dq:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/mn;Lcom/bytedance/sdk/component/panglearmor/ia;)Lcom/bytedance/sdk/component/panglearmor/ia;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->s:Lcom/bytedance/sdk/component/panglearmor/ia;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/mn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/mn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->p:Z

    return p1
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->dq:Landroid/content/Context;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->p:Z

    return v0
.end method

.method public p()Lcom/bytedance/sdk/component/panglearmor/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/mn;->s:Lcom/bytedance/sdk/component/panglearmor/ia;

    return-object v0
.end method
