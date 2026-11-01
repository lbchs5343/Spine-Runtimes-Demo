.class public final synthetic Lg/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/eos;


# direct methods
.method public synthetic constructor <init>(Lg/eos;I)V
    .locals 0

    iput p2, p0, Lg/hf;->a:I

    iput-object p1, p0, Lg/hf;->b:Lg/eos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/hf;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/hab;

    iget-object v0, p1, Lg/hab;->a:Ljava/lang/String;

    iget-object p1, p1, Lg/hab;->b:Ljava/lang/Throwable;

    iget-object v1, p0, Lg/hf;->b:Lg/eos;

    check-cast v1, Lg/grs;

    const-string v2, "/* ERROR: "

    invoke-virtual {v1, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-interface {v1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lg/grs;->aa()V

    invoke-static {v1, p1}, Lg/evh;->j(Lg/eos;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lg/grs;->ab()V

    :cond_0
    const-string p1, "*/"

    invoke-interface {v1, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lg/hf;->b:Lg/eos;

    check-cast v0, Lg/grs;

    const-string v1, "/* "

    invoke-virtual {v0, v1}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-interface {v0, p1}, Lg/eos;->h(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const-string v0, " */"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/hf;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
