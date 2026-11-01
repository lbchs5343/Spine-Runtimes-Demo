.class public Lcom/bytedance/sdk/component/iw/ox/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/no;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/iw/no;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ia:Z

.field private iw:I

.field private kk:Z

.field private mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private no:I

.field private o:Lcom/bytedance/sdk/component/iw/mn;

.field private ox:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/Object;)Lcom/bytedance/sdk/component/iw/ox/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/iw/ox/ox;",
            "TT;)",
            "Lcom/bytedance/sdk/component/iw/ox/p;"
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ox:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->dq:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->ox()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->s:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->p()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->iw:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->f()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->kk:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->fw()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/p;->o:Lcom/bytedance/sdk/component/iw/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->cd()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/iw/ox/p;->no:I

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/iw/ox/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/iw/ox/ox;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/iw/ox/p;"
        }
    .end annotation

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/ox/p;->mn:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ia:Z

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/p;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/Object;)Lcom/bytedance/sdk/component/iw/ox/p;

    move-result-object p1

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ia()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x9
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ia:Z

    return v0
.end method

.method public iw()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x7
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->iw:I

    return v0
.end method

.method public kk()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0xa
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->kk:Z

    return v0
.end method

.method public mn()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->mn:Ljava/util/Map;

    return-object v0
.end method

.method public no()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0xc
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->no:I

    return v0
.end method

.method public o()Lcom/bytedance/sdk/component/iw/mn;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->o:Lcom/bytedance/sdk/component/iw/mn;

    return-object v0
.end method

.method public ox()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ox:Ljava/lang/Object;

    return-object v0
.end method

.method public p()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public s()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x6
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->s:I

    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ox:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/p;->p:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/p;->ox:Ljava/lang/Object;

    return-void
.end method
