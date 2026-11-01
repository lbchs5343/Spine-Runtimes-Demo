.class public final Lg/gum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dle;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/gum;->a:Z

    return-void
.end method


# virtual methods
.method public final _bt(Lg/ggu;)V
    .locals 6

    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iget-boolean v2, p0, Lg/gum;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v0

    :goto_0
    invoke-virtual {v1}, Lg/fce;->ac()Lg/gkr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/gkr;->y(I)Lg/fha;

    move-result-object v3

    iget-object v2, v2, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v2, Lg/gqc;

    sget-object v4, Lg/gbl;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance p1, Lg/cyf;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported constant type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput v0, v1, Lg/fce;->w:I

    sget-object v0, Lg/cqf;->CONST_CLASS:Lg/cqf;

    iput-object v0, v1, Lg/fce;->aa:Lg/cqf;

    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {p1, v5, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_1
    iput v0, v1, Lg/fce;->w:I

    sget-object v0, Lg/cqf;->CONST_STRING:Lg/cqf;

    iput-object v0, v1, Lg/fce;->aa:Lg/cqf;

    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {p1, v5, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_2
    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v0

    iput v0, v1, Lg/fce;->w:I

    sget-object v0, Lg/cqf;->CONST_STRING:Lg/cqf;

    iput-object v0, v1, Lg/fce;->aa:Lg/cqf;

    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {p1, v5, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_3
    invoke-virtual {v2}, Lg/gqc;->ax()J

    move-result-wide v2

    iput-wide v2, v1, Lg/fce;->p:J

    sget-object v0, Lg/cqf;->CONST_WIDE:Lg/cqf;

    iput-object v0, v1, Lg/fce;->aa:Lg/cqf;

    sget-object v0, Lg/cqz;->WIDE:Lg/cqz;

    invoke-virtual {p1, v5, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_4
    invoke-virtual {v2}, Lg/gqc;->bc()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lg/fce;->p:J

    sget-object v0, Lg/cqf;->CONST:Lg/cqf;

    iput-object v0, v1, Lg/fce;->aa:Lg/cqf;

    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {p1, v5, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic _ct(Lg/ggu;)V
    .locals 0

    return-void
.end method
