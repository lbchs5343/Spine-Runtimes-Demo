.class public final Lg/bvx;
.super Lg/bmc;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Z

.field public c:Ljava/util/HashSet;

.field public d:Lg/bvi;

.field public e:Lg/flc;

.field public f:Ljava/util/HashSet;

.field public g:I

.field public h:[I

.field public i:Ljava/lang/String;

.field public final o:Lg/dwg;

.field public p:Z

.field public q:Ljava/lang/String;

.field public final r:Ljava/util/HashMap;

.field public final s:Ljava/util/HashMap;

.field public t:Ljava/util/HashMap;

.field public u:Z

.field public v:Z

.field public w:Ljava/util/HashMap;

.field public final x:Lg/gql;

.field public y:Lg/bpo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/bvx;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/bvx;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/bvx;->r:Ljava/util/HashMap;

    const-string v0, "ERROR"

    iput-object v0, p0, Lg/bvx;->q:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bvx;->p:Z

    iput-boolean v0, p0, Lg/bvx;->v:Z

    const/4 v1, 0x0

    iput v1, p0, Lg/bvx;->g:I

    iput-object p1, p0, Lg/bvx;->o:Lg/dwg;

    invoke-virtual {p1}, Lg/dwg;->ah()Lg/gql;

    move-result-object v1

    iput-object v1, p0, Lg/bvx;->x:Lg/gql;

    iget-object v1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v0, p0, Lg/bvx;->b:Z

    :try_start_0
    iget-object p1, p1, Lg/dwg;->f:Lg/dxb;

    iget-object p1, p1, Lg/dxb;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lg/bvx;->s:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lg/gck;

    const-string v1, "BinaryXMLParser init error"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final aa(Lg/flc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_5

    const-string v0, "android:name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lg/bvx;->i:Ljava/lang/String;

    invoke-static {p2, v0, p3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iget-object p2, p0, Lg/bvx;->w:Ljava/util/HashMap;

    if-nez p2, :cond_4

    iget-object p2, p0, Lg/bvx;->o:Lg/dwg;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object p2, p2, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cci;

    iget-object v2, v1, Lg/cci;->ak:Lg/ve;

    iget-object v3, v2, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lg/bvx;->w:Ljava/util/HashMap;

    :cond_4
    iget-object p2, p0, Lg/bvx;->w:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cci;

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Lg/flc;->b(Lg/cdv;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final ab()V
    .locals 28

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v2

    :goto_0
    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    iget-wide v3, v0, Lg/gdu;->f:J

    int-to-long v5, v2

    cmp-long v7, v3, v5

    if-gez v7, :cond_3b

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, v1, Lg/bvx;->s:Ljava/util/HashMap;

    const/4 v4, 0x1

    if-eq v0, v4, :cond_39

    const/16 v5, 0x180

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v0, v5, :cond_37

    const-wide/16 v8, 0x4

    sget-object v5, Lg/bvx;->a:Lg/dba;

    const/16 v10, 0x18

    const/16 v11, 0x3e

    const/16 v12, 0x10

    packed-switch v0, :pswitch_data_0

    iget v2, v1, Lg/bvx;->g:I

    if-nez v2, :cond_0

    goto/16 :goto_1b

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not yet implemented"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-ne v0, v12, :cond_4

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_3

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3, v8, v9}, Lg/gdu;->skip(J)J

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lg/bvx;->p:Z

    if-nez v5, :cond_1

    iput-boolean v4, v1, Lg/bvx;->p:Z

    iget-object v4, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v4, v11}, Lg/flc;->a(C)Lg/eos;

    :cond_1
    iget-object v4, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v4, v0}, Lg/flc;->e(I)V

    invoke-static {v3}, Lg/foj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v3, v0}, Lg/flc;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lg/gdu;->skip(J)J

    :cond_2
    :goto_1
    move/from16 v21, v2

    goto/16 :goto_1a

    :cond_3
    const-string v0, "CDATA header chunk is not 0x1C"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v7

    :cond_4
    const-string v0, "CDATA header is not 0x10"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-ne v0, v12, :cond_7

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    if-ne v0, v10, :cond_6

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/bvx;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/bvx;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, v1, Lg/bvx;->v:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v1, Lg/bvx;->p:Z

    if-nez v5, :cond_5

    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    const-string v3, "/>"

    invoke-virtual {v0, v3}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lg/bvx;->e:Lg/flc;

    const-string v6, "</"

    invoke-virtual {v5, v6}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v5, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v5, v0}, Lg/flc;->e(I)V

    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v0, v3}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lg/flc;->a(C)Lg/eos;

    :goto_2
    iput-boolean v4, v1, Lg/bvx;->p:Z

    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    iget v3, v0, Lg/grs;->z:I

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lg/grs;->ab()V

    goto :goto_1

    :cond_6
    const-string v0, "ELEMENT END header chunk is not 0x18 big"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v7

    :cond_7
    const-string v0, "ELEMENT END header is not 0x10"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v7

    :pswitch_2
    iget-boolean v0, v1, Lg/bvx;->u:Z

    if-eqz v0, :cond_8

    iput-boolean v6, v1, Lg/bvx;->u:Z

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v0}, Lg/grs;->aa()V

    :goto_3
    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-ne v0, v12, :cond_2e

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    iget-wide v12, v0, Lg/gdu;->f:J

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v10

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    iget-object v14, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v14}, Lg/gdu;->i()I

    iget-object v14, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v14}, Lg/gdu;->i()I

    iget-object v14, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v14}, Lg/gdu;->i()I

    move-result v14

    iget-boolean v15, v1, Lg/bvx;->p:Z

    if-nez v15, :cond_9

    const-string v15, "ERROR"

    move-object/from16 v16, v7

    iget-object v7, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v7, v11}, Lg/flc;->a(C)Lg/eos;

    goto :goto_4

    :cond_9
    move-object/from16 v16, v7

    :cond_a
    :goto_4
    iput-boolean v4, v1, Lg/bvx;->v:Z

    iput-boolean v6, v1, Lg/bvx;->p:Z

    invoke-virtual {v1, v14}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lg/bvx;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lg/bvx;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lg/bvx;->q:Ljava/lang/String;

    iget-object v7, v1, Lg/bvx;->e:Lg/flc;

    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Lg/grs;->ad(C)Lg/grs;

    iget-object v11, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-interface {v7, v11}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v7, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v7, v0}, Lg/flc;->e(I)V

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    const/16 v7, 0x14

    if-ne v0, v7, :cond_2d

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v11

    if-lt v11, v7, :cond_2c

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v7

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    iget-object v0, v1, Lg/bvx;->q:Ljava/lang/String;

    const-string v14, "manifest"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "=\""

    if-nez v0, :cond_b

    iget-object v0, v1, Lg/bvx;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    move-wide/from16 v18, v8

    iget-object v8, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-eq v0, v8, :cond_e

    goto :goto_5

    :cond_b
    move-wide/from16 v18, v8

    :goto_5
    iget-object v0, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    iget-object v9, v1, Lg/bvx;->f:Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lg/bvx;->f:Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lg/bvx;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lg/bvx;->e:Lg/flc;

    const-string v15, " xmlns"

    invoke-virtual {v9, v15}, Lg/flc;->o(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v1, Lg/bvx;->e:Lg/flc;

    const/16 v15, 0x3a

    invoke-virtual {v9, v15}, Lg/flc;->a(C)Lg/eos;

    iget-object v9, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v9, v4}, Lg/flc;->o(Ljava/lang/String;)V

    :cond_c
    iget-object v4, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v4, v6}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lg/foj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lg/flc;->o(Ljava/lang/String;)V

    const/16 v8, 0x22

    invoke-virtual {v4, v8}, Lg/flc;->a(C)Lg/eos;

    :cond_d
    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    iget-boolean v0, v1, Lg/bvx;->b:Z

    if-eqz v0, :cond_f

    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_2b

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    iget-object v15, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v15}, Lg/gdu;->i()I

    move-result v15

    move/from16 v21, v2

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    move/from16 v22, v7

    move/from16 v23, v8

    const-wide/16 v7, 0x3

    invoke-virtual {v2, v7, v8}, Lg/gdu;->skip(J)J

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->j()I

    move-result v2

    iget-object v7, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v7}, Lg/gdu;->i()I

    move-result v7

    iget-object v8, v1, Lg/bmc;->k:Lg/gdu;

    move/from16 v17, v9

    add-int/lit8 v9, v11, -0x14

    move-wide/from16 v24, v12

    move v13, v11

    int-to-long v11, v9

    invoke-virtual {v8, v11, v12}, Lg/gdu;->skip(J)J

    const-string v9, "android"

    const/4 v11, -0x1

    if-eq v0, v11, :cond_17

    invoke-virtual {v1, v0}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "http://schemas.android.com/apk/res/android"

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_12

    :cond_10
    const/high16 v12, -0x10000

    and-int/2addr v12, v0

    if-eqz v12, :cond_11

    const/high16 v12, 0xff0000

    and-int/2addr v0, v12

    if-nez v0, :cond_11

    move-object/from16 v0, v16

    goto :goto_c

    :cond_11
    move-object v12, v11

    :cond_12
    iget-object v0, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    :goto_9
    const-string v11, "ns"

    invoke-static {v0, v11}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v8, v1, Lg/bvx;->c:Ljava/util/HashSet;

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v0, v1, Lg/bvx;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    :goto_a
    if-eqz v23, :cond_14

    iget-object v8, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v8}, Lg/grs;->ag()V

    iget-object v11, v8, Lg/grs;->v:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lg/grs;->t(Ljava/lang/String;)Lg/grs;

    goto :goto_b

    :cond_14
    iget-object v8, v1, Lg/bvx;->e:Lg/flc;

    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Lg/flc;->a(C)Lg/eos;

    :goto_b
    iget-object v8, v1, Lg/bvx;->e:Lg/flc;

    const-string v11, "xmlns:"

    invoke-virtual {v8, v11}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lg/flc;->o(Ljava/lang/String;)V

    const-string v11, "\" "

    invoke-virtual {v8, v11}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    :goto_c
    move-object v8, v0

    goto :goto_d

    :cond_17
    move-object/from16 v8, v16

    :goto_d
    iget-object v0, v1, Lg/bvx;->h:[I

    if-eqz v0, :cond_18

    if-ltz v15, :cond_18

    array-length v11, v0

    if-ge v15, v11, :cond_18

    aget v0, v0, v15

    invoke-static {v0}, Lg/dqf;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1a

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_18
    invoke-virtual {v1, v15}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "NOT_FOUND_0x"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v15}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_e
    invoke-virtual {v1, v0}, Lg/bvx;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_1b

    const-string v0, ":"

    invoke-static {v8, v0, v11}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_f

    :cond_1b
    move-object v12, v11

    :goto_f
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object/from16 v27, v4

    const/16 v8, 0x22

    goto/16 :goto_15

    :cond_1c
    if-eqz v23, :cond_1d

    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v0}, Lg/grs;->ag()V

    iget-object v15, v0, Lg/grs;->v:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lg/grs;->t(Ljava/lang/String;)Lg/grs;

    goto :goto_10

    :cond_1d
    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Lg/flc;->a(C)Lg/eos;

    :goto_10
    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v0, v12}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lg/flc;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lg/bvx;->x:Lg/gql;

    move-object/from16 v26, v8

    move-object v15, v9

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9, v12}, Lg/gql;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "package"

    const-string v9, "android:name"

    if-eqz v0, :cond_20

    iget-object v2, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iput-object v0, v1, Lg/bvx;->i:Ljava/lang/String;

    :cond_1e
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Lg/bvx;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v1, v2, v11, v0}, Lg/bvx;->aa(Lg/flc;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    invoke-static {v0}, Lg/foj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/flc;->o(Ljava/lang/String;)V

    move-object/from16 v27, v4

    goto/16 :goto_13

    :cond_20
    move-object/from16 v27, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Lg/flc;->a(C)Lg/eos;

    const-string v2, "id/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Lg/flc;->a(C)Lg/eos;

    :cond_21
    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v2, v0}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_13

    :cond_22
    invoke-static {v7}, Lg/dqf;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    const-string v4, "@android:"

    invoke-virtual {v2, v4}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    if-nez v7, :cond_24

    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    const-string v2, "@null"

    invoke-virtual {v0, v2}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/flc;->o(Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    :try_start_0
    iget-object v0, v1, Lg/bvx;->y:Lg/bpo;

    invoke-virtual {v0, v2, v7}, Lg/bpo;->e(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lg/gck; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    const-string v2, "Failed to decode attribute value of \"{}\""

    invoke-interface {v5, v12, v2, v0}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    :goto_11
    iget-object v2, v1, Lg/bvx;->q:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iput-object v0, v1, Lg/bvx;->i:Ljava/lang/String;

    :cond_26
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, v0}, Lg/bvx;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    invoke-virtual {v1, v2, v12, v0}, Lg/bvx;->aa(Lg/flc;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lg/bvx;->e:Lg/flc;

    if-eqz v0, :cond_28

    invoke-static {v0}, Lg/foj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_28
    const-string v0, "null"

    :goto_12
    invoke-virtual {v2, v0}, Lg/flc;->o(Ljava/lang/String;)V

    :goto_13
    if-eqz v26, :cond_2a

    move-object/from16 v2, v26

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "pathData"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, v1, Lg/bvx;->o:Lg/dwg;

    if-eqz v0, :cond_29

    iget-object v0, v2, Lg/dwg;->c:Lg/fbc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_14

    :cond_29
    const-string v0, "fillType"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v2, Lg/dwg;->c:Lg/fbc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2a
    :goto_14
    iget-object v0, v1, Lg/bvx;->e:Lg/flc;

    const/16 v8, 0x22

    invoke-virtual {v0, v8}, Lg/flc;->a(C)Lg/eos;

    :goto_15
    add-int/lit8 v9, v17, 0x1

    move v11, v13

    move/from16 v2, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-wide/from16 v12, v24

    move-object/from16 v4, v27

    goto/16 :goto_8

    :cond_2b
    move/from16 v21, v2

    move-wide/from16 v24, v12

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    iget-wide v2, v0, Lg/gdu;->f:J

    sub-long v2, v2, v24

    add-long v2, v2, v18

    int-to-long v4, v10

    cmp-long v6, v2, v4

    if-gez v6, :cond_3a

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lg/gdu;->skip(J)J

    goto/16 :goto_1a

    :cond_2c
    const-string v0, "startNS\'s attributeSize is less than 0x14"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_2d
    const-string v0, "startNS\'s attributeStart is not 0x14"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_2e
    move-object/from16 v16, v7

    const-string v0, "ELEMENT HEADER SIZE is not 0x10"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :pswitch_3
    move/from16 v21, v2

    move-object/from16 v16, v7

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-le v0, v12, :cond_2f

    const-string v2, "Invalid namespace end"

    invoke-interface {v5, v2}, Lg/dba;->k(Ljava/lang/String;)V

    goto :goto_16

    :cond_2f
    if-lt v0, v12, :cond_31

    :goto_16
    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    if-eq v2, v10, :cond_30

    const-string v2, "Invalid namespace end size"

    invoke-interface {v5, v2}, Lg/dba;->k(Ljava/lang/String;)V

    :cond_30
    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    iget-object v4, v1, Lg/bmc;->k:Lg/gdu;

    add-int/lit8 v0, v0, -0x10

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lg/gdu;->skip(J)J

    iget v0, v1, Lg/bvx;->g:I

    const/16 v20, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lg/bvx;->g:I

    invoke-virtual {v1, v3}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-static {v3, v0, v2}, Lj$/util/Map$b;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_31
    const-string v0, "NAMESPACE end is not 0x10 big"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :pswitch_4
    move/from16 v21, v2

    move-object/from16 v16, v7

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    if-le v0, v12, :cond_32

    const-string v2, "Invalid namespace header"

    invoke-interface {v5, v2}, Lg/dba;->k(Ljava/lang/String;)V

    goto :goto_17

    :cond_32
    if-lt v0, v12, :cond_36

    :goto_17
    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    if-le v2, v10, :cond_33

    const-string v2, "Invalid namespace size"

    invoke-interface {v5, v2}, Lg/dba;->k(Ljava/lang/String;)V

    goto :goto_18

    :cond_33
    if-lt v2, v10, :cond_35

    :goto_18
    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    iget-object v2, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    iget-object v4, v1, Lg/bmc;->k:Lg/gdu;

    add-int/lit8 v0, v0, -0x10

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lg/gdu;->skip(J)J

    invoke-virtual {v1, v3}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lg/bvx;->z(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v1, Lg/bvx;->t:Ljava/util/HashMap;

    invoke-static {v3, v0, v2}, Lj$/util/Map$b;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    iget v0, v1, Lg/bvx;->g:I

    const/16 v20, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lg/bvx;->g:I

    goto :goto_1a

    :cond_35
    const-string v0, "NAMESPACE header chunk is not 0x18 big"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_36
    const-string v0, "NAMESPACE header is not 0x10 big"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_37
    move/from16 v21, v2

    move-object/from16 v16, v7

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_38

    iget-object v0, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    iput-object v2, v1, Lg/bvx;->h:[I

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v0, :cond_3a

    iget-object v2, v1, Lg/bvx;->h:[I

    iget-object v3, v1, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    aput v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_38
    const-string v0, "Header size of resmap is not 8!"

    invoke-virtual {v1, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_39
    move/from16 v21, v2

    invoke-virtual {v1}, Lg/bmc;->l()Lg/bvi;

    move-result-object v0

    iput-object v0, v1, Lg/bvx;->d:Lg/bvi;

    new-instance v0, Lg/bpo;

    iget-object v2, v1, Lg/bvx;->d:Lg/bvi;

    invoke-direct {v0, v2, v3}, Lg/bpo;-><init>(Lg/bvi;Ljava/util/HashMap;)V

    iput-object v0, v1, Lg/bvx;->y:Lg/bpo;

    :cond_3a
    :goto_1a
    move/from16 v2, v21

    goto/16 :goto_0

    :cond_3b
    :goto_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lg/bud;->a:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2

    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v4, :cond_2

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    iget-object v0, p0, Lg/bvx;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x6

    if-gt v4, v5, :cond_4

    const/16 v5, 0x1a

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final declared-synchronized ad(Ljava/io/InputStream;)Lg/emz;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lg/bvx;->h:[I

    new-instance v1, Lg/gdu;

    invoke-direct {v1, p1}, Lg/gdu;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lg/bmc;->k:Lg/gdu;

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Lg/gdu;->mark(I)V

    iget-object p1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {p1}, Lg/gdu;->h()I

    iget-object p1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {p1}, Lg/gdu;->h()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/bvx;->c:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/bvx;->t:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/bvx;->f:Ljava/util/HashSet;

    iget-object p1, p0, Lg/bvx;->o:Lg/dwg;

    invoke-virtual {p1}, Lg/dwg;->ac()Lg/flc;

    move-result-object p1

    iput-object p1, p0, Lg/bvx;->e:Lg/flc;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {p1, v1}, Lg/flc;->o(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bvx;->u:Z

    invoke-virtual {p0}, Lg/bvx;->ab()V

    iput-object v0, p0, Lg/bvx;->t:Ljava/util/HashMap;

    iput-object v0, p0, Lg/bvx;->f:Ljava/util/HashSet;

    iget-object p1, p0, Lg/bvx;->e:Lg/flc;

    invoke-virtual {p1}, Lg/flc;->finish()Lg/emz;

    move-result-object p1

    iput-object v0, p0, Lg/bvx;->w:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {p1}, Lg/gdu;->reset()V

    iget-object p1, p0, Lg/bmc;->k:Lg/gdu;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v2, Lg/bqu;->c:Lg/dba;

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance p1, Lg/grx;

    invoke-static {v0}, Lg/hce;->n(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/grx;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ae(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/bvx;->i:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    iget-object v1, p0, Lg/bvx;->o:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->h:Lg/fzn;

    iget-object v1, v1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ve;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    return-object p1
.end method

.method public final z(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lg/bvx;->d:Lg/bvi;

    iget v1, v0, Lg/bvi;->e:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lg/bvi;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT_FOUND_STR_0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
