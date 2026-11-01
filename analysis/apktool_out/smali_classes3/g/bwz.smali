.class public final Lg/bwz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:J

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Long;

.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 13

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    cmp-long v12, v0, v10

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-static {v12}, Lg/ckd;->u(Z)V

    cmp-long v12, v2, v10

    if-ltz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Lg/ckd;->u(Z)V

    cmp-long v12, v4, v10

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    invoke-static {v12}, Lg/ckd;->u(Z)V

    cmp-long v12, v6, v10

    if-ltz v12, :cond_3

    const/4 v8, 0x1

    :cond_3
    invoke-static {v8}, Lg/ckd;->u(Z)V

    iput-object p1, p0, Lg/bwz;->e:Ljava/lang/String;

    iput-object p2, p0, Lg/bwz;->h:Ljava/lang/String;

    iput-wide v0, p0, Lg/bwz;->j:J

    iput-wide v2, p0, Lg/bwz;->c:J

    iput-wide v4, p0, Lg/bwz;->d:J

    move-wide/from16 p1, p9

    iput-wide p1, p0, Lg/bwz;->f:J

    iput-wide v6, p0, Lg/bwz;->k:J

    move-object/from16 p1, p13

    iput-object p1, p0, Lg/bwz;->a:Ljava/lang/Long;

    move-object/from16 p1, p14

    iput-object p1, p0, Lg/bwz;->g:Ljava/lang/Long;

    move-object/from16 p1, p15

    iput-object p1, p0, Lg/bwz;->i:Ljava/lang/Long;

    move-object/from16 p1, p16

    iput-object p1, p0, Lg/bwz;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lg/bwz;
    .locals 19

    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v18, v1

    goto :goto_0

    :cond_0
    move-object/from16 v18, p3

    :goto_0
    new-instance v2, Lg/bwz;

    iget-wide v13, v0, Lg/bwz;->k:J

    iget-object v15, v0, Lg/bwz;->a:Ljava/lang/Long;

    iget-object v3, v0, Lg/bwz;->e:Ljava/lang/String;

    iget-object v4, v0, Lg/bwz;->h:Ljava/lang/String;

    iget-wide v5, v0, Lg/bwz;->j:J

    iget-wide v7, v0, Lg/bwz;->c:J

    iget-wide v9, v0, Lg/bwz;->d:J

    iget-wide v11, v0, Lg/bwz;->f:J

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    invoke-direct/range {v2 .. v18}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public final m(J)Lg/bwz;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lg/bwz;

    iget-object v2, v0, Lg/bwz;->i:Ljava/lang/Long;

    iget-object v3, v0, Lg/bwz;->b:Ljava/lang/Boolean;

    move-object/from16 v16, v2

    iget-object v2, v0, Lg/bwz;->e:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v0, Lg/bwz;->h:Ljava/lang/String;

    iget-wide v4, v0, Lg/bwz;->j:J

    iget-wide v6, v0, Lg/bwz;->c:J

    iget-wide v8, v0, Lg/bwz;->d:J

    iget-wide v12, v0, Lg/bwz;->k:J

    iget-object v14, v0, Lg/bwz;->a:Ljava/lang/Long;

    iget-object v15, v0, Lg/bwz;->g:Ljava/lang/Long;

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v17}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method
