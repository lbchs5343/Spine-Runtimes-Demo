.class public final Lg/dwg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/fnq;

.field public final c:Lg/fbc;

.field public final d:Ljava/util/HashMap;

.field public e:Ljava/util/ArrayList;

.field public final f:Lg/dxb;

.field public final g:Ljava/util/HashMap;

.field public final h:Lg/fzn;

.field public final i:Lg/ur;

.field public j:Lg/gql;

.field public final k:Lg/fnq;

.field public l:Lg/cut;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/HashMap;

.field public final o:Lg/emr;

.field public final p:Lg/dcj;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;

.field public s:Lg/cci;

.field public final t:Lg/foj;

.field public final u:Lg/cag;

.field public final v:Lg/at;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/dwg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/dwg;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cqc;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Lg/cqc;->k:Lg/ur;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lg/dcj;

    invoke-direct {v2}, Lg/dcj;-><init>()V

    iput-object v2, v0, Lg/dwg;->p:Lg/dcj;

    new-instance v2, Lg/fzn;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lg/fzn;-><init>(I)V

    iput-object v2, v0, Lg/dwg;->h:Lg/fzn;

    new-instance v2, Lg/fnq;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lg/fnq;-><init>(I)V

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v5, v2, Lg/fnq;->f:Ljava/lang/Object;

    iput-object v2, v0, Lg/dwg;->k:Lg/fnq;

    new-instance v2, Lg/sm;

    invoke-direct {v2}, Lg/sm;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dwg;->q:Ljava/util/ArrayList;

    new-instance v2, Lg/fbc;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lg/fbc;-><init>(I)V

    iput-object v2, v0, Lg/dwg;->c:Lg/fbc;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lg/dwg;->g:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lg/dwg;->n:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dwg;->e:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lg/dwg;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dwg;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Lg/dwg;->i:Lg/ur;

    sget-object v2, Lg/bcv;->a:Lg/dba;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lg/eqh;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lg/eqh;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/eak;

    const/16 v8, 0x15

    invoke-direct {v6, v8}, Lg/eak;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/eak;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Lg/eak;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/eak;

    const/16 v9, 0xd

    invoke-direct {v6, v9}, Lg/eak;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/eak;

    const/16 v9, 0x1c

    invoke-direct {v6, v9}, Lg/eak;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/ezu;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/ql;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/eak;

    const/16 v9, 0x9

    invoke-direct {v6, v9}, Lg/eak;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/gkk;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lg/gkk;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg/gkk;

    invoke-direct {v6, v7}, Lg/gkk;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lg/dwg;->r:Ljava/util/ArrayList;

    new-instance v2, Lg/at;

    sget-object v6, Lg/efk;->a:[I

    iget-object v10, v1, Lg/ur;->aa:Lg/qp;

    iget-boolean v11, v1, Lg/ur;->p:Z

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const/16 v14, 0xb

    const/16 v15, 0x14

    const/16 v10, 0x1b

    const/16 v4, 0x17

    const/16 v3, 0xc

    const/4 v12, 0x4

    const/16 v13, 0x12

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_5

    if-eq v6, v5, :cond_1

    if-ne v6, v12, :cond_0

    invoke-static {}, Lg/bcv;->c()Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lg/gck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown decompilation mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lg/ur;->aa:Lg/qp;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    new-instance v6, Lg/eak;

    invoke-direct {v6, v3}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Lg/ccy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/ur;->aq:Lg/afa;

    sget-object v6, Lg/afa;->NONE:Lg/afa;

    if-eq v3, v6, :cond_3

    new-instance v3, Lg/buz;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v3, Lg/fem;

    invoke-direct {v3, v9}, Lg/fem;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/giq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dwu;

    new-instance v4, Lg/esk;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lg/esk;-><init>(I)V

    const-string v6, "DisableBlockLock"

    invoke-direct {v3, v6, v4}, Lg/dwu;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dec;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v10}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v15}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v14}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v13}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/mo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_4

    new-instance v3, Lg/dbs;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Lg/bwy;

    invoke-direct {v3}, Lg/bwy;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/bcc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fem;

    invoke-direct {v3, v7}, Lg/fem;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dxg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/acf;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dwu;

    new-instance v4, Lg/esk;

    const/16 v6, 0x10

    invoke-direct {v4, v6}, Lg/esk;-><init>(I)V

    const-string v6, "ForceGenerateAll"

    invoke-direct {v3, v6, v4}, Lg/dwu;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto/16 :goto_0

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lg/eak;

    const/4 v12, 0x6

    invoke-direct {v8, v12}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v1, Lg/ur;->as:Z

    if-eqz v11, :cond_6

    new-instance v12, Lg/eak;

    invoke-direct {v12, v3}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v3, Lg/ccy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/ur;->aq:Lg/afa;

    sget-object v12, Lg/afa;->NONE:Lg/afa;

    if-eq v3, v12, :cond_7

    new-instance v3, Lg/buz;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v3, Lg/fem;

    invoke-direct {v3, v9}, Lg/fem;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/giq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dec;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v10}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v15}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v14}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v13}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v1, Lg/ur;->v:Z

    if-eqz v3, :cond_8

    new-instance v3, Lg/fvq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v3, Lg/eak;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/mo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_9

    new-instance v3, Lg/dbs;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v3, Lg/bwy;

    invoke-direct {v3}, Lg/bwy;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v5}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/ur;->n:Lg/fnc;

    sget-object v4, Lg/fnc;->DISABLE:Lg/fnc;

    if-eq v3, v4, :cond_a

    new-instance v3, Lg/gxf;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v3, Lg/bcc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_b

    new-instance v3, Lg/ede;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v3, Lg/axg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fem;

    invoke-direct {v3, v5}, Lg/fem;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fem;

    invoke-direct {v3, v7}, Lg/fem;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dxg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v7}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v1, Lg/ur;->ah:Z

    if-eqz v3, :cond_c

    new-instance v3, Lg/vr;

    invoke-direct {v3, v9}, Lg/vr;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v3, Lg/eak;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    invoke-direct {v3, v9}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eqh;

    invoke-direct {v3, v9}, Lg/eqh;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/erg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/acf;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fcu;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/dwu;

    invoke-direct {v3}, Lg/dwu;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/glq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v3, Lg/glq;->a:Z

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fem;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lg/fem;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fra;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/vr;

    invoke-direct {v3, v7}, Lg/vr;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_d

    new-instance v3, Lg/eak;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v3, Lg/aza;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/feg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/eak;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lg/eak;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :goto_0
    invoke-direct {v2, v3}, Lg/at;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v0, Lg/dwg;->v:Lg/at;

    new-instance v2, Lg/foj;

    invoke-direct {v2, v1}, Lg/foj;-><init>(Lg/ur;)V

    iput-object v2, v0, Lg/dwg;->t:Lg/foj;

    new-instance v2, Lg/dxb;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lg/bqm;

    invoke-direct {v3}, Lg/bqm;-><init>()V

    iput-object v3, v2, Lg/dxb;->c:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lg/dxb;->d:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lg/dxb;->a:Ljava/lang/Object;

    iget-boolean v1, v1, Lg/ur;->an:Z

    iput-boolean v1, v2, Lg/dxb;->b:Z

    iput-object v2, v0, Lg/dwg;->f:Lg/dxb;

    new-instance v1, Lg/cag;

    invoke-direct {v1, v0}, Lg/cag;-><init>(Lg/dwg;)V

    iput-object v1, v0, Lg/dwg;->u:Lg/cag;

    new-instance v1, Lg/fnq;

    const/16 v4, 0xe

    invoke-direct {v1, v4, v0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lg/dwg;->b:Lg/fnq;

    new-instance v1, Lg/emr;

    invoke-direct {v1, v13, v0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lg/dwg;->o:Lg/emr;

    return-void
.end method


# virtual methods
.method public final aa(Lg/cvm;Ljava/util/List;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/awr;

    iget-object v2, v1, Lg/awr;->e:Lg/ag;

    sget-object v3, Lg/ag;->ARSC:Lg/ag;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lg/dwg;->a:Lg/dba;

    if-nez v1, :cond_2

    const-string p1, "\'resources.arsc\' or \'resources.pb\' file not found"

    invoke-interface {v0, p1}, Lg/dba;->o(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    new-instance v2, Lg/eoc;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Lg/eoc;-><init>(Lg/cvm;Lg/awr;I)V

    invoke-static {v1, v2}, Lg/cvm;->f(Lg/awr;Lg/ery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cak;

    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Lg/aew;

    iget-object v1, v1, Lg/aew;->f:Lg/gyo;

    invoke-virtual {p0, v1}, Lg/dwg;->ai(Lg/gyo;)V

    invoke-virtual {p0, p1, p2}, Lg/dwg;->ad(Lg/cak;Ljava/util/List;)V

    invoke-virtual {p0}, Lg/dwg;->ah()Lg/gql;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg/gql;->f(Lg/cak;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    return-void

    :goto_1
    const-string p2, "Failed to parse \'resources.pb\'/\'.arsc\' file"

    invoke-interface {v0, p2, p1}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ab(Lg/cci;Lg/dsj;)Lg/hcd;
    .locals 6

    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v0, p1, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcd;

    iget-object v3, v1, Lg/hcd;->g:Lg/dsj;

    iget-object v4, v3, Lg/dsj;->e:Ljava/lang/String;

    iget-object v5, p2, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lg/dsj;->a:Lg/cwx;

    iget-object v4, p2, Lg/dsj;->a:Lg/cwx;

    invoke-virtual {v3, v4}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p1, Lg/cci;->af:Lg/cwx;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p2}, Lg/dwg;->ab(Lg/cci;Lg/dsj;)Lg/hcd;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object p1, p1, Lg/cci;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {p0, v0}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, p2}, Lg/dwg;->ab(Lg/cci;Lg/dsj;)Lg/hcd;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_5
    return-object v2
.end method

.method public final ac()Lg/flc;
    .locals 2

    iget-object v0, p0, Lg/dwg;->i:Lg/ur;

    iget-object v1, v0, Lg/ur;->j:Lg/gpn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/flc;

    invoke-direct {v1, v0}, Lg/flc;-><init>(Lg/ur;)V

    return-object v1
.end method

.method public final ad(Lg/cak;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lg/dwg;->i:Lg/ur;

    iget-boolean v0, v0, Lg/ur;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    check-cast p1, Lg/aew;

    iget-object v2, p1, Lg/aew;->f:Lg/gyo;

    new-instance v3, Lg/bpo;

    iget-object p1, p1, Lg/aew;->c:Lg/bvi;

    invoke-virtual {v2}, Lg/gyo;->g()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lg/bpo;-><init>(Lg/bvi;Ljava/util/HashMap;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v2, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/azy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lg/azy;->h:Lg/aot;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget v6, v5, Lg/aot;->b:I

    iget v5, v5, Lg/aot;->c:I

    invoke-virtual {v3, v6, v5}, Lg/bpo;->e(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/awr;

    iget-object v4, v3, Lg/awr;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/azy;

    if-eqz v4, :cond_4

    iget-object v5, v3, Lg/awr;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "res/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lg/azy;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lg/azy;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lg/azy;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".9.png"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iput-object v4, v3, Lg/awr;->b:Ljava/lang/String;

    invoke-static {v4}, Lg/ag;->c(Ljava/lang/String;)Lg/ag;

    move-result-object v4

    iput-object v4, v3, Lg/awr;->e:Lg/ag;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sget-object p1, Lg/dwg;->a:Lg/dba;

    invoke-interface {p1}, Lg/dba;->af()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Renamed obfuscated resources: {}, duration: {}ms"

    invoke-interface {p1, p2, v1, v0}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final ae(Lg/ve;)Lg/cci;
    .locals 1

    iget-object v0, p0, Lg/dwg;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cci;

    return-object p1
.end method

.method public final af(Lg/cci;Ljava/lang/String;)Lg/hed;
    .locals 3

    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v0, p1, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    iget-object v2, v1, Lg/hed;->al:Lg/ayu;

    iget-object v2, v2, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p1, Lg/cci;->af:Lg/cwx;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2}, Lg/dwg;->af(Lg/cci;Ljava/lang/String;)Lg/hed;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lg/cci;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {p0, v0}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p2}, Lg/dwg;->af(Lg/cci;Ljava/lang/String;)Lg/hed;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ag(Lg/dsj;)Lg/hcd;
    .locals 2

    iget-object v0, p1, Lg/dsj;->d:Lg/ve;

    invoke-virtual {p0, v0}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lg/dwg;->ab(Lg/cci;Lg/dsj;)Lg/hcd;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized ah()Lg/gql;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/dwg;->j:Lg/gql;

    if-nez v0, :cond_0

    new-instance v0, Lg/gql;

    iget-object v1, p0, Lg/dwg;->i:Lg/ur;

    iget-object v1, v1, Lg/ur;->am:Lg/cvp;

    invoke-direct {v0, v1}, Lg/gql;-><init>(Lg/cvp;)V

    iput-object v0, p0, Lg/dwg;->j:Lg/gql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ai(Lg/gyo;)V
    .locals 9

    iget-object v0, p0, Lg/dwg;->f:Lg/dxb;

    invoke-virtual {p1}, Lg/gyo;->g()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lg/dxb;->a:Ljava/lang/Object;

    iget-object v0, p1, Lg/gyo;->f:Ljava/lang/String;

    sget-object v1, Lg/ewg;->a:Lg/dba;

    const-string v2, "R"

    if-eqz v0, :cond_0

    const-string v3, ".R"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {p0, v3}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v4

    invoke-virtual {p0, v4}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-static {v5, p1, v6}, Lg/ewg;->b(Lg/cci;Lg/gyo;Z)V

    goto :goto_2

    :cond_1
    const-string v5, "Can\'t find \'R\' class in app package: {}"

    invoke-interface {v1, v0, v5}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cci;

    iget-object v8, v7, Lg/cci;->ak:Lg/ve;

    iget-object v8, v8, Lg/ve;->e:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    if-ne v2, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/cci;

    invoke-static {v5, p1, v6}, Lg/ewg;->b(Lg/cci;Lg/gyo;Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Found several \'R\' class candidates: {}"

    invoke-interface {v1, v0, v2}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string v0, "App \'R\' class not found, put all resources ids into : \'{}\'"

    invoke-interface {v1, v3, v0}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-static {p0, v4, v0}, Lg/cci;->ao(Lg/dwg;Lg/ve;I)Lg/cci;

    move-result-object v0

    const-string v1, "This class is generated by JADX"

    invoke-virtual {v0, v1}, Lg/ebh;->bv(Ljava/lang/String;)V

    invoke-static {v0, p1, v5}, Lg/ewg;->b(Lg/cci;Lg/gyo;Z)V

    move-object v5, v0

    :goto_2
    iput-object v5, p0, Lg/dwg;->s:Lg/cci;

    return-void
.end method

.method public final w(Lg/cwx;)Lg/cci;
    .locals 3

    invoke-virtual {p1}, Lg/cwx;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lg/btl;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    sget-object v2, Lg/be;->UNBOUND:Lg/be;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/cwx;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    :cond_2
    invoke-static {p0, p1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final x(Lg/ayu;)Lg/hed;
    .locals 2

    iget-object v0, p1, Lg/ayu;->d:Lg/ve;

    invoke-virtual {p0, v0}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v1, v0, Lg/cci;->ah:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lg/ayu;->p(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lg/dwg;->af(Lg/cci;Ljava/lang/String;)Lg/hed;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/util/ArrayList;Lg/eie;)V
    .locals 7

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v4

    iget-object v0, p0, Lg/dwg;->i:Lg/ur;

    iget-object v3, v0, Lg/ur;->ac:Lg/ry;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/iu;

    new-instance v1, Lg/euy;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lg/euy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lg/iu;->a(Lg/euy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Lg/cci;)V
    .locals 2

    iget-object v0, p0, Lg/dwg;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/pj;

    invoke-static {v1, p1}, Lg/cmb;->w(Lg/pj;Lg/cci;)V

    goto :goto_0

    :cond_0
    return-void
.end method
