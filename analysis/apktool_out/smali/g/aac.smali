.class public final synthetic Lg/aac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/tj;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/any;


# direct methods
.method public synthetic constructor <init>(Lg/any;I)V
    .locals 0

    iput p2, p0, Lg/aac;->a:I

    iput-object p1, p0, Lg/aac;->b:Lg/any;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lg/cmv;Lg/gqc;)Lg/azo;
    .locals 8

    iget v0, p0, Lg/aac;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lg/gqc;->ap()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    iget-object v7, p0, Lg/aac;->b:Lg/any;

    invoke-static {v7, p1, p2}, Lg/cfy;->c(Lg/any;Lg/cmv;Lg/gqc;)Lg/fpa;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lg/vk;

    invoke-direct {p1, v1}, Lg/vk;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_0
    new-instance v0, Lg/cfy;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lg/aac;->b:Lg/any;

    invoke-static {v4, p1, p2}, Lg/cfy;->c(Lg/any;Lg/cmv;Lg/gqc;)Lg/fpa;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {v0, v2}, Lg/cfy;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
