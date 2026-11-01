.class public Lcom/bytedance/msdk/ox/s/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/s/d/dq;


# instance fields
.field private d:Lcom/bytedance/msdk/ox/d/d/dq;

.field private dq:Lcom/bytedance/msdk/core/no/no;

.field private ia:J

.field private iw:I

.field private kk:I

.field private mn:Z

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private s:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->ia:J

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/s/d/d;)Lcom/bytedance/msdk/ox/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/d/d;->d:Lcom/bytedance/msdk/ox/d/d/dq;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/ox/d/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/s/d/d;-><init>()V

    iput-object p0, v0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    iput-object p1, v0, Lcom/bytedance/msdk/ox/s/d/d;->d:Lcom/bytedance/msdk/ox/d/d/dq;

    return-object v0
.end method


# virtual methods
.method public bl()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->i()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->er()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public cd()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "mintegral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "baidu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "gdt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "ks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "sigmob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "pangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "klevin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    const-string v0, "com.bytedance.msdk.adapter.mintegral.Mintegral"

    goto :goto_1

    :pswitch_1
    const-string v0, "com.bytedance.msdk.adapter.unity.Unity"

    goto :goto_1

    :pswitch_2
    const-string v0, "com.bytedance.msdk.adapter.baidu.Baidu"

    goto :goto_1

    :pswitch_3
    const-string v0, "com.bytedance.msdk.adapter.admob.Admob"

    goto :goto_1

    :pswitch_4
    const-string v0, "com.bytedance.msdk.adapter.gdt.Gdt"

    goto :goto_1

    :pswitch_5
    const-string v0, "com.bytedance.msdk.adapter.ks.Ks"

    goto :goto_1

    :pswitch_6
    const-string v0, "com.bytedance.msdk.adapter.sigmob.Sigmob"

    goto :goto_1

    :pswitch_7
    const-string v0, "com.bytedance.msdk.adapter.pangle_csjm.Pangle"

    goto :goto_1

    :pswitch_8
    const-string v0, "com.bytedance.msdk.adapter.klevin.Klevin"

    :goto_1
    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v2

    iget-object v10, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v10}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v10

    const-string v11, "BannerLoader"

    const-string v12, "DrawLoader"

    const-string v13, "InterstitialLoader"

    const-string v14, "FullVideoLoader"

    packed-switch v10, :pswitch_data_1

    :pswitch_9
    goto :goto_4

    :pswitch_a
    if-ne v2, v9, :cond_a

    :pswitch_b
    move-object v1, v13

    goto :goto_4

    :cond_a
    if-ne v2, v8, :cond_e

    :goto_2
    :pswitch_c
    move-object v1, v14

    goto :goto_4

    :goto_3
    :pswitch_d
    move-object v1, v12

    goto :goto_4

    :pswitch_e
    const-string v1, "RewardLoader"

    if-ne v2, v4, :cond_b

    goto :goto_4

    :cond_b
    if-ne v2, v3, :cond_e

    goto :goto_2

    :pswitch_f
    const-string v1, "NativeLoader"

    if-ne v2, v6, :cond_c

    goto :goto_4

    :cond_c
    if-ne v2, v5, :cond_d

    goto :goto_3

    :cond_d
    if-ne v2, v7, :cond_e

    :pswitch_10
    move-object v1, v11

    goto :goto_4

    :pswitch_11
    const-string v1, "SplashLoader"

    :cond_e
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4347d989 -> :sswitch_8
        -0x3b56c19d -> :sswitch_7
        -0x35ca9371 -> :sswitch_6
        0xd68 -> :sswitch_5
        0x18f37 -> :sswitch_4
        0x58603fd -> :sswitch_3
        0x592ae1b -> :sswitch_2
        0x6a45775 -> :sswitch_1
        0x431e1919 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public ce()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->iw:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->p:Ljava/lang/String;

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->kk:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->ia:J

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/d/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/ox/s/d/d$2;-><init>(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->ox:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/no;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/ox/s/d/d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/ox/s/d/d$1;-><init>(Lcom/bytedance/msdk/ox/s/d/d;Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->mn:Z

    return-void
.end method

.method public dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->kx()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public gh()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->dq()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ia()Lcom/bytedance/msdk/core/no/no;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->iw:I

    return v0
.end method

.method public ji()D
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->wp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public jy()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public kk()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/d/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/s/d/d$3;-><init>(Lcom/bytedance/msdk/ox/s/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public kx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public le()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->s:I

    return v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public n()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->le()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public no()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->wn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public op()Lcom/bytedance/msdk/core/no/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->kk:I

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/s/d/d;->s:I

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->ia:J

    return-wide v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->mn:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->kk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wp()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d;->dq:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
