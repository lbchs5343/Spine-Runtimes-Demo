.class public Lcom/bytedance/embedapplog/ia;
.super Ljava/lang/Object;


# instance fields
.field private bl:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private fw:I

.field private gh:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private ia:Z

.field private ig:Lcom/bytedance/embedapplog/util/dq;

.field private iw:Ljava/lang/String;

.field private ji:Z

.field private jy:I

.field private k:Ljava/lang/String;

.field private kk:I

.field private kx:Z

.field private le:Ljava/lang/String;

.field private mn:Lcom/bytedance/embedapplog/iw;

.field private mp:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private op:Lcom/bytedance/embedapplog/mn;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private wp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/ia;->kk:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->wp:Z

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->e:Z

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->kx:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/embedapplog/ia;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->ji:Z

    iput-object p1, p0, Lcom/bytedance/embedapplog/ia;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/embedapplog/ia;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->n:Ljava/lang/String;

    return-object v0
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)Lcom/bytedance/embedapplog/ia;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq;->dq(I)Lcom/bytedance/embedapplog/util/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/ia;->ig:Lcom/bytedance/embedapplog/util/dq;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/ia;->bl:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/ia;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->ia:Z

    return v0
.end method

.method public dq(I)Lcom/bytedance/embedapplog/ia;
    .locals 0

    iput p1, p0, Lcom/bytedance/embedapplog/ia;->kk:I

    return-object p0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->o:Ljava/lang/String;

    return-object v0
.end method

.method public dq(Lcom/bytedance/embedapplog/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/ia;->op:Lcom/bytedance/embedapplog/mn;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/ia;->h:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/ia;->wp:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->kx:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/bytedance/embedapplog/ia;->f:I

    return v0
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/embedapplog/ia;->fw:I

    return v0
.end method

.method public gh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->gh:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->i:Ljava/lang/String;

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->no:Ljava/lang/String;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->p:Ljava/lang/String;

    return-object v0
.end method

.method public ji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->bl:Ljava/lang/String;

    return-object v0
.end method

.method public jy()I
    .locals 1

    iget v0, p0, Lcom/bytedance/embedapplog/ia;->jy:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->k:Ljava/lang/String;

    return-object v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/embedapplog/ia;->kk:I

    return v0
.end method

.method public kx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->ji:Z

    return v0
.end method

.method public le()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->le:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->s:Ljava/lang/String;

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->mp:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/bytedance/embedapplog/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->op:Lcom/bytedance/embedapplog/mn;

    return-object v0
.end method

.method public no()Lcom/bytedance/embedapplog/util/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->ig:Lcom/bytedance/embedapplog/util/dq;

    return-object v0
.end method

.method public o()Lcom/bytedance/embedapplog/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->mn:Lcom/bytedance/embedapplog/iw;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/ia;->kx:Z

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/ia;->ji:Z

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->q:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/ia;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public wp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/ia;->e:Z

    return v0
.end method
