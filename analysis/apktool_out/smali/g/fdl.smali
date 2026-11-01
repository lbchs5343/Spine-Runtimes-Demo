.class public final Lg/fdl;
.super Lg/baf;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fdl;->a:I

    iput-object p2, p0, Lg/fdl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _ar(Lg/hed;Lg/cfm;)V
    .locals 6

    iget v0, p0, Lg/fdl;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    instance-of v0, p2, Lg/eln;

    if-eqz v0, :cond_3

    check-cast p2, Lg/eln;

    iget-object v0, p0, Lg/fdl;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ald;

    iput-object p2, v0, Lg/ald;->b:Lg/eln;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v0, p2}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    iget-boolean v3, v0, Lg/ald;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v0, Lg/ald;->e:Z

    iget-object v3, v0, Lg/ald;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v0, Lg/ald;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x14

    if-le v2, v5, :cond_1

    const-string p2, "Unexpected iteration count in SwitchBreakVisitor. Please report as an issue"

    invoke-virtual {p1, p2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public _cs(Lg/hed;Lg/cfm;)Z
    .locals 1

    iget v0, p0, Lg/fdl;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lg/baf;->_cs(Lg/hed;Lg/cfm;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lg/fdl;->b:Ljava/lang/Object;

    check-cast p1, Lg/ry;

    invoke-virtual {p1, p2}, Lg/ry;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public bq(Lg/hed;Lg/cih;)V
    .locals 0

    iget p1, p0, Lg/fdl;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    instance-of p1, p2, Lg/fza;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/fdl;->b:Ljava/lang/Object;

    check-cast p1, Lg/agx;

    check-cast p2, Lg/fza;

    invoke-virtual {p1, p2}, Lg/agx;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/fdl;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    instance-of p1, p2, Lg/fza;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Lg/fza;

    iget-object p1, p0, Lg/fdl;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
