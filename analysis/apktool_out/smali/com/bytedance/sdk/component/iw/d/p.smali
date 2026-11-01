.class public Lcom/bytedance/sdk/component/iw/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/iw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/iw/iw;"
    }
.end annotation


# instance fields
.field private d:I

.field dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/component/iw/mn;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/iw/d/p;->d:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/d/p;->ox:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/d/p;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/d/p;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/component/iw/d/p;->dq:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/d/p;->d:I

    return v0
.end method

.method public dq()Lcom/bytedance/sdk/component/iw/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/p;->s:Lcom/bytedance/sdk/component/iw/mn;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/d/p;->s:Lcom/bytedance/sdk/component/iw/mn;

    return-void
.end method

.method public ox()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/p;->ox:Ljava/lang/Object;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/p;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/p;->dq:Ljava/util/Map;

    return-object v0
.end method
