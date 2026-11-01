.class public final Lg/dzd;
.super Ljava/lang/Object;

# interfaces
.implements Lg/faq;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dzd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Enum;I)V
    .locals 0

    iput p2, p0, Lg/dzd;->a:I

    iput-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/dzd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    goto :goto_0

    :cond_1
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/dzd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULL"

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/abo;

    invoke-virtual {v0}, Lg/abo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/ekx;

    invoke-virtual {v0}, Lg/ekx;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dq()Lg/axb;
    .locals 1

    iget v0, p0, Lg/dzd;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg/gt;->no:Lg/gt;

    return-object v0

    :pswitch_0
    sget-object v0, Lg/gt;->mn:Lg/gt;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/abo;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/ekx;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dq(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lg/dzd;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/Number;

    return-object p1

    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/dzd;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeywordNode [keywordValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/abo;

    invoke-virtual {v0}, Lg/abo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/dzd;->b:Ljava/io/Serializable;

    check-cast v0, Lg/ekx;

    invoke-virtual {v0}, Lg/ekx;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
