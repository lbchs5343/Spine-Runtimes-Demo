.class public final synthetic Lg/aty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/mo;

.field public final synthetic c:Lg/hed;


# direct methods
.method public synthetic constructor <init>(Lg/mo;Lg/hed;I)V
    .locals 0

    iput p3, p0, Lg/aty;->a:I

    iput-object p1, p0, Lg/aty;->b:Lg/mo;

    iput-object p2, p0, Lg/aty;->c:Lg/hed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/aty;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aty;->b:Lg/mo;

    iget-object v1, p0, Lg/aty;->c:Lg/hed;

    check-cast p1, Lg/vm;

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lg/mo;->e(Lg/hed;Lg/vm;)V
    :try_end_0
    .catch Lg/blf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to calculate best type for var: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/aty;->b:Lg/mo;

    iget-object v1, p0, Lg/aty;->c:Lg/hed;

    check-cast p1, Lg/vm;

    :try_start_1
    invoke-virtual {p1}, Lg/vm;->m()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lg/mo;->b:Lg/cag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/zf;->a:Lg/zf;

    invoke-virtual {v0, v1, p1, v2, v3}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;
    :try_end_1
    .catch Lg/blf; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set immutable type for var: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void

    :goto_3
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/aty;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
