.class public final enum Lcom/bytedance/sdk/component/adexpress/p/kk$dq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/p/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/adexpress/p/kk$dq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

.field public static final enum dq:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

.field private static final synthetic iw:[Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

.field public static final enum ox:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

.field public static final enum p:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    const-string v1, "text/html"

    const-string v2, "HTML"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->dq:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    const-string v2, "text/css"

    const-string v4, "CSS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->d:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    const-string v4, "application/x-javascript"

    const-string v6, "JS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->ox:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    const-string v6, "image/*"

    const-string v8, "IMAGE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->p:Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->iw:[Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->s:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/p/kk$dq;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/adexpress/p/kk$dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->iw:[Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/adexpress/p/kk$dq;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/p/kk$dq;->s:Ljava/lang/String;

    return-object v0
.end method
