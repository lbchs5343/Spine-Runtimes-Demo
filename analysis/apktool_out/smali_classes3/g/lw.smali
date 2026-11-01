.class public final Lg/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg/zs;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/zs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lg/lw;->c:I

    iput-object p1, p0, Lg/lw;->b:Lg/zs;

    iput-object p2, p0, Lg/lw;->d:Ljava/lang/String;

    iput-object p3, p0, Lg/lw;->e:Ljava/lang/String;

    iput-object p4, p0, Lg/lw;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/lw;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/lw;->b:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p0, Lg/lw;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/lw;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/lw;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/ggz;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/lw;->b:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p0, Lg/lw;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/lw;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/lw;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/ggz;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/lw;->b:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p0, Lg/lw;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/lw;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/lw;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/ggz;->bb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/lw;->b:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v1, p0, Lg/lw;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/lw;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/lw;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/ggz;->bb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
