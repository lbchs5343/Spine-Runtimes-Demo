.class public final Lg/aud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lg/ant;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Lg/dxs;

.field public final e:Ljava/util/HashMap;

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public h:Lg/ehe;

.field public final i:Ljava/util/ArrayList;

.field public final j:Lg/dxs;

.field public k:Z

.field public final l:Lg/dng;

.field public m:Lg/btd;

.field public n:Lg/fvw;

.field public final o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/ehe;->a:Lg/ehe;

    iput-object v0, p0, Lg/aud;->h:Lg/ehe;

    sget-object v0, Lg/dng;->DEFAULT:Lg/dng;

    iput-object v0, p0, Lg/aud;->l:Lg/dng;

    sget-object v0, Lg/fvw;->IDENTITY:Lg/fvw;

    iput-object v0, p0, Lg/aud;->n:Lg/fvw;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/aud;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/aud;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/aud;->i:Ljava/util/ArrayList;

    sget-object v0, Lg/eem;->b:Lg/btd;

    const/4 v0, 0x2

    iput v0, p0, Lg/aud;->o:I

    iput v0, p0, Lg/aud;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/aud;->k:Z

    sget-object v1, Lg/eem;->b:Lg/btd;

    iput-object v1, p0, Lg/aud;->m:Lg/btd;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/aud;->b:Lg/ant;

    iput-boolean v0, p0, Lg/aud;->f:Z

    sget-object v0, Lg/eem;->c:Lg/dxs;

    iput-object v0, p0, Lg/aud;->j:Lg/dxs;

    sget-object v0, Lg/eem;->a:Lg/dxs;

    iput-object v0, p0, Lg/aud;->d:Lg/dxs;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lg/aud;->c:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final p()Lg/eem;
    .locals 15

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lg/aud;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg/aud;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v1, Lg/ehv;->c:Z

    iget v3, p0, Lg/aud;->o:I

    iget v4, p0, Lg/aud;->a:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    if-eq v4, v5, :cond_2

    :cond_0
    new-instance v5, Lg/fcf;

    sget-object v6, Lg/acp;->a:Lg/gul;

    invoke-direct {v5, v6, v3, v4}, Lg/fcf;-><init>(Lg/acp;II)V

    sget-object v6, Lg/foc;->j:Lg/eam;

    new-instance v6, Lg/eam;

    const-class v7, Ljava/util/Date;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    if-eqz v1, :cond_1

    sget-object v5, Lg/ehv;->f:Lg/fsx;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lg/fcf;

    invoke-direct {v7, v5, v3, v4}, Lg/fcf;-><init>(Lg/acp;II)V

    iget-object v5, v5, Lg/acp;->b:Ljava/lang/Class;

    new-instance v9, Lg/eam;

    invoke-direct {v9, v5, v7, v8}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    sget-object v5, Lg/ehv;->e:Lg/fsx;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lg/fcf;

    invoke-direct {v7, v5, v3, v4}, Lg/fcf;-><init>(Lg/acp;II)V

    iget-object v3, v5, Lg/acp;->b:Ljava/lang/Class;

    new-instance v4, Lg/eam;

    invoke-direct {v4, v3, v7, v8}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    move-object v4, v9

    :goto_0
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v0

    new-instance v0, Lg/eem;

    move-object v3, v1

    iget-object v1, p0, Lg/aud;->h:Lg/ehe;

    move-object v4, v2

    iget-object v2, p0, Lg/aud;->n:Lg/fvw;

    move-object v5, v3

    new-instance v3, Ljava/util/HashMap;

    iget-object v6, p0, Lg/aud;->e:Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v6, v4

    iget-boolean v4, p0, Lg/aud;->k:Z

    move-object v7, v5

    iget-object v5, p0, Lg/aud;->m:Lg/btd;

    move-object v8, v6

    iget-object v6, p0, Lg/aud;->b:Lg/ant;

    move-object v9, v7

    iget-boolean v7, p0, Lg/aud;->f:Z

    move-object v10, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Ljava/util/ArrayList;

    iget-object v8, p0, Lg/aud;->c:Ljava/util/ArrayDeque;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lg/aud;->l:Lg/dng;

    iget-object v12, p0, Lg/aud;->j:Lg/dxs;

    iget-object v13, p0, Lg/aud;->d:Lg/dxs;

    invoke-direct/range {v0 .. v14}, Lg/eem;-><init>(Lg/ehe;Lg/fvw;Ljava/util/HashMap;ZLg/btd;Lg/ant;ZLg/dng;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lg/dxs;Lg/dxs;Ljava/util/ArrayList;)V

    return-object v0
.end method
